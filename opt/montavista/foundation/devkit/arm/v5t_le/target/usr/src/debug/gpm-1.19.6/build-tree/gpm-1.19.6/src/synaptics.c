/*
 * synaptics.c - support for the synaptics serial touchpads
 *
 * Copyright 1999   hdavies@ameritech.net (Henry Davies)
 *                  Geert Van der Plas provided the code to support
 *                        older Synaptics PS/2 touchpads.
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 *
 ********/

/*
** Design/Goals
**     I want to use the Synaptics Serial touchpad as a cursor device under
**     Linux (gpm).  With this device I want to support operations similar
**     to those supported by the Synaptics WinDOS driver, and some others 
**     of my own devising.
**
** Features:
**     Corner Clicks
**         This recognizes taps on the touchpad in the corner(s) and
**         translates them into specific actions.  Initially I am looking
**         at actions on the order of alternate button clicks.  Other 
**         alternatives include drags and whatnot.
**     Edge Extensions
**         This recognizes that the finger has moved from the center region
**         of the touchpad and dragged to the edge area.  At which point
**         I want to be able to extend the motion by automatically moving 
**         in the direction of the edge.
**     Toss n Catch
**         This recognizes a quick motion of the finger on the touchpad and
**         uses that to define a velocity vector for the cursor.  A tap
**         on the touchpad at a later time catches (stops) the cursor.
**     Tap n Drag
**         A quick tap of the touchpad followed by finger motion on the 
**         touchpad initiates what would be a drag with a normal mouse
**         type device.
**     Pressure Sensitive Velocity
**         The Synaptics touchpad indicates the touch pressure of the finger
**         (really an interface area) this is used to accelerate the cursor
**         motion.  This can be used in the normal motion, Tap n Drag, or
**         Edge Extension modes.  In normal motion and Tap n Drag this may 
**         be awkward due to increased friction caused by the pressure.
**
** Parameters:
**     search below for configuration constants
*/


/*
** TODO
**   - handle other versions of synaptics touchpads (mine is 3.4 firmware)
**     (this should be close)
**   - test this with more Synaptics touch pads (laptops and such)
**   - provide a configuration interface to adjust parameters and
**     enabled features
**   - determine appropriate ranges for adjusting parameters
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>

#include "headers/gpm.h"
#include "headers/synaptics.h"
#include "headers/wd.h"

#define DEBUG                   1
#define DEBUG_PARAMS            1
#define DEBUG_FLUSH             1
#define DEBUG_SENT_DATA         1
#define DEBUG_TOSS              1
#define DEBUG_REPORTS           1    /* this is VERY verbose */


#define abs(value)              ((value) < 0 ? -(value) : (value))
#define check_bits(value,mask)  (((value) & (mask)) == (mask))
#define sqr(value)              ((value) * (value))
#define distance(dx,dy)         (sqr(dx) + sqr(dy))
#define mod4(value)             ((value) % 4)


/*
** Define the edge bit values.
*/
#define LEFT_EDGE           0x01
#define RIGHT_EDGE          0x02
#define TOP_EDGE            0x04
#define BOTTOM_EDGE         0x08
#define UPPER_LEFT_CORNER   (LEFT_EDGE | TOP_EDGE)
#define LOWER_LEFT_CORNER   (LEFT_EDGE | BOTTOM_EDGE)
#define UPPER_RIGHT_CORNER  (RIGHT_EDGE | TOP_EDGE)
#define LOWER_RIGHT_CORNER  (RIGHT_EDGE | BOTTOM_EDGE)
#define is_corner(edges)    (((edges) & (LEFT_EDGE | RIGHT_EDGE)) && \
			     ((edges) & (TOP_EDGE | BOTTOM_EDGE)))


/****************************************************************************
**
** Configuration constants.
**
** Those with C at the end are suitable for adjustment by a configuration
** program.
****************************************************************************/

static int edge_motion_enabled          = 1;  /* is edge motion enabled  C*/
static int edge_motion_speed_enabled    = 1;  /* does pressure control   C*/
                                                 /* speed of edge motion     */
static int corner_taps_enabled          = 1;  /* are corner taps enabled C*/
static int taps_enabled                 = 1;  /* are taps enabled        C*/
static int pressure_speed_enabled       = 1;  /* does pressure control   C*/
                                                 /* speed in non edges       */
static int tossing_enabled              = 1;  /* is toss/catch enabled   C*/
static int does_toss_use_static_speed   = 1;  /* is toss/catch speed     C*/
                                                 /* based on toss dist       */

/* pressure induced speed related configuration constants */
static int   low_pressure            = 60;                                /*C*/
static int   speed_up_pressure       = 60;                                /*C*/
static float pressure_factor         = 0.05;                              /*C*/
static float standard_speed_factor   = 0.08;                              /*C*/

/* toss/catch related constants */
static int   min_toss_time           = 100;   /* ms: 0.10 sec */
static int   max_toss_time           = 300;   /* ms: 0.30 sec */          /*C*/
static int   toss_cleanup_time       = 300;   /* ms: 0.25 sec */          /*C*/
static int   min_toss_dist           = 2;     /* mm */                    /*C*/
static int   static_toss_speed       = 70;                                /*C*/
static float toss_speed_factor       = 0.5;                               /*C*/

/* edge motion related configuration constants */
static int   x_min_center            = 1632;  /* left edge   */
static int   x_max_center            = 5312;  /* right edge  */
static int   y_min_center            = 1408;  /* bottom edge */
static int   y_max_center            = 4108;  /* top edge    */
static int   edge_speed              = 20;                                /*C*/

/* use wmode */
static int use_wmode		     = 0;
static int finger_threshold	     = 30;
static int tap_lower_limit	     = 5;
static int tap_upper_limit	     = 200;
static int tap_range		     = 100;
static int tap_interval		     = 200;
static int drag_lock		     = 0;
static int multiple_click_delay	     = 30;

