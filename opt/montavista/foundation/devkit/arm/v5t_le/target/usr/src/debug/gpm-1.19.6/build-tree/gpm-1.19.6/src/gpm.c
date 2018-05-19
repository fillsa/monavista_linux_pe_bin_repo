/*
 * general purpose mouse support for Linux
 *
 * Copyright (C) 1993        Andreq Haylett <ajh@gec-mrc.co.uk>
 * Copyright (C) 1994-1999   Alessandro Rubini <rubini@linux.it>
 * Copyright (C) 1998 	     Ian Zimmerman <itz@rahul.net>
 * Copyright (c) 2001        Nico Schottelius <nico@schottelius.org>
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
 ********/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>        /* strerror(); ?!?  */
#include <errno.h>
#include <unistd.h>        /* select(); */
#include <signal.h>        /* SIGPIPE */
#include <sys/param.h>
#include <sys/fcntl.h>     /* O_RDONLY */
#include <sys/wait.h>      /* wait()   */
#include <sys/stat.h>      /* mkdir()  */
#include <sys/time.h>      /* timeval */
#include <sys/types.h>     /* socket() */
#include <sys/socket.h>    /* socket() */
#include <sys/un.h>        /* struct sockaddr_un */

#include <linux/vt.h>      /* VT_GETSTATE */
#include <sys/kd.h>        /* KDGETMODE */
#include <termios.h>       /* winsize */

#include "headers/general.h"
#include "headers/gpmInt.h"

#if !defined(__GLIBC__)
   typedef unsigned int __socklen_t;
#endif    /* __GLIBC__ */

#ifndef max
#define max(a,b) ((a)>(b) ? (a) : (b))
#endif

extern int	errno;

static void gpm_killed(int);

/*
 * all the values duplicated for dual-mouse operation are
 * now in this structure (see gpmInt.h)
 */

struct mouse_features mouse_table[3] = {
  {
  DEF_TYPE, DEF_DEV, DEF_SEQUENCE,
  DEF_BAUD, DEF_SAMPLE, DEF_DELTA, DEF_ACCEL, DEF_SCALE, 0 /* scaley */,
  DEF_TIME, DEF_CLUSTER, DEF_THREE, DEF_GLIDEPOINT_TAP,
  (char *)NULL /* extra */,
  (Gpm_Type *)NULL
  },
};
struct mouse_features *which_mouse;

/* These are only the 'global' options */

char *opt_lut=DEF_LUT;
int opt_test=DEF_TEST;
int opt_ptrdrag=DEF_PTRDRAG;
int opt_kill=0;
int opt_repeater=0, opt_double=0;
int opt_force_repeat = 0;
char* opt_repeater_type = 0;
int opt_aged = 0;
char *opt_special=NULL; /* special commands, like reboot or such */
int opt_rawrep=0;
Gpm_Type *repeated_type=0;

/* devfs */
char *consolename = NULL;
char *vcname = NULL;

static int opt_resize=0; /* not really an option */
char *prgname;
struct winsize win;
int maxx, maxy;
int fifofd=-1;

int eventFlag=0;
Gpm_Cinfo *cinfo[MAX_VC+1];
fd_set selSet, readySet, connSet;

time_t last_selection_time;
time_t opt_age_limit = 0;

/* argc and argv for mice initialization */
static int mouse_argc[3]; /* 0 for default (unused) and two mice */
static char **mouse_argv[3]; /* 0 for default (unused) and two mice */

/*===================================================================*/
/*
 *      first, all the stuff that used to be in gpn.c (i.e., not main-loop)
 */
/*-------------------------------------------------------------------*/

/* build_argv is used for mouse initialization routines */
static char **build_argv(char *argv0, char *str, int *argcptr, char sep)
{
    int argc = 1;
    char **argv;
    char *s;

    /* argv0 is never NULL, but the extra string may well be */
    if (str)
        for (s=str; sep && (s = strchr(s, sep)); argc++)
            s++;
    argv = calloc(argc+2, sizeof(char **));
    if (!argv)
        oops("allocation failed\n");
    argv[0] = argv0;

    if (!str) {
        *argcptr = argc; /* 1 */
	return argv;
    }
    /* else, add arguments */
    s = argv[1] = strdup(str);
    argc = 2; /* first to fill */

    /* ok, now split: the first one is in place, and s is the whole string */
    for ( ; sep && (s = strchr(s, sep)) ; argc++) {
	*s = '\0';
	s++;
	argv[argc] = s;
    }
    *argcptr = argc;
    return argv;
}

/*-------------------------------------------------------------------*/
/* The old console options is removed. We are taking stderr now
 * In the next update there should also be support for syslog
 ********************************************************************/

static inline int open_console(const int mode)
{
  int fd;

  if ((fd=open(consolename, mode)) < 0)
    oops(consolename);
  return fd;
}

/*-------------------------------------------------------------------*/
static inline int wait_text(int *fdptr)
{
  int fd;
  int kd_mode;

  close(*fdptr);
  do
    {
    sleep(2);
    fd = open_console(O_RDONLY);
    if (ioctl(fd, KDGETMODE, &kd_mode)<0)
      oops("ioctl(KDGETMODE)");
    close(fd);
    }
  while (kd_mode != KD_TEXT);

  /* reopen, reinit (the function is only used if we have one mouse device) */
  if ((*fdptr=open(opt_dev,O_RDWR))<0)
    oops(opt_dev);
  if (m_type->init)
    m_type=(m_type->init)(*fdptr, m_type->flags, m_type,
			  mouse_argc[1], mouse_argv[1]);
  return (1);
}

/*-------------------------------------------------------------------*/
static inline void selection_copy(int x1, int y1, int x2, int y2, int mode)
{
/*
 * The approach in "selection" causes a bus error when run under SunOS 4.1
 * due to alignment problems...
 */
  unsigned char buf[6*sizeof(short)];
  unsigned short *arg = (unsigned short *)buf + 1;
  int fd;

  buf[sizeof(short)-1] = 2;  /* set selection */

  arg[0]=(unsigned short)x1;
  arg[1]=(unsigned short)y1;
  arg[2]=(unsigned short)x2;
  arg[3]=(unsigned short)y2;
  arg[4]=(unsigned short)mode;

  if ((fd=open_console(O_WRONLY))<0)
    oops("open_console");
  gpm_debug_log(LOG_DEBUG,"ctl %i, mode %i",(int)*buf, arg[4]);
  if (ioctl(fd, TIOCLINUX, buf+sizeof(short)-1) < 0)
    oops("ioctl(TIOCLINUX)");
  close(fd);

  if (mode < 3) {
    opt_aged = 0;
    last_selection_time = time(0);
  } /*if*/
}


/*-------------------------------------------------------------------*/
static inline void selection_paste(void)
{
  char c=3;
  int fd;

  if (!opt_aged && (0 != opt_age_limit) &&
      (last_selection_time + opt_age_limit < time(0))) {
    opt_aged = 1;
  } /*if*/

  if (opt_aged) {
    gpm_debug_log(LOG_DEBUG,"Skipping paste; selection has aged");
    return;
  } 

  fd=open_console(O_WRONLY);
  if (ioctl(fd, TIOCLINUX, &c) < 0)
     oops("ioctl(TIOCLINUX)");
  close(fd);
}

/*-------------------------------------------------------------------*/
static  inline int do_selection(Gpm_Event *event)  /* returns 0, always */
{
  static int x1=1, y1=1, x2, y2;
#define UNPOINTER() 0

  x2=event->x; y2=event->y;
  switch(GPM_BARE_EVENTS(event->type))
    {
    case GPM_MOVE:
      if (x2<1) x2++; else if (x2>maxx) x2--;
      if (y2<1) y2++; else if (y2>maxy) y2--;
      selection_copy(x2,y2,x2,y2,3); /* just highlight pointer */
      return 0;

    case GPM_DRAG:
      if (event->buttons==GPM_B_LEFT)
	{
	if (event->margin) /* fix margins */
	  switch(event->margin)
	    {
	    case GPM_TOP: x2=1; y2++; break;
	    case GPM_BOT: x2=maxx; y2--; break;
	    case GPM_RGT: x2--; break;
	    case GPM_LFT: y2<=y1 ? x2++ : (x2=maxx, y2--); break;
	    }
        selection_copy(x1,y1,x2,y2,event->clicks);
	if (event->clicks>=opt_ptrdrag && !event->margin) /* pointer */
	  selection_copy(x2,y2,x2,y2,3);
	}
      return 0;

    case GPM_DOWN:
      switch (event->buttons)
	{
	case GPM_B_LEFT:
	  x1=x2; y1=y2;
	  selection_copy(x1,y1,x2,y2,event->clicks);  /*  start selection */
	  return 0;

	case GPM_B_MIDDLE:
	  selection_paste();
	  return 0;

	case GPM_B_RIGHT:
	  if (opt_three==1)
	    selection_copy(x1,y1,x2,y2,event->clicks);
	  else
	    selection_paste();
	  return 0;
	}
    }
  return 0;
}

/*-------------------------------------------------------------------*/
/* returns 0 if the event has not been processed, and 1 if it has */
static inline int do_client(Gpm_Cinfo *cinfo, Gpm_Event *event)
{
  Gpm_Connect info=cinfo->data;
  int fd=cinfo->fd;
  /* value to return if event is not used */
  int res = !(info.defaultMask & event->type);

  /* instead of returning 0, scan the stack of clients */
  if ((info.minMod & event->modifiers) < info.minMod)
    goto scan;
  if ((info.maxMod & event->modifiers) < event->modifiers) 
    goto scan;

  /* if not managed, use default mask */
  if (!(info.eventMask & GPM_BARE_EVENTS(event->type))) {
    if (res)
      return res;
    else
      goto scan;
   }   

  /* WARNING */ /* This can generate a SIGPIPE... I'd better catch it */
  MAGIC_P((write(fd,&magic, sizeof(int))));
  write(fd,event, sizeof(Gpm_Event));

  return info.defaultMask & GPM_HARD ? res : 1; /* HARD forces pass-on */

  scan:
  if (cinfo->next != 0) 
    return do_client (cinfo->next, event); /* try the next */
  return 0; /* no next, not used */
}