/*
** Types for describing corner actions.
*/
typedef enum {
  No_Action          = 0,
  Left_Button_Action,
  Middle_Button_Action,
  Right_Button_Action
} action_type;

typedef struct {
  int         corner_mask;
  action_type action;
} corner_action_type;

static corner_action_type corner_actions [] = {
  { UPPER_LEFT_CORNER,  No_Action },
  { LOWER_LEFT_CORNER,  No_Action },
  { UPPER_RIGHT_CORNER, Middle_Button_Action },
  { LOWER_RIGHT_CORNER, Right_Button_Action },
  { 0,                  No_Action } /* flag value */
};

static corner_action_type *upper_left_action  = &corner_actions [0];
static corner_action_type *lower_left_action  = &corner_actions [1];
static corner_action_type *upper_right_action = &corner_actions [2];
static corner_action_type *lower_right_action = &corner_actions [3];


/*
** These types are used to read the configuration data from the config file.
*/
typedef enum {
  Integer_Param,
  Float_Param,
  Flag_Param,
  Corner_Param
} param_type_type;

typedef struct {
  char            *name;
  param_type_type  p_type;
  union {
    void  *gen_p;   /* avoids complaints by the compiler later on */
    int   *int_p;
    float *float_p;
    int   *flag_p;
    corner_action_type *corner_p;
  } addr;
} param_data_type;

static param_data_type param_data [] = {
  /* enabling configuration parameters */
  { "edge_motion_enabled",        Flag_Param,    &edge_motion_enabled        },
  { "edge_motion_speed_enabled",  Flag_Param,    &edge_motion_speed_enabled  },
  { "corner_taps_enabled",        Flag_Param,    &corner_taps_enabled        },
  { "taps_enabled",               Flag_Param,    &taps_enabled               },
  { "pressure_speed_enabled",     Flag_Param,    &pressure_speed_enabled     },
  { "tossing_enabled",            Flag_Param,    &tossing_enabled            },
  { "does_toss_use_static_speed", Flag_Param,    &does_toss_use_static_speed },
  /* pressure induced speed related configuration parameters */
  { "low_pressure",               Integer_Param, &low_pressure               },
  { "speed_up_pressure",          Integer_Param, &speed_up_pressure          },
  { "pressure_factor",            Float_Param,   &pressure_factor            },
  { "standard_speed_factor",      Float_Param,   &standard_speed_factor      },
  /* toss/catch related parameters */
  { "min_toss_time",              Integer_Param, &min_toss_time              },
  { "max_toss_time",              Integer_Param, &max_toss_time              },
  { "toss_cleanup_time",          Integer_Param, &toss_cleanup_time          },
  { "min_toss_dist",              Integer_Param, &min_toss_dist              },
  { "static_toss_speed",          Integer_Param, &static_toss_speed          },
  { "toss_speed_factor",          Float_Param,   &toss_speed_factor          },
  /* edge motion related configuration parameters */
  { "edge_speed",                 Integer_Param, &edge_speed                 },
  /* corner tap actions */
  { "upper_left_action",          Corner_Param,  &corner_actions [0]         },
  { "lower_left_action",          Corner_Param,  &corner_actions [1]         },
  { "upper_right_action",         Corner_Param,  &corner_actions [2]         },
  { "lower_right_action",         Corner_Param,  &corner_actions [3]         },
  /* use wmode */
  { "use_wmode",		  Flag_Param,	 &use_wmode		     },
  { "finger_threshold",		  Integer_Param, &finger_threshold	     },
  { "tap_lower_limit",		  Integer_Param, &tap_lower_limit	     },
  { "tap_upper_limit",		  Integer_Param, &tap_upper_limit	     },
  { "tap_range",		  Integer_Param, &tap_range		     },
  { "tap_interval",		  Integer_Param, &tap_interval		     },
  { "drag_lock",		  Flag_Param,	 &drag_lock		     },
  { "multiple_click_delay",	  Integer_Param, &multiple_click_delay	     },
  /* end of list */
  { NULL,                         Flag_Param,    NULL                        }
};


/*
** The information returned in the identification packet.
*/
typedef struct {
  int info_model_code;
  int info_major;
  int info_minor;
} info_type;


/*
** The information returned in the model ID packet.
*/
typedef struct {
  int info_rot180;
  int info_portrait;
  int info_sensor;
  int info_hardware;
  int info_new_abs;
  int info_cap_pen;
  int info_simple_cmd;
  int info_geometry;
} model_id_type;

/*
** The information returned in the extended capibility packet.
*/

typedef struct {
  int cap_ext;
  int cap_sleep;
  int cap_four_button;
  int cap_multi_finger;
  int cap_palm_detect;
} ext_cap_type;

/*
** The format of the reported absolute data.
*/
typedef struct {
  int gesture;
  int finger;
  int left;
  int middle;
  int down;
  int right;
  int x;
  int y;
  int pressure;
} report_type;


/*
** A location record.
*/
typedef struct {
  int x;
  int y;
} location_type;


/*
** The information in the mode byte.
*/
#define RELATIVE_MODE      0x00
#define ABSOLUTE_MODE      0x80
#define LOW_REPORT_RATE    0x00
#define HIGH_REPORT_RATE   0x40
#define USE_1200_BAUD      0x00
#define USE_9600_BAUD      0x08
#define PS2_NO_SLEEP       0x00
#define PS2_SLEEP          0x08
#define NORMAL_REPORT      0x00
#define EXTENDED_REPORT    0x02
#define REPORT_W_OFF       0x00
#define REPORT_W_ON        0x01