/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
static inline char *getMouseData(int fd, Gpm_Type *type, int kd_mode)
{
  static unsigned char data[32]; /* quite a big margin :) */
  char *edata=data+type->packetlen;
  int howmany=type->howmany;
  int i,j;
/*....................................... read and identify one byte */

    if (read(fd, data, howmany)!=howmany)
      {
      if (opt_test) exit(0);
      gpm_debug_log(LOG_ERR, "Error in read()ing first: %s", strerror(errno));
      return NULL;
      }

      if (kd_mode!=KD_TEXT && fifofd != -1 && opt_rawrep)
	write(fifofd, data, howmany);

    if ((data[0]&(m_type->proto)[0]) != (m_type->proto)[1])
      {
      if (m_type->getextra == 1)
	{
	data[1]=GPM_EXTRA_MAGIC_1; data[2]=GPM_EXTRA_MAGIC_2;
        gpm_debug_log(LOG_DEBUG,"Extra %02x",data[0]);
	return data;
	}
      gpm_debug_log(LOG_DEBUG,"Error in protocol");
      gpm_debug_log(LOG_DEBUG,"Data %02x",data[0]);
      return NULL;
      }

/*....................................... read the rest */

    /*
     * well, this seems to work almost right with ps2 mice. However, I've never
     * tried ps2 with the original selection package, which called usleep()
     */
    
    if ( (i=m_type->packetlen-howmany) ) /* still to get */
      do
	{
	j=read(fd,edata-i,i); /* edata is pointer just after data */
	if ((kd_mode!=KD_TEXT || opt_force_repeat)
	    && fifofd != -1 && opt_rawrep && j > 0)
	  write(fifofd, edata-i, j);
	i-=j;
	}
      while (i&&j);

    if (i)
      {
      gpm_debug_log(LOG_ERR,"Error in read()ing rest: %s", strerror(errno));
      return NULL;
      }
    
    if ((data[1]&(m_type->proto)[2]) != (m_type->proto)[3])
      {
      gpm_debug_log(LOG_NOTICE,"Skipping a data packet (?)");
      gpm_debug_log(LOG_DEBUG,"Bad %02x %02x %02x (%02x)",data[0],data[1],data[2],data[3]);
      return NULL;
      }
  gpm_debug_log(LOG_DEBUG,"Data %02x %02x %02x (%02x)",data[0],data[1],data[2],data[3]);
  return data;
}


static int statusX,statusY,statusB; /* to return info */
static int statusC=0; /* clicks */
void get_console_size(Gpm_Event *ePtr);

/*-------------------------------------------------------------------*/
static inline int processMouse(int fd, Gpm_Event *event, Gpm_Type *type,
			       int kd_mode)
{
  char *data;
  static int fine_dx, fine_dy;
  static int i, j, m, obuttons;
  static Gpm_Event nEvent;
  static struct vt_stat stat;
  static struct timeval tv1={0,0}, tv2; /* tv1==0: first click is single */
  static struct timeval timeout={0,0};
  fd_set fdSet;
  static int newB=0, oldB=0, oldT=0; /* old buttons and Type to chain events */
  /* static int buttonlock, buttonlockflag; */

#define GET_TIME(tv) (gettimeofday(&tv, (struct timezone *)NULL))
#define DIF_TIME(t1,t2) ((t2.tv_sec -t1.tv_sec) *1000+ \
                         (t2.tv_usec-t1.tv_usec)/1000)


  oldT=event->type;

  if (eventFlag)
    {
    eventFlag=0;

    if (m_type->absolute)       /* a pen or other absolute device */
      {
      event->x=nEvent.x;
      event->y=nEvent.y;
      }
    event->dx=nEvent.dx;
    event->dy=nEvent.dy;
    event->buttons=nEvent.buttons;
    }
  else
    {
    event->dx=event->dy=0;
    event->wdx=event->wdy=0;

    nEvent.modifiers = 0; /* some mice set them */
    FD_ZERO(&fdSet); FD_SET(fd,&fdSet); i=0;

    do /* cluster loop */
      {
      if (   ((data=getMouseData(fd,m_type,kd_mode))==NULL)
	  || ((*(m_type->fun))(&nEvent,data)==-1) )
	{
	if (!i) return 0;
	else break;
	}

      event->modifiers = nEvent.modifiers; /* propagate modifiers */

      /* propagate buttons */
      /* Change the button order */
      obuttons = nEvent.buttons;
      nEvent.buttons = 0;
      for (j = 0; j < 8; j++) {
	if (obuttons & (1 << j)) {
	  nEvent.buttons |= opt_buts[j];
	}
      }
//    nEvent.buttons = opt_sequence[nEvent.buttons]&7; /* change the order */
      oldB=newB; newB=nEvent.buttons;
      if (!i) event->buttons=nEvent.buttons;

      if (oldB!=newB)
	{
	eventFlag = (i!=0)*(which_mouse-mouse_table); /* 1 or 2 */
	break;
	}

      /* propagate movement */
      if (!(m_type->absolute)) /* mouse */
	{
	if (abs(nEvent.dx)+abs(nEvent.dy) > opt_delta)
	  nEvent.dx*=opt_accel, nEvent.dy*=opt_accel;

	/* increment the reported dx,dy */
	event->dx+=nEvent.dx;
	event->dy+=nEvent.dy;
	}
      else /* a pen */
	{
        /* get dx,dy to check if there has been movement */
        event->dx = (nEvent.x) - (event->x);
        event->dy = (nEvent.y) - (event->y);
	}

      /* propagate wheel */
      event->wdx += nEvent.wdx;
      event->wdy += nEvent.wdy;

      select(fd+1,&fdSet,(fd_set *)NULL,(fd_set *)NULL,&timeout/* zero */);
      }
    while (i++<opt_cluster && nEvent.buttons==oldB && FD_ISSET(fd,&fdSet));
    
    } /* eventFlag */