static char *model_names [] = {
  "Unknown",
  "Standard TouchPad",
  "Mini Module",
  "Super Module",
  "",
  "",
  "",
  "Flexible pad",
  "Ultra-thin Module",
  "Wide pad Module",
  "",
  "Stamp pad Module",
  "Sub-mini Module",
  "TBD",
  "",
  "Advanced Technology pad",
  "Ultra-thin Module, connector reversed"
};


/*
** Define the information known about a sensor.
*/
typedef struct {
  char *model;
  int   x_per_mm;
  int   y_per_mm;
  float width_mm;
  float height_mm;
} sensor_info_type;


static sensor_info_type sensor_info [] = {
  { "",            0,   0,  0.0,  0.0 },
  { "Standard",   85,  94, 47.1, 32.3 },
  { "Mini",       91, 124, 44.0, 24.5 },
  { "Super",      57,  58, 70.2, 52.4 },
  { "",            0,   0,  0.0,  0.0 },
  { "",            0,   0,  0.0,  0.0 },
  { "",            0,   0,  0.0,  0.0 },
  { "",            0,   0,  0.0,  0.0 },
  { "UltraThin",  85,  94, 47.1, 32.3 },
  { "Wide",       73,  96, 54.8, 31.7 },
  { "",            0,   0,  0.0,  0.0 },
  { "Stamp",     187, 170, 21.4, 17.9 },
  { "SubMini",   122, 167, 32.8, 18.2 },
};


/*
** Parameters for controlling the touchpad.
*/
/* touchpad information */
static int res_x;
static int res_y;
static int x_per_mm;
static int y_per_mm;

/* status information */
static int           packet_num = 0;
static int           last_edges = 0;
static int           was_non_edge = 0;
static location_type last_locs [4];
static int           last_corner = 0;

/* toss status information */
static int           last_finger = 0;
static int           last_gesture = 0;
static int           last_buttons = 0;
static int           tossing = 0;
static int           was_tossing = 0;
static int           min_toss_dist__2;
static int           max_toss_packets;
static int           min_toss_packets;
static int           toss_cleanup_packets;
static int           toss_timer;
static location_type toss_speed;
static location_type touch_loc;


/****************************************************************************
**
** ROUTINES for processing either type of touchpad.
**
****************************************************************************/

static char *syn_model_name (int sensor) 
{
  if (sensor < 0 || sensor > 16) {
    return "Reserved";
  } else {
    return model_names [sensor];
  }
}


/* convert the model id from bits to values */
void extract_model_id_info (int model_int, model_id_type *model) 
{
  model->info_rot180     = check_bits (model_int, 0x00800000);
  model->info_portrait   = check_bits (model_int, 0x00400000);
  model->info_sensor     = (model_int & 0x003f0000) >> 16;
  model->info_hardware   = (model_int & 0x0000fe00) >> 8;
  model->info_new_abs    = check_bits (model_int, 0x00000080);
  model->info_cap_pen    = check_bits (model_int, 0x00000040);
  model->info_simple_cmd = check_bits (model_int, 0x00000020);
  model->info_geometry   = model_int & 0x0000000f;
}


/* Translate the reported data into a record for processing */
static sensor_info_type *syn_get_sensor_info (int sensor_id) 
{
  if (sensor_id < 0 || sensor_id > 12) {
    return &sensor_info [0];
  } else {
    return &sensor_info [sensor_id];
  }
}


/*
** Check for edges.
*/
static int syn_edges (location_type loc) 
{
  int edges = 0;
 
  if (loc.x <= x_min_center)
    edges |= LEFT_EDGE;
  if (loc.x >= x_max_center)
    edges |= RIGHT_EDGE;
  if (loc.y <= y_min_center)
    edges |= BOTTOM_EDGE;
  if (loc.y >= y_max_center)
    edges |= TOP_EDGE;

  return edges;
}


/*
** process_corner_taps
*/
void process_corner_taps (Gpm_Event *state, report_type report) 
{
  int i = 0;

  if (corner_taps_enabled && report.gesture &&
      (is_corner (last_edges) || last_corner)) {
    last_corner = 0;

    while (corner_actions [i].corner_mask) {
      if (check_bits (last_edges, corner_actions [i].corner_mask)) {
	switch (corner_actions [i].action) {
	case Left_Button_Action:
	  last_corner = GPM_B_LEFT;
	  break;
	case Middle_Button_Action:
	  last_corner = GPM_B_MIDDLE;
	  break;
	case Right_Button_Action:
	  last_corner = GPM_B_RIGHT;
	  break;
	case No_Action:
	default:
	  last_corner = 0;
	  break;
	}
      }

      i++;
    }

    state->buttons |= last_corner;
  } else {
    last_corner = 0;
  }
}


/*
** Dump the report data for debugging.
*/
static void dump_report_data (report_type report,
			      int edges) 
{
  gpm_debug_log (LOG_DEBUG,
                 "\r%c%c%c%c%c  %4dx%-4d  %3d  %c%c%c%c  %c%c",
                 report.gesture ? 'g' : '-',
                 report.finger  ? 'f' : '-',  

                 report.left    ? 'l' : '-',
                 report.middle  ? 'm' : '-',  

                 report.right   ? 'r' : '-',
                 report.x, report.y, report.pressure,
                 edges & LEFT_EDGE   ? 'l' : '-',
                 edges & RIGHT_EDGE  ? 'r' : '-',
                 edges & BOTTOM_EDGE ? 'b' : '-',
                 edges & TOP_EDGE    ? 't' : '-',
                 report.gesture && !report.finger ? 't' : '-',
                 report.gesture && report.finger  ? 'd' : '-');
}


/*
** syn_process_data
**
** Process the touchpad report.
*/
static void syn_process_data (Gpm_Event *state,
			      report_type report) 
{
  location_type loc;
  int           edges;
  float         speed_factor;
  float         edge_speed_factor;
  int           edge_motion_on;
  float         dx, dy;

  /* extract location and edges */
  loc.x = report.x;
  loc.y = report.y;
  edges = syn_edges (loc);

  /* initialize the state */
  state->buttons = 0;
  state->dx      = 0;
  state->dy      = 0;

#if DEBUG_REPORTS
  dump_report_data (report, edges);
#endif

  /* We only need concern ourselves when a finger is on the pad */
  if (report.finger) {
    if (tossing_enabled) {
      /* this is the cue to stop tossing */
      was_tossing = tossing || was_tossing;
      toss_timer  = toss_cleanup_packets;
      tossing     = 0;
      
      /* if we start tossing then this is from where */
      if (!last_finger) {
	touch_loc = loc;
      }
    }

    if (!edges)
      was_non_edge = 1;

    /* Need enough packets to perform smoothing */
    if (packet_num > 3) {
      /* compute the speed factor based on pressure */
      speed_factor = standard_speed_factor;

      if (report.pressure > low_pressure) {
	speed_factor *= 1.0 + ((report.pressure - speed_up_pressure) *
			       pressure_factor);
      }

      /* 
      ** if edge motion is enabled, only activate if we moved into
      ** the edge.  And this isn't a corner tap.
      */
      edge_motion_on = (edge_motion_enabled &&
			edges &&
			(was_non_edge ||
			 (!is_corner (edges) && last_corner)));
      /* use the edge speed factor if edge_motion_speed is enabled */
      edge_speed_factor = (edge_motion_speed_enabled ?
			   speed_factor :
			   standard_speed_factor);
      
      speed_factor = (pressure_speed_enabled ?
		      speed_factor :
		      standard_speed_factor);
      
      if (edge_motion_on && (edges & TOP_EDGE))
	 state->dy = -edge_speed * edge_speed_factor;
      else if (edge_motion_on && (edges & BOTTOM_EDGE))
	 state->dy = edge_speed * edge_speed_factor;
      else
	 state->dy = (speed_factor *
		      (((last_locs [mod4 (packet_num - 1)].y +
			 last_locs [mod4 (packet_num - 2)].y) / 2) - 
		       ((loc.y +
			 last_locs [mod4 (packet_num - 1)].y) / 2)));
      
      if (edge_motion_on && (edges & LEFT_EDGE))
	 state->dx = -edge_speed * edge_speed_factor;
      else if (edge_motion_on && (edges & RIGHT_EDGE))
	 state->dx = edge_speed * edge_speed_factor;
      else
	 state->dx = (speed_factor *
		      (((loc.x +
			 last_locs [mod4 (packet_num - 1)].x) / 2) - 
		       ((last_locs [mod4 (packet_num - 1)].x +
			 last_locs [mod4 (packet_num - 2)].x) / 2)));
    }

    last_locs [mod4 (packet_num)] = loc;
    last_edges = edges;
    packet_num++;
  } else {
    /* handle the tossing action if enabled */
    if (tossing_enabled && !was_tossing &&
	last_finger     &&
	(packet_num > min_toss_packets) &&
	(packet_num < max_toss_packets)) {
      dx = last_locs [mod4 (packet_num - 1)].x - touch_loc.x;
      dy = touch_loc.y - last_locs [mod4 (packet_num - 1)].y;

#if DEBUG_TOSS
      gpm_debug_log (LOG_DEBUG,"dx: %2.1f  dy: %2.1f  tdist^2: %2.1f",
                     dx, dy, distance (dx, dy));
#endif

      if (distance (dx, dy) > min_toss_dist__2) {
	tossing = 1;

	/* determine the toss speed */
	if (does_toss_use_static_speed) {
	  toss_speed.x = (static_toss_speed * standard_speed_factor *
			  dx / (abs (dx) + abs (dy)));
	  toss_speed.y = (static_toss_speed * standard_speed_factor *
			  dy / (abs (dx) + abs (dy)));
	} else {
	  toss_speed.x = dx * standard_speed_factor * toss_speed_factor;
	  toss_speed.y = dy * standard_speed_factor * toss_speed_factor;
	}

#if DEBUG_TOSS
	gpm_debug_log (LOG_DEBUG,"tossx: %d  tossy: %d", toss_speed.x, toss_speed.y);
#endif
      }
    }

    /* no finger therefore: no edge, and restart packet count */
    was_non_edge = 0;
    packet_num = 0;
  }

  /* if we are tossing then apply the toss speed */
  if (tossing_enabled && tossing) {
    state->dx = toss_speed.x;
    state->dy = toss_speed.y;
  }
  
  /* check for buttons if we didn't just complete a toss */
  if (!tossing && !was_tossing) {
    /*
    ** If there is no gesture then there are no buttons.
    ** If there is a continuing gesture then report the same buttons.
    ** Otherwise compute new buttons.
    */
    if (!report.gesture && !report.left && !report.right && !report.middle && !report.down) {
      state->buttons = 0;
    } else if (last_gesture) {
      state->buttons = last_buttons;
    } else {
      if (report.left || (taps_enabled &&
			  (report.gesture && !is_corner (last_edges))))
	state->buttons |= GPM_B_LEFT;
      
      if (report.right) 
        state->buttons |= GPM_B_RIGHT;

      if (report.middle)
	state->buttons |= GPM_B_MIDDLE;

      if (report.down)
	state->buttons |= 0x8;

      process_corner_taps (state, report);
    }
  }

  /* remember the last state of the finger for toss processing */
  last_finger  = report.finger;
  last_gesture = report.gesture;
  last_buttons = state->buttons;
  was_tossing  = was_tossing && toss_timer;

  if (was_tossing)
    toss_timer--;
}