/*....................................... update the button number */

  if ((event->buttons&GPM_B_MIDDLE) && !opt_three) opt_three++;

/*....................................... we're a repeater, aren't we? */

  if ((kd_mode!=KD_TEXT) || opt_force_repeat)
    {
    if (fifofd != -1 && ! opt_rawrep)
      {
        if (m_type->absolute) /* hof Wed Feb  3 21:43:28 MET 1999 */ 
          { /*prepare the values from a absolute device for repeatermode */
             static struct timeval rept1,rept2;
             gettimeofday(&rept2, (struct timezone *)NULL);
             if (((rept2.tv_sec -rept1.tv_sec) *1000+(rept2.tv_usec-rept1.tv_usec)/1000)>250) 
                { event->dx=0; event->dy=0; }
             rept1=rept2;
             
             event->dy=event->dy*((win.ws_col/win.ws_row)+1);
	     event->x=nEvent.x; 
	     event->y=nEvent.y;
          }
        repeated_type->repeat_fun(event, fifofd); /* itz Mon Jan 11 23:39:44 PST 1999 */
      }
    return 0; /* no events nor information for clients */
    }

/*....................................... no, we arent a repeater, go on */

  /* use fine delta values now, if delta is the information */
  if (!(m_type)->absolute)
    {
    fine_dx+=event->dx;             fine_dy+=event->dy;
    event->dx=fine_dx/opt_scale;    event->dy=fine_dy/opt_scaley;
    fine_dx %= opt_scale;           fine_dy %= opt_scaley;
    }

  if (!event->dx && !event->dy && (event->buttons==oldB))
    do 
      { /* so to break */
      static long awaketime;
      /*
       * Return information also if never happens, but enough time has elapsed.
       * Note: return 1 will segfault due to missing event->vc
       */
      if (time(NULL)<=awaketime) return 0;
      awaketime=time(NULL)+1;
      break;
      }
    while (0);

/*....................................... fill missing fields */

  event->x+=event->dx, event->y+=event->dy;
  statusB=event->buttons;

  i=open_console(O_RDONLY);
  /* modifiers */
  j = event->modifiers; /* save them */
  event->modifiers=6; /* code for the ioctl */
  if (ioctl(i,TIOCLINUX,&(event->modifiers))<0)
    oops("get_shift_state");
  event->modifiers |= j; /* add mouse-specific bits */

  /* status */
  j = stat.v_active;
  if (ioctl(i,VT_GETSTATE,&stat)<0)
    oops("get_console_status");

  /*
   * if we changed console, request the current console size,
   * as different consoles can be of different size
   */
  if (stat.v_active != j)
    get_console_size(event);
  close(i);

  event->vc = stat.v_active;

  if (oldB==event->buttons)
    event->type = (event->buttons ? GPM_DRAG : GPM_MOVE);
  else
    event->type = (event->buttons > oldB ? GPM_DOWN : GPM_UP);

  switch(event->type)                    /* now provide the cooked bits */
    {
    case GPM_DOWN:
      GET_TIME(tv2);
      if (tv1.tv_sec && (DIF_TIME(tv1,tv2)<opt_time)) /* check first click */
	statusC++, statusC%=3; /* 0, 1 or 2 */
      else statusC=0;
      event->type|=(GPM_SINGLE<<statusC);
    break;

    case GPM_UP:
      GET_TIME(tv1);
      event->buttons^=oldB; /* for button-up, tell which one */
      event->type|= (oldT&GPM_MFLAG);
      event->type|=(GPM_SINGLE<<statusC);
      break;

    case GPM_DRAG:
      event->type |= GPM_MFLAG;
      event->type|=(GPM_SINGLE<<statusC);
      break;

    case GPM_MOVE:
      statusC=0;
    default:
      break;
    }
  event->clicks=statusC;
  
/* UGLY */
/* The current policy is to force the following behaviour:
 * - At buttons up, must fit inside the screen, though flags are set.
 * - At button down, allow going outside by one single step
 */


  /* selection used 1-based coordinates, so do I */

  /*
   * 1.05: only one margin is current. Y takes priority over X.
   * The i variable is how much margin is allowed. "m" is which one is there.
   */

  m = 0;
  i = ((event->type&(GPM_DRAG|GPM_UP))!=0); /* i is boolean */

  if (event->y>win.ws_row)  {event->y=win.ws_row+1-!i; i=0; m = GPM_BOT;}
  else if (event->y<=0)     {event->y=1-i;             i=0; m = GPM_TOP;}

  if (event->x>win.ws_col)  {event->x=win.ws_col+1-!i; if (!m) m = GPM_RGT;}
  else if (event->x<=0)     {event->x=1-i;             if (!m) m = GPM_LFT;}

  event->margin=m;

  gpm_debug_log(LOG_DEBUG,"M: %3i %3i (%3i %3i) - butt=%i vc=%i cl=%i",event->dx,event->dy,
                                      event->x,event->y,
                                      event->buttons, event->vc,
                                      event->clicks);

  /* update the global state */
  statusX=event->x; statusY=event->y;

  if (opt_special && event->type & GPM_DOWN) 
    return processSpecial(event);

  return 1;
}

/*-------------------------------------------------------------------*/
/*
 * This  was inline, and incurred in a compiler bug (2.7.0)
 */
static int get_data(Gpm_Connect *where, int whence)
{
  static int i;

#ifdef GPM_USE_MAGIC
  while ((i=read(whence,&check,sizeof(int)))==4 && check!=GPM_MAGIC)
    gpm_debug_log(LOG_NOTICE, "No magic");

  if (!i) return 0;

  if (check!=GPM_MAGIC)
    {
    gpm_debug_log(LOG_NOTICE, "Nothing more");
    return -1;
    }
#endif

  if ((i=read(whence, where, sizeof(Gpm_Connect)))!=sizeof(Gpm_Connect))
    {
    /* gpm_debug_log(LOG_NOTICE, "No data"); -- don't log, we are closing */
    return i ? -1 : 0;
    }

  return 1;
}

static void
disable_paste(int vc)
{
  opt_aged++;
  gpm_debug_log(LOG_INFO,"disabling pasting per request from virtual console (%d)", vc);
}

/*-------------------------------------------------------------------*/
                                 /* returns -1 if closing connection */
static inline int processRequest(Gpm_Cinfo *ci, int vc) 
{
  int i;
  Gpm_Cinfo *cinfoPtr, *next;
  Gpm_Connect conn;
  static Gpm_Event event;
  static struct vt_stat stat;

  gpm_debug_log(LOG_INFO,"Request on %i (console %i)", ci->fd, vc);
  if (vc>MAX_VC) return -1;

  /* itz 10-22-96 this shouldn't happen now */
  if (vc==-1) oops("Unknown fd selected");

  i=get_data(&conn,ci->fd);

  if (!i) /* no data */
    {
    gpm_debug_log(LOG_INFO,"Closing");
    close(ci->fd);
    FD_CLR(ci->fd,&connSet);
    FD_CLR(ci->fd,&readySet);
    if (cinfo[vc]->fd == ci->fd)
      {
      /* it was on top of the stack */
      cinfoPtr = cinfo[vc];
      cinfo[vc]=cinfo[vc]->next; /* pop the stack */
      free(cinfoPtr);
      return -1;
      }
    /* somewhere inside the stack, have to walk it */
    cinfoPtr = cinfo[vc];
    while (cinfoPtr && cinfoPtr->next) 
      {
      if (cinfoPtr->next->fd == ci->fd) 
	{
	next = cinfoPtr->next;
	cinfoPtr->next = next->next;
	free (next);
	break;
	}
      cinfoPtr = cinfoPtr->next;
      }
    return -1;
    } /* not data */
 
  if (i==-1)
    return -1; /* too few bytes */

  if (conn.pid!=0)
    {
    ci->data = conn;
    return 0;
    }

  /* Aha, request for information (so-called snapshot) */

  switch(conn.vc)
    {
    case GPM_REQ_SNAPSHOT:
      i=open_console(O_RDONLY);
      ioctl(i,VT_GETSTATE,&stat);
      event.modifiers=6; /* code for the ioctl */
      if (ioctl(i,TIOCLINUX,&(event.modifiers))<0)
        oops("get_shift_state");
      close(i);
      event.vc = stat.v_active;
      event.x=statusX;   event.y=statusY;
      event.dx=maxx;     event.dy=maxy;
      event.buttons= statusB;
      event.clicks=statusC;
      /* fall through */

    case GPM_REQ_BUTTONS:
      event.type= (opt_three==1 ? 3 : 2); /* buttons */
      write(ci->fd,&event,sizeof(Gpm_Event));
      break;

    case GPM_REQ_NOPASTE:
      disable_paste(vc);
      break;
    }

  return 0;
}