/*
** syn_read_config_file
**
** Read the configuration data from the global config file
** SYSCONFDIR "/gpm-syn.conf".
*/
void syn_read_config_file () 
{
  char line [80];
  char *token;
  char *end_ptr;
  int param;
  FILE *config;

  if ( (config = fopen (SYSCONFDIR "/gpm-syn.conf", "r")) ) {
    while (fgets (line, 80, config)) {
      if (line [0] == '[') {
	if ( (token = strtok (line, "[] ")) ) {
	  param = 0;

	  /* which param is it */
	  while (param_data [param].name &&
		 strcasecmp (token, param_data [param].name) != 0) {
	    param++;
	  }

	  /* was a param found? */
	  if (!param_data [param].name) {
	    gpm_debug_log (LOG_NOTICE,"Unknown parameter %s", token);
	  } else {
	    token = strtok (NULL, "[] ");

	    switch (param_data [param].p_type) {
	    case Integer_Param:
	      *(param_data [param].addr.int_p) = strtol (token, &end_ptr, 0);
	      if (end_ptr == token)
		gpm_debug_log (LOG_NOTICE,"Value (%s) for parameter %s is invalid",
                               token, param_data [param].name);
#if DEBUG_PARAMS
	      gpm_debug_log (LOG_DEBUG,"Param %s set to %d",
                             param_data [param].name,
                             *(param_data [param].addr.int_p));
#endif
	      break;

	    case Float_Param:
	      *(param_data [param].addr.float_p) = strtod (token, &end_ptr);
	      if (end_ptr == token)
		gpm_debug_log (LOG_NOTICE,"Value (%s) for parameter %s is invalid",
                               token, param_data [param].name);
#if DEBUG_PARAMS
	      gpm_debug_log (LOG_DEBUG,"Param %s set to %3.3f",
                             param_data [param].name,
                             *(param_data [param].addr.float_p));
#endif
	      break;

	    case Flag_Param:
	      if (index ("YyTt1", token [0])) {
		*(param_data [param].addr.flag_p) = 1;
	      } else if (index ("NnFf0", token [0])) {
		*(param_data [param].addr.flag_p) = 0;
	      } else {
		gpm_debug_log (LOG_NOTICE,"Value (%s) for parameter %s is invalid",
                               token, param_data [param].name);
	      }
#if DEBUG_PARAMS
	      gpm_debug_log (LOG_DEBUG,"Param %s set to %s",
                             param_data [param].name,
                             (*(param_data [param].addr.flag_p) ?
                              "True" : "False"));
#endif
	      break;

	    case Corner_Param:
	      param_data [param].addr.corner_p->action = strtol (token,
								 &end_ptr, 0);
	      if (end_ptr == token)
		gpm_debug_log (LOG_NOTICE,"Value (%s) for parameter %s is invalid",
                               token, param_data [param].name);
#if DEBUG_PARAMS
	      gpm_debug_log (LOG_DEBUG,"Param %s set to %d",
                             param_data [param].name,
                             param_data [param].addr.corner_p->action);
#endif
	      break;

	    default:break;
	    }
	  }
	}
      }
    }

    fclose (config);
  }
}


/*
** syn_process_touchpad_config
**
** Extract important informtion and report (as desired) to the user.
*/
static void syn_process_config (info_type ident,
				model_id_type model) 
{
  sensor_info_type *sensor;

  sensor = syn_get_sensor_info (model.info_sensor);
  printf ("     Firmware version %d.%d\n",
	  ident.info_major, ident.info_minor);

  syn_read_config_file ();

  /* Save important information */
  x_per_mm = sensor->x_per_mm;
  y_per_mm = sensor->y_per_mm;
  res_x = (int) (x_per_mm * sensor->width_mm);
  res_y = (int) (y_per_mm * sensor->height_mm);

  /* convert the toss dist to touchpad resolution from mm */
  min_toss_dist__2 = sqr (min_toss_dist * (x_per_mm + y_per_mm) / 2);

  /* convert the toss times to packets (80 pkts/sec and 1000 ms/sec) */
  max_toss_packets     = max_toss_time * 80 / 1000;
  min_toss_packets     = min_toss_time * 80 / 1000;
  toss_cleanup_packets = toss_cleanup_time * 80 / 1000;

#if DEBUG
  gpm_debug_log (LOG_DEBUG,"Synaptics Ident:  model_code=%d   Firmware version %d.%d",
                 ident.info_model_code, ident.info_major, ident.info_minor);
  gpm_debug_log (LOG_DEBUG,"Synaptics model:");
  gpm_debug_log (LOG_DEBUG,"   rot180:      %s", model.info_rot180 ? "Yes" : "No");
  gpm_debug_log (LOG_DEBUG,"   portrait:    %s", model.info_portrait ? "Yes" : "No");
  gpm_debug_log (LOG_DEBUG,"   sensor:      %d", model.info_sensor);
  gpm_debug_log (LOG_DEBUG,"                %s", syn_model_name (model.info_sensor));
  gpm_debug_log (LOG_DEBUG,"                %s", sensor->model);
  gpm_debug_log (LOG_DEBUG,"                %dx%d res/mm",
	  sensor->x_per_mm, sensor->y_per_mm);
  gpm_debug_log (LOG_DEBUG,"                %4.1fx%4.1f mm",
	  sensor->width_mm, sensor->height_mm);
  gpm_debug_log (LOG_DEBUG,"                %dx%d res", res_x, res_y);
  gpm_debug_log (LOG_DEBUG,"   hardware:    %d", model.info_hardware);
  gpm_debug_log (LOG_DEBUG,"   newABS:      %s", model.info_new_abs ? "Yes" : "No");
  gpm_debug_log (LOG_DEBUG,"   simpleCmd:   %s", model.info_simple_cmd ? "Yes" : "No");
  gpm_debug_log (LOG_DEBUG,"   geometry:    %d", model.info_geometry);
#endif
#if DEBUG_TOSS
  gpm_debug_log (LOG_DEBUG,"\nMin Toss Dist^2: %d\n", min_toss_dist__2);
#endif
}