/*-------------------------------------------------------------------*/
static inline int processConn(int fd) /* returns newfd or -1 */
{
  Gpm_Cinfo *info;
  Gpm_Connect *request;
  Gpm_Cinfo *next;
  int vc, newfd;
#if !defined(__GLIBC__)
  int len;
#else /* __GLIBC__ */
  size_t len;
#endif /* __GLIBC__ */
  struct sockaddr_un addr; /* reuse this each time */
  struct stat statbuf;
  uid_t uid;
  char tty[20];

/*....................................... Accept */

  bzero((char *)&addr,sizeof(addr));
  addr.sun_family=AF_UNIX;

  len=sizeof(addr);
  if ((newfd=accept(fd,(struct sockaddr *)&addr, &len))<0)
    {
    gpm_debug_log(LOG_ERR,"accept() failed: %s",strerror(errno));
    return -1;
    }

  gpm_debug_log(LOG_INFO,"Connecting at fd %i",newfd);

  info=malloc(sizeof(Gpm_Cinfo));
  if (!info) oops("malloc()");
  request=&(info->data);

  if (get_data(request,newfd)==-1)
    {
    free(info);
    close(newfd);
    return -1;
    }

  if ((vc=request->vc)>MAX_VC)
    {
    gpm_debug_log(LOG_WARNING,"Request on vc %i > %i", vc, MAX_VC);
    free(info);
    close(newfd);
    return -1;
  }

#ifndef SO_PEERCRED
  if (stat (addr.sun_path, &statbuf) == -1 ||
      !S_ISSOCK(statbuf.st_mode)) {
    gpm_debug_log (LOG_ERR, "Address %s not a socket in processConn",addr.sun_path);
    free(info);			/* itz 10-12-95 verify client's right */
    close(newfd);
    return -1;			/* to read requested tty */
  } /*if*/
  
  unlink (addr.sun_path);	/* delete socket */

  staletime = time(0) - 30;
  if (statbuf.st_atime < staletime
      || statbuf.st_ctime < staletime
      || statbuf.st_mtime < staletime) {
    gpm_debug_log (LOG_ERR, "Socket too old in processConn");
    free (info);
    close(newfd);
    return -1;			/* socket is ancient */
  } /*if*/
  
  uid = statbuf.st_uid;		/* owner of socket */
#else
  {
    struct ucred sucred;
    socklen_t credlen = sizeof(struct ucred);

    if (-1 == getsockopt(newfd, SOL_SOCKET, SO_PEERCRED, &sucred, &credlen)) {
      gpm_debug_log(LOG_ERR,"getsockopt(SO_PEERCRED): %s", strerror(errno));
      free(info);
      close(newfd);
      return -1;
    }
    uid = sucred.uid;
    gpm_debug_log(LOG_DEBUG,"peer socket uid = %d", uid);
  }
#endif
  if (uid != 0) {
    sprintf (tty, "%s%d",vcname, vc);
    if (-1 == stat (tty, &statbuf)) {
      gpm_debug_log (LOG_ERR, "stat on %s fails in processConn", tty);
      free (info);
      close(newfd);
      return -1;
    } /*if*/
    if (uid != statbuf.st_uid) {
      gpm_debug_log (LOG_WARNING, "Failed gpm connect attempt by uid %d for %s", uid, tty); /* SUSPECT!! */
      free (info);
      close(newfd);
      return -1;
    } /*if*/    
  } /*if*/

/* register the connection information in the right place */

  info->next=next=cinfo[vc];
  info->fd=newfd;
  cinfo[vc]=info;

  gpm_debug_log(LOG_DEBUG,"Pid %i, vc %i, ev %02X, def %02X, minm %02X, maxm %02X",
       request->pid, request->vc, request->eventMask, request->defaultMask,
       request->minMod, request->maxMod);

/* if the client gets motions, give it the current position */
  if(request->eventMask & GPM_MOVE)
    {
    Gpm_Event event={0,0,vc,0,0,statusX,statusY,GPM_MOVE,0,0};
    do_client(info, &event);
    }

  return newfd;
}

/*-------------------------------------------------------------------*/
void get_console_size(Gpm_Event *ePtr)
{
  int i, prevmaxx, prevmaxy;
  struct mouse_features *which_mouse; /* local */

  /* before asking the new console size, save the previous values */
  prevmaxx = maxx; prevmaxy = maxy;

  i=open_console(O_RDONLY);
  ioctl(i, TIOCGWINSZ, &win);
  close(i);
  if (!win.ws_col || !win.ws_row)
    {
    gpm_debug_log(LOG_NOTICE,"zero screen dimension, assuming 80x25");
    win.ws_col=80; win.ws_row=25;
    }
  maxx=win.ws_col; maxy=win.ws_row;
  gpm_debug_log(LOG_DEBUG,"%i - %i",maxx,maxy);

  if (!prevmaxx) { /* first invocation, place the pointer in the middle */
      statusX = ePtr->x = maxx/2;
      statusY = ePtr->y = maxy/2;
  } else { /* keep the pointer in the same position where it was */
      statusX = ePtr->x = ePtr->x * maxx / prevmaxx;
      statusY = ePtr->y = ePtr->y * maxy / prevmaxy;
  } 

  for (i=1; i <= 1+opt_double; i++)
    {
    which_mouse=mouse_table+i; /* used to access options */
    /*
     * the following operation is based on the observation that 80x50
     * has square cells. (An author-centric observation ;-)
     */
    opt_scaley=opt_scale*50*maxx/80/maxy;
    gpm_debug_log(LOG_DEBUG,"x %i, y %i",opt_scale,opt_scaley);
    }
}