/****************************************************************************
**
** ROUTINES for interfacing to a SERIAL touchpad
**
****************************************************************************/
static unsigned char hextoint (unsigned char byte1,
			       unsigned char byte2) 
{
  unsigned char bytes [3];
  int result;

  bytes [0] = byte1;
  bytes [1] = byte2;
  bytes [2] = '\0';
  sscanf (bytes, "%x", &result);
  return result;
}

static void ser_flush_input (int fd) 
{
  struct timeval tv;
  fd_set rfds;
  unsigned char junk;
  
  FD_ZERO(&rfds);
  FD_SET (fd, &rfds);
  tv.tv_sec = 0;
  tv.tv_usec = 0;
  usleep (50000);

  while (select (fd+1, &rfds, NULL, NULL, &tv) == 1) {
#if DEBUG_FLUSH
    gpm_debug_log (LOG_DEBUG,"tossing");
    fflush (stdout);
#endif
    read (fd, &junk, 1);
#if DEBUG_FLUSH
    gpm_debug_log (LOG_DEBUG," %c", junk);
#endif
    FD_ZERO(&rfds);
    FD_SET (fd, &rfds);
    tv.tv_sec = 0;
    tv.tv_usec = 0;
  }
}

static void ser_read (int fd,
		      unsigned char *bytes,
		      int count) 
{
  struct timeval tv;
  fd_set rfds;
  int num_read = 0;
  int read_count;

  FD_ZERO (&rfds);
  FD_SET (fd, &rfds);
  tv.tv_sec = 1;
  tv.tv_usec = 0;

  while ((select (fd+1, &rfds, NULL, NULL, &tv) == 1) &&
	 (num_read < count)) {
    read_count = read (fd, &bytes [num_read], count - num_read);
    num_read += read_count;

    FD_ZERO (&rfds);
    FD_SET (fd, &rfds);
  }

  for (; num_read < count; num_read++) {
     bytes [num_read] = '\0';
  }
}

/* use the Synaptics extended serial syntax to write a command */
static void ser_send_cmd(int fd,
			 unsigned char *cmd) 
{
  unsigned char junk [15];

  ser_flush_input (fd);
  write (fd, cmd, strlen (cmd));
  ser_read (fd, junk, strlen (cmd));
#if DEBUG_FLUSH
  junk [strlen (cmd)] = '\0';
  gpm_debug_log (LOG_DEBUG,"tossing: %s", junk);
#endif
}

/* write 'mode' to a serial touchpad */
static void syn_set_serial_mode (int fd,
				 unsigned char mode) 
{
  unsigned char bytes [15];

  sprintf (bytes, "%%C3B%02X5555", mode);
#if DEBUG_SENT_DATA
  gpm_debug_log (LOG_DEBUG,"modes: %s", bytes);
#endif
  ser_send_cmd (fd, bytes);
}

/* read the identification from the serial touchpad */
static void syn_read_serial_ident (int fd,
				   info_type *info) 
{
  unsigned char bytes [5];

  ser_send_cmd (fd, "%A");
  ser_read (fd, bytes, 4);

#if DEBUG_SENT_DATA
  bytes [4] = '\0';
  gpm_debug_log (LOG_DEBUG,"Serial ident: %s", bytes);
#endif

  /* reformat the data */
  info->info_model_code = (bytes [2] & 0x07) >> 3;
  info->info_major      = (bytes [2] & 0x07);
  info->info_minor      = bytes [3];
}


/* read the model_id from the serial touchpad (in ps/2 format) */
static void syn_read_serial_model_id (int fd,
				      model_id_type *model) 
{
  unsigned char bytes [7];
  int model_int;

  /* 
   * for older touchpads this command is not supported and no response will
   * come.  We should do non blocking input here to handle that case 
   * and return byte2 as 0x47 ... later.
   */
  ser_send_cmd (fd, "%D");
  ser_read (fd, bytes, 6);

#if DEBUG_SENT_DATA
  bytes [6] = '\0';
  gpm_debug_log (LOG_DEBUG,"Serial model id: %s", bytes);
#endif

  /* reformat the data */
  model_int = ((hextoint (bytes [0], bytes [1]) << 16) |
	       (hextoint (bytes [2], bytes [3]) << 8) |
	       (hextoint (bytes [4], bytes [5])));
  extract_model_id_info (model_int, model);
}

/* Translate the reported data into a record for processing */
static void syn_translate_serial_report (unsigned char *data,
					 report_type *report) 
{
  report->gesture  = check_bits (data [0], 0x10);
  report->finger   = check_bits (data [0], 0x08);
  report->left     = check_bits (data [0], 0x04);
  report->middle   = check_bits (data [0], 0x02);
  report->right    = check_bits (data [0], 0x01);
  report->x        = (data [1] << 7) | (data [2] << 1);
  report->y        = (data [3] << 7) | (data [4] << 1);
  report->pressure = data [5] << 2;
}


/*------------------------------------------------------------------------*/
/*   PS/2 Utility functions.                                              */
/*      Adapted from tpconfig.c by C. Scott Ananian                       */
/*------------------------------------------------------------------------*/

typedef unsigned char byte;

/* write a byte to the ps/2 port, handling ACK */
static void ps2_putbyte(int fd,
			byte b) 
{
  byte ack;
  write(fd, &b, 1);
  read(fd, &ack, 1);
  if (ack != 0xFA)
    gpm_debug_log (LOG_ERR,"Invalid ACK in synps2 initialization");
}

/* read a byte from the ps/2 port */
static byte ps2_getbyte(int fd) 
{
  byte b;
  read(fd, &b, 1);
  return b;
}

/* use the Synaptics extended ps/2 syntax to write a special command byte */
static void ps2_send_cmd(int fd,
			 byte cmd) 
{
  int i;
  /* initialize with 'inert' command */
  ps2_putbyte(fd, 0xE6);
  for (i=0; i<4; i++) {
    ps2_putbyte(fd, 0xE8);
    ps2_putbyte(fd, (cmd>>6)&0x3);
    cmd<<=2;
  }
}

/* write 'cmd' to mode byte 1 */
static void ps2_set_mode1(int fd,
			  byte cmd) 
{
  ps2_send_cmd(fd, cmd);
  ps2_putbyte(fd, 0xF3);
  ps2_putbyte(fd, 0x0A);
}

/* write 'cmd' to mode byte 2 */
static void ps2_set_mode2(int fd,
			  byte cmd) 
{
  ps2_send_cmd(fd, cmd);
  ps2_putbyte(fd, 0xF3);
  ps2_putbyte(fd, 0x14);
}

/* read three byte status ('a','b','c') corresponding to register 'cmd' */
static void ps2_status_rqst(int fd,
			    byte cmd,
			    byte *bytes) 
{
  ps2_send_cmd(fd, cmd);
  ps2_putbyte(fd, 0xE9);
  bytes [0]=ps2_getbyte(fd);
  bytes [1]=ps2_getbyte(fd);
  bytes [2]=ps2_getbyte(fd);
}


/* read the identification from the ps2 touchpad */
static void syn_read_ps2_ident (int fd,
				info_type *info) 
{
  byte bytes [3];

  ps2_status_rqst (fd, 0x00, bytes);
  if (bytes [1] != 0x47) {
    printf ("PS/2 device doesn't appear to be a synaptics touchpad\n");
  } else {
    info->info_minor      = bytes [0];
    info->info_model_code = (bytes [2] >> 4) & 0x0f;
    info->info_major      = bytes [2] & 0x0f;
  }
}


/* read the model_id from the ps2 touchpad */
static void syn_read_ps2_model_id (int fd,
				   model_id_type *model) 
{
  unsigned char bytes [3];
  int model_int;

  ps2_status_rqst (fd, 0x03, bytes);
  model_int = ((bytes [0] << 16) |
	       (bytes [1] << 8)  |
	       bytes [2]);
  extract_model_id_info (model_int, model);
}

/* read the extended capibility from the ps2 touchpad */
static void syn_read_ps2_cap (int fd,
                              ext_cap_type *cap)
{
  unsigned char bytes [3];
  ps2_status_rqst (fd, 0x02, bytes);
  cap->cap_ext          = check_bits (bytes[0], 0x80);
  cap->cap_sleep        = check_bits (bytes[2], 0x10);
  cap->cap_four_button  = check_bits (bytes[2], 0x08);
  cap->cap_multi_finger = check_bits (bytes[2], 0x02);
  cap->cap_palm_detect  = check_bits (bytes[2], 0x01);
}

/* read the modes from the touchpad (in ps/2 format) */
static void read_ps2_modes (int fd) 
{
  unsigned char bytes [3];

  ps2_status_rqst (fd, 0x01, bytes);
#if DEBUG_SENT_DATA
  gpm_debug_log (LOG_DEBUG,"PS/2 modes: %02X", bytes [2]);
#endif
}

/* Translate the reported data into a record for processing */
static void syn_translate_ps2_report (unsigned char *data,
				      report_type *report) 
{
  int i;

  if (((data [0] & 0xc8) == 0x80) &&
      ((data [3] & 0xc8) == 0xc0) &&
      ((data [0] & 0x0f) == (data [3] & 0x0f))) {
    report->gesture  = check_bits (data [0], 0x04);
    report->finger   = check_bits (data [0], 0x20);
    report->left     = check_bits (data [0], 0x01);
    report->middle   = 0;
    report->right    = check_bits (data [0], 0x02);
    report->x        = (((data [1] & 0x0f) << 8) |
			((data [3] & 0x10) << 8) |
			data [4]);
    report->y        = (((data [1] & 0xf0) << 4) |
			((data [3] & 0x20) << 7) |
			data [5]);
    report->pressure = data [2];
  } else if (((data [0] & 0xc0) == 0xc0) &&
	     ((data [1] & 0x60) == 0x00) &&
	     ((data [3] & 0xc0) == 0x80) &&
	     ((data [4] & 0x60) == 0x00)) {
    report->gesture  = check_bits (data [0], 0x04);
    report->finger   = check_bits (data [1], 0x80);
    report->left     = check_bits (data [0], 0x01);
    report->middle   = 0;
    report->right    = check_bits (data [0], 0x02);
    report->x        = (((data [1] & 0x1f) << 8) |
			data [2]);
    report->y        = (((data [4] & 0x1f) << 8) |
			data [5]);
    report->pressure = (((data [0] & 0x30) << 2 ) |
			(data [3] & 0x3f));
  } else {
    gpm_debug_log (LOG_NOTICE,"tossing PS/2 data: ");
    for (i = 0; i < 6; i++)
      gpm_debug_log (LOG_NOTICE,"%02X ", data [i]);
    report->gesture  = 0;
    report->finger   = 0;
    report->left     = 0;
    report->middle   = 0;
    report->right    = 0;
    report->x        = 0;
    report->y        = 0;
    report->pressure = 0;
  }
}