static void
gpm_exited(void)
{
  gpm_debug_log(LOG_DEBUG,"Removing files %s and %s", GPM_NODE_PID, GPM_NODE_CTL);
  if (gpm_log_daemon) {
    unlink(GPM_NODE_PID);
  } /*if*/
  unlink(GPM_NODE_CTL);
}


/*-------------------------------------------------------------------*/
int main(int argc, char **argv)
{
  int ctlfd, newfd;
  struct sockaddr_un ctladdr;
  int i, len, kd_mode, fd;
  struct   timeval timeout;
  int maxfd=-1;
  int pending;
  Gpm_Event event;

  prgname=argv[0];

  if(!set_devfs(check_devfs(),&consolename,&vcname)) oops(GPM_MESS_VCCHECK); 
  

/*....................................... parse command line */

  cmdline(argc, argv);
  if (0 != geteuid()) {
    fputs("sorry, gpm has to run as root\n",stderr);
    exit(1);
  } /* just in case... */
  atexit(gpm_exited);

  for (i=1; i <= 1+opt_double; i++)
    {
      which_mouse=mouse_table+i; /* used to access options */

      /* open the device with ndelay, to catch a locked device */
      if (opt_dev)
        {
          if (!strcmp(opt_dev,"-"))
            fd=0;
          else if ((fd=open(opt_dev,O_RDWR | O_NDELAY))<0)
            { oops(opt_dev); }
        }
      else /* use "/dev/mouse" */
        {
        /* change for devfs */
          if(check_devfs() == GPM_IS_NOT_DEVFS)
            opt_dev = "/dev/mouse";
          else
            oops("When using devfs there is no default device\n" \
                 "Try --help for options or -m \"mouse-device\"\n");
            
          if ((fd=open(opt_dev,O_RDWR | O_NDELAY))<0)
            { oops(opt_dev); }
        }

      /* and then reset the flag */
      fcntl(fd,F_SETFL,fcntl(fd,F_GETFL) & ~O_NDELAY);

      /* create argc and argv for this device */
      mouse_argv[i] = build_argv(opt_type, opt_options, &mouse_argc[i], ',');

      /* init the device, and use the return value as new mouse type */
      if (m_type->init)
        m_type=(m_type->init)(fd, m_type->flags, m_type, 
			      mouse_argc[i], mouse_argv[i]);
      if (!m_type)
        { oops("mouse initialization failed"); }

      which_mouse->fd=fd;
      maxfd=max(fd, maxfd);
    } /*for*/

  /* FIXME: stderr must be closed at this point, as protocol init needs it */

/*....................................... catch interesting signals */

  signal(SIGTERM, gpm_killed);
  signal(SIGINT,  gpm_killed);
  signal(SIGUSR1, gpm_killed); /* usr1 is used by a new gpm killing the old */

  signal(SIGWINCH,gpm_killed); /* winch can be sent if console is resized */

/*....................................... create your nodes */

  /* control node */

  if ((ctlfd=socket(AF_UNIX,SOCK_STREAM,0))==-1)
    oops("socket()");
  
  bzero((char *)&ctladdr,sizeof(ctladdr));
  ctladdr.sun_family=AF_UNIX;
  strcpy(ctladdr.sun_path,GPM_NODE_CTL);
  unlink (GPM_NODE_CTL);

  len=sizeof(ctladdr.sun_family)+strlen(GPM_NODE_CTL);
  if (bind(ctlfd,(struct sockaddr *)(&ctladdr),len)==-1)
      oops(ctladdr.sun_path);
   maxfd=max(maxfd,ctlfd);

   /* needs to be 0777, so all users can _try_ to access gpm */
   chmod(GPM_NODE_CTL,0777);

/*....................................... get screen dimensions */

  get_console_size(&event);
  
/*....................................... wait for mouse and connections */

  listen(ctlfd, 5);          /* Queue up calls */

#define NULL_SET ((fd_set *)NULL)
#define resetTimeout() (timeout.tv_sec=SELECT_TIME,timeout.tv_usec=0)

  FD_ZERO(&connSet);
  FD_SET(ctlfd,&connSet);

  if (opt_double)
    FD_SET(mouse_table[2].fd,&connSet);

  readySet=connSet;
  FD_SET(mouse_table[1].fd,&readySet);

  signal(SIGPIPE,SIG_IGN);  /* WARN */

/*--------------------------------------- main loop begins here */

  while(1)
    {
    selSet=readySet;
    resetTimeout();
    if (opt_test) timeout.tv_sec=0;

    if (eventFlag) /* an event left over by clustering */
      {
      pending=1;
      FD_ZERO(&selSet);
      FD_SET(mouse_table[eventFlag].fd,&selSet);
      }
    else
      while ((pending=select(maxfd+1,&selSet, NULL_SET,NULL_SET,&timeout))==0)
	{
	selSet=readySet;
	resetTimeout();
	} /* go on */


    if (opt_resize) /* did the console resize? */
      {
      get_console_size(&event);
      opt_resize--;
      signal(SIGWINCH,gpm_killed); /* reinstall handler */

      /* and notify clients */
      for(i=0; i<MAX_VC+1; i++)
	{
	Gpm_Cinfo *ci;

        for (ci = cinfo[i]; ci; ci = ci->next)
	  kill(ci->data.pid,SIGWINCH);
	}
      }

    if (pending<0)
      {
      if (errno==EBADF) oops("select()");
      gpm_debug_log(LOG_ERR,"select(): %s",strerror(errno));
      selSet=readySet;
      resetTimeout();
      continue;
      }

    gpm_debug_log(LOG_DEBUG,"selected %i times",pending);

/*....................................... manage graphic mode */

    /* 
     * Be sure to be in text mode. This used to be before select,
     * but actually it only matters if you have events.
     */
    {
      int fd = open_console(O_RDONLY);
      if (ioctl(fd, KDGETMODE, &kd_mode)<0)
	oops("ioctl(KDGETMODE)");
      close(fd);
      if (kd_mode != KD_TEXT && !opt_repeater && !opt_force_repeat) {
	wait_text(&mouse_table[1].fd);
	maxfd=max(maxfd,mouse_table[1].fd);
	readySet=connSet;
	FD_SET(mouse_table[1].fd,&readySet);
	continue; /* reselect */
      }
    }
/*....................................... got mouse, process event */
/*
 * Well, actually, run a loop to mantain inlining of functions without
 * lenghtening the file. This is not too clean a code, but it works....
 */

    for (i=1; i <= 1+opt_double; i++)
      {
      which_mouse=mouse_table+i; /* used to access options */
      if (FD_ISSET(which_mouse->fd,&selSet))
	  {
	  FD_CLR(which_mouse->fd,&selSet); pending--;
	  if (processMouse(which_mouse->fd, &event, m_type, kd_mode))
	    /*
	     * pass it to the client, if any
	     * or to the default handler, if any
	     * or to the selection handler
	     */ /* FIXME -- check event.vc */
	    (cinfo[event.vc] && do_client(cinfo[event.vc], &event))
	       || (cinfo[0]        && do_client(cinfo[0],        &event))
	       ||  do_selection(&event);
	  }
      }

/*....................................... got connection, process it */

    if (pending && FD_ISSET(ctlfd,&selSet))
      {
      FD_CLR(ctlfd,&selSet); pending--;
      newfd=processConn(ctlfd);
      if (newfd>=0)
	{
	FD_SET(newfd,&connSet);
	FD_SET(newfd,&readySet);
	maxfd=max(maxfd,newfd);
        }
      }

/*....................................... got request */

    /* itz 10-22-96 check _all_ clients, not just those on top! */
    for (i=0; pending && (i<=MAX_VC); i++)
      {
      Gpm_Cinfo* ci;

      for (ci = cinfo[i]; pending && ci; ci = ci->next) 
	{
        if (FD_ISSET(ci->fd,&selSet)) 
	  {
          FD_CLR(ci->fd,&selSet); pending--;

          /* itz Sat Sep 12 21:10:22 PDT 1998 */
          /* this code is clearly incorrect; the next highest
             descriptor after the one we're closing is not necessarily
             being used.  Fortunately, it doesn't hurt simply to leave this
             out. */

#ifdef NOTDEF
          if ((processRequest(ci,i)==-1) && maxfd==ci->fd)
            maxfd--;
#else
          (void)processRequest(ci,i);
#endif
	  }
	}
      }


/*....................................... look for a spare fd */

    /* itz 10-22-96 this shouldn't happen now! */
    for (i=0; pending && i<=maxfd; i++)
      {
      if (FD_ISSET(i,&selSet))
	{
        FD_CLR(i,&selSet);
        pending--;
        gpm_debug_log(LOG_WARNING,"Data on strange file descriptor %d", i);
	}
      }
	     
/*....................................... all done. */
    
    if(pending) oops("select()");
    } /* while(1) */
}

/*-------------------------------------------------------------------*/
static void gpm_killed(int signo)
{
  if (signo==SIGWINCH)
    {
    gpm_debug_log(LOG_INFO,"%s pid %i is resizing :-)", prgname, getpid());
    opt_resize++;
    return;
    }
  if (signo==SIGUSR1)
    gpm_debug_log(LOG_INFO,"%s pid %i killed by a new %s",
                  prgname, getpid(), prgname);
  exit(0);
}