static void syn_translate_ps2_wmode_report (unsigned char *data,
				      report_type *report) 
{
  int i;
  static int finger_timer = 0;
  static int gesture_timer = 0;
  static int gesture_delay = 0;
  static int stroke_x;
  static int stroke_y;
  static int drag_locked = 0;

  if (((data[0] & 0xc8) == 0x80) && ((data[3] & 0xc8) == 0xc0)) {
    unsigned int w = ((data[3] & 0x04) >> 2) |
	    		((data[0] & 0x04) >> 1) |
			((data[0] & 0x30) >> 2);
    report->left     = check_bits (data[0], 0x01);
    report->middle   = check_bits (data[0] ^ data[3], 0x01);
    report->down     = check_bits (data[0] ^ data[3], 0x02);
    report->right    = check_bits (data[0], 0x02);
    report->x        = (((data[1] & 0x0f) << 8) |
			((data[3] & 0x10) << 8) |
			data[4]);
    report->y        = (((data[1] & 0xf0) << 4) |
			((data[3] & 0x20) << 7) |
			data[5]);
    report->pressure = data[2];
    report->finger   = (data[2] > finger_threshold);
    
    if (report->finger) {
	    
      if (finger_timer == 0) { /* finger down */
	stroke_x = report->x;
	stroke_y = report->y;
      }
      
      if (finger_timer < (tap_upper_limit * 80 / 1000)) finger_timer ++; /* don't want timer to overflow */
      
      if (gesture_timer > 0) gesture_timer = 1; /* dragging or consecutive tap, gesture to end with finger up */
      
    } else { /* interesting things happen when finger is up */
	    
      /* tap determination */
      if ((finger_timer > (tap_lower_limit * 80 / 1000)) &&  /* minimum finger down time */
	  (finger_timer < (tap_upper_limit * 80 / 1000)) &&  /* maximum finger down time */
	  (distance((double)(stroke_x - report->x),  /* maximum range for finger to drift while down */
	    (double)(stroke_y - report->y))
	    < sqr((double)tap_range))) {

	/* not a consecutive tap? */
	if (gesture_timer == 0) gesture_delay = 0; /* right -> don't delay gesture */
	else { /* a consecutive tap! */
	  gesture_delay = multiple_click_delay * 80 / 1000; /* delay gesture to create multiple click */
	}
	
	/* is drag locked */
	if (drag_locked) {
	  drag_locked = 0; /* unlock it and don't gesture. */
	  gesture_timer = 0;
	} else gesture_timer = tap_interval * 80 / 1000; /* setup gesture time to count down */
	
      } else {
	      
	/* a drag to lock? */
	if (drag_lock && (gesture_timer > 0) && (finger_timer >= (tap_upper_limit * 80 / 1000)))
	  drag_locked = 1;
	      
	if (gesture_timer > 0) gesture_timer --;
	if (gesture_delay > 0) gesture_delay --;
	
      }
      
      finger_timer = 0;
      
    }
    
    report->gesture  = ((gesture_timer > 0) && (gesture_delay == 0)) || drag_locked;
    report->left = (report->left || report->gesture);

  } else {
    gpm_debug_log (LOG_NOTICE,"tossing PS/2 data: ");
    for (i = 0; i < 6; i++)
      gpm_debug_log (LOG_NOTICE,"%02X ", data [i]);
    report->gesture  = 0;
    report->finger   = 0;
    report->left     = 0;
    report->middle   = 0;
    report->down     = 0;
    report->right    = 0;
    report->x        = 0;
    report->y        = 0;
    report->pressure = 0;
  }
}


/****************************************************************************
**
** INTERFACE ROUTINES
**
****************************************************************************/

/*
** syn_process_serial_data
**
** Process the touchpad 6 byte report.
*/
void syn_process_serial_data (Gpm_Event *state,
			      unsigned char *data) 
{
  report_type   report;

  syn_translate_serial_report (data, &report);
  syn_process_data (state, report);
}


/*
** syn_process_ps2_data
**
** Process the touchpad 6 byte report.
*/
void syn_process_ps2_data (Gpm_Event *state,
			   unsigned char *data) 
{
  report_type   report;

  if (use_wmode) syn_translate_ps2_wmode_report (data, &report);
  else syn_translate_ps2_report (data, &report);
  syn_process_data (state, report);
}


/*
** syn_serial_init
** 
** Initialize the synaptics touchpad.  Read model and identification.
** Determine the size of the touchpad in "pixels".  Select 6 byte packets,
** select 9600 baud, and select high packet rate.
*/
void syn_serial_init (int fd) 
{
  model_id_type     model;
  info_type         ident;

  puts ("Initializing Synaptics serial TouchPad");

  syn_read_serial_ident (fd, &ident);
  syn_read_serial_model_id (fd, &model);
  syn_process_config (ident, model);

  /* select 6 byte packet, high packet rate, 9600bps */
  syn_set_serial_mode (fd, (ABSOLUTE_MODE    |
			    HIGH_REPORT_RATE |
			    USE_9600_BAUD    |
			    NORMAL_REPORT    |
			    REPORT_W_OFF));
}


/*
** syn_ps2_init
** 
** Initialize the synaptics touchpad.  Read model and identification.
** Determine the size of the touchpad in "pixels".  Select 6 byte packets,
** and select high packet rate.
*/
void syn_ps2_init (int fd) 
{
  model_id_type     model;
  info_type         ident;
  ext_cap_type      cap;

  puts ("Initializing Synaptics PS/2 TouchPad");

  syn_read_ps2_ident (fd, &ident);
  syn_read_ps2_model_id (fd, &model);
  syn_read_ps2_cap (fd, &cap);
  if (! (cap.cap_ext)) use_wmode = 0; /* wmode not support by the pad */
  syn_process_config (ident, model);

  /* select 6 byte packet, high packet rate, no-sleep */
  ps2_set_mode2 (fd, (ABSOLUTE_MODE    |
		      HIGH_REPORT_RATE |
		      PS2_NO_SLEEP     |
		      (use_wmode ? REPORT_W_ON : REPORT_W_OFF)));
}
