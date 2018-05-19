/*
 * gpn.c - support functions for gpm-Linux
 *
 * Copyright (C) 1993        Andreq Haylett <ajh@gec-mrc.co.uk>
 * Copyright (C) 1994-1999   Alessandro Rubini <rubini@linux.it>
 * Copyright (C) 1998 	     Ian Zimmerman <itz@rahul.net>
 * Copyright (c) 2001 	     Nico Schottelius <nico@schottelius.org>
 *
 * Tue,  5 Jan 1999 23:26:10 +0000, modified by James Troup <james@nocrew.org>
 * (usage): typo (s/an unexistent/a non-existent/)
 * (cmdline): modified handling of -t command line argument, so it
 *            can be used by anyone regardless of whether or not a
 *            copy of gpm is already running.
 * (usage): update for new -t option "types".
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
#include <string.h>        /* strerror(); ?!? memcpy() */
#include <ctype.h>         /* isdigit */
#include <signal.h>
#include <stdarg.h>        /* Log uses it */
#include <errno.h>
#include <unistd.h>        /* getopt(),symlink() */
#include <sys/stat.h>      /* mkdir()  */
#include <sys/param.h>
#include <sys/time.h>      /* timeval */
#include <sys/wait.h>      /* wait() */
#include <sys/types.h>     /* socket() */
#include <sys/socket.h>    /* socket() */
#include <sys/un.h>        /* struct sockaddr_un */
#include <asm/types.h>     /* __u32  */

#ifdef	SIGTSTP		/* true if BSD system */
#include <sys/file.h>
#include <sys/ioctl.h>
#endif

#ifndef HAVE___U32
typedef unsigned int __u32;
#endif

#include "headers/gpmInt.h"
#include "headers/gpm.h"

#define mkfifo(path, mode) (mknod ((path), (mode) | S_IFIFO, 0))

extern int	errno;

static void check_uniqueness(void);
static void check_kill(void);

/*===================================================================*/
/* octal digit */
static int isodigit(const unsigned char c)
{
  return ((c & ~7) == '0');
}

/* routine to convert digits from octal notation (Andries Brouwer) */
static int getsym(const unsigned char *p0, unsigned char *res)
{
  const unsigned char *p = p0;
  char c;

  c = *p++;
  if (c == '\\' && *p) 
    {
    c = *p++;
    if (isodigit(c)) 
      {
      c -= '0';
      if (isodigit(*p)) c = 8*c + (*p++ - '0');
      if (isodigit(*p)) c = 8*c + (*p++ - '0');
      }
    }
  *res = c;
  return (p - p0);
}

static int loadlut(char *charset)
{
  int i, c, fd;
  unsigned char this, next;
  static __u32 long_array[9]={
    0x05050505, /* ugly, but preserves alignment */
    0x00000000, /* control chars     */
    0x00000000, /* digits            */
    0x00000000, /* uppercase and '_' */
    0x00000000, /* lowercase         */
    0x00000000, /* Latin-1 control   */
    0x00000000, /* Latin-1 misc      */
    0x00000000, /* Latin-1 uppercase */
    0x00000000  /* Latin-1 lowercase */
    };


#define inwordLut (long_array+1)

  for (i=0; charset[i]; )
    {
    i += getsym(charset+i, &this);
    if (charset[i] == '-' && charset[i + 1] != '\0')
      i += getsym(charset+i+1, &next) + 1;
    else
      next = this;
    for (c = this; c <= next; c++)
      inwordLut[c>>5] |= 1 << (c&0x1F);
    }
  
  if ((fd=open(consolename, O_WRONLY)) < 0)
    {
    /* try /dev/console, if /dev/tty0 failed */
    consolename="/dev/console";
    if ((fd=open(consolename, O_WRONLY)) < 0)
      oops(consolename);
    }
  if ((fd<0) || (ioctl(fd, TIOCLINUX, &long_array)<0))
    {
    if (errno==EPERM && getuid())
      gpm_debug_log(LOG_WARNING,"loadlut: you should probably be root");
    else if (errno==EINVAL)
      oops("loadlut: is your kernel compiled with CONFIG_SELECTION on?");
    }
  close(fd);

  return 0;
}

/*===================================================================*/
static int
usage(char *whofailed)
{
  printf(GPM_NAME " " GPM_RELEASE ", " GPM_DATE "\n");
  if (whofailed)
    {
      printf("Error in the %s specification. Try \"%s -h\".\n",
             whofailed,prgname);
      return 1;
    }

  printf("Usage: %s [options]\n",prgname);
  printf("  Valid options are (not all of them are implemented)\n"
         "    -a accel         sets the acceleration (default %d)\n"
         "    -A [limit]       start with selection disabled (`aged')\n"
         "    -b baud-rate     sets the baud rate (default %d)\n"
         "    -B sequence      allows changing the buttons (default '%s')\n"
         "    -d delta         sets the delta value (default %d) (must be 2 or more)\n"
         "    -D	       debug mode: don't auto-background\n"
         "    -g tap-button    sets the button (1-3) that is emulated by tapping on\n"
         "                     a glidepoint mouse, none by default. (mman/ps2 only)\n"
         "    -i interval      max time interval for multiple clicks (default %i)\n"
         "    -k               kill a running gpm, to start X with a busmouse\n"
         "    -l charset       loads the inword() LUT (default '%s')\n"
         "    -m mouse-device  sets mouse device\n"
         "    -M               enable multiple mouse. Following options refer to\n"
         "                     the second device. Forces \"-R\"\n"
         "    -o options       decoder-specific options (e.g.: \"dtr\", \"rts\")\n"
         "    -p               draw the pointer while striking a selection\n"
         "    -q               quit after changing mouse behaviour\n"
         "    -r number        sets the responsiveness (default %i)\n"
         "    -R mouse-type    enter repeater mode. X should read /dev/gpmdata\n"
         "                     like it was a mouse-type device.  Default is MouseSystems.\n"
         "                     You can also specify \"raw\" to relay the raw device data.\n"
	 "    -F               Force always in repeat mode..\n"
         "    -s sample-rate   sets the sample rate (default %d)\n"
         "    -S [commands]    enable special commands (see man page)\n"
         "    -t mouse-type    sets mouse type (default '%s')\n"
         "                     Use a non-existent type (e.g. \"help\") to get a list\n"
	 "                     or \"types\" to get a list of just the mnemonics.\n"
         "    -T               test: read mouse, no clients\n"
         "    -v               print version and exit\n"
	 "    -e               output messages to stderr instead of syslog\n"
         "    -V verbosity     increase number of logged messages\n", 
         DEF_ACCEL, DEF_BAUD, DEF_SEQUENCE, DEF_DELTA, DEF_TIME, DEF_LUT,
         DEF_SCALE, DEF_SAMPLE, DEF_TYPE);
  return 1;
}

/* itz Sat Sep 12 10:55:51 PDT 1998 Added this is replacement for the
   unwanted functionality in check_uniqueness. */

static void
check_kill(void)
{
  int old_pid;
  FILE* fp = fopen(GPM_NODE_PID, "r");

  if (0 == fp) {
    if (opt_kill) {
      oops(GPM_NODE_PID);
    } else {
      return;
    } /*if*/
  } /*if*/
  
  if (1 != fscanf(fp,"%d",&old_pid)) {
    oops(GPM_NODE_PID);
  } /*if*/
  fclose(fp);

  if (-1 == kill(old_pid,0)) {
    gpm_debug_log(LOG_NOTICE, "Removing stale pid file %s", GPM_NODE_PID);
    unlink(GPM_NODE_PID);
  } /*if*/

  if (opt_kill) {
    kill(old_pid, SIGTERM);
    exit(0);
  } /*if*/
}

/* itz Sat Sep 12 10:30:05 PDT 1998 this function used to mix two
   completely different things; opening a socket to a running daemon
   and checking that a running daemon existed.  Ugly. */

static void
check_uniqueness(void)
{
  static char tmp_pidfile[64]; 
  int fd;
  FILE* fp = 0;

  strncpy (tmp_pidfile, GPM_NODE_DIR "gpmXXXXXX", 63);

  if ((fd = mkstemp(tmp_pidfile)) == -1) {
    oops("mkstemp()");
  }
  if ((fp = fdopen(fd,"w")) != NULL) {
    fprintf(fp,"%d\n",getpid());
    fclose(fp);
  } else if (getuid()) {
    gpm_oops(__FILE__,__LINE__,"you're not root, can you write to %s?",
             GPM_NODE_DIR);
  } else {
    oops(tmp_pidfile);
  } /*if*/

  /* now, try to link it to the real pid name; if that fails, the
     file already exists, meaning another instance of the daemon is
     already running */

  if (link(tmp_pidfile, GPM_NODE_PID) == -1) {
    fp = fopen(GPM_NODE_PID, "r");
    if (fp) {
      int old_pid = -1;
      fscanf(fp, "%d", &old_pid);
      gpm_oops(__FILE__,__LINE__,"gpm already running as pid %d", old_pid);
    } else {
      oops(GPM_NODE_PID);
    } /*if*/
  } else {
    unlink(tmp_pidfile);
  } /*if*/
}

/* the function returns a valid type pointer or NULL if not found*/
static struct Gpm_Type *find_mouse_by_name(char *name)
{
    Gpm_Type *type;
    char *s;
    int len = strlen(name);

    for (type=mice; type->fun; type++) {
    
	if (!strcasecmp(name, type->name))
	    break;
	/* otherwise, look in the synonym list */
	for (s = type->synonyms; s; s = strchr(s, ' ')) {
	    while (*s && isspace(*s))
	        s++; /* skip spaces */
	    if (!strncasecmp(name, s, len) && !isprint(*(s + len)))
	        break; /* found */
	}
	if (s) break; /* found a synonym */
    }
    if (!type->fun)
        return NULL;
    return type;
}

/*===================================================================*/
int 
cmdline(int argc, char **argv)
{
  char options[]="a:A::b:B:d:Dg:hi:kl:m:Mo:pr:FR::s:S:t:TveV::23";
  int i, j, opt;
  char *p;

  /* initialize for the dual mouse */
  mouse_table[2]=mouse_table[1]=mouse_table[0]; /* copy defaults */
  which_mouse=mouse_table+1; /* use the first */

  /* itz Wed Jul 1 18:37:59 PDT 1998 */
  /* run as a daemon unless told otherwise */
  gpm_log_daemon = 1;
  /* Run with logging to syslog unless told otherwise */
  gpm_log = 1;

  while ((opt = getopt(argc, argv, options)) != -1)
    {
      switch (opt)
        {
        case 'a': opt_accel = atoi(optarg); break;
        case 'A':
          opt_aged++;
          if (optarg) opt_age_limit = atoi(optarg);
          break;
        case 'b': opt_baud = atoi(optarg); break;
        case 'B': opt_sequence = optarg; break;
        case 'd': opt_delta = atoi(optarg); break;
        case 'D': gpm_log_daemon = 0; break;
        case 'g':
          opt_glidepoint_tap=atoi(optarg); 
          break;
        case 'h': exit(usage(NULL));
        case 'i': opt_time=atoi(optarg); break;
        case 'k': opt_kill++; gpm_log_daemon = 0; break;
        case 'l': opt_lut=optarg; break;
        case 'm': opt_dev = optarg; break;
        case 'M':
          opt_double++;
          opt_repeater++;
          if (0 == opt_repeater_type)
            opt_repeater_type = "msc";
          which_mouse=mouse_table+2; break;
	case 'o': opt_options = optarg; break;
        case 'p': opt_ptrdrag=0; break;
        case 'r':
	  /* being called responsiveness, I must take the inverse */
	  opt_scale=atoi(optarg);
          if (!opt_scale || opt_scale > 100) opt_scale=100; /* the maximum */
	  else opt_scale=100/opt_scale;
	  break;
        case 'R':
          opt_repeater++;
          if (optarg) {
            opt_repeater_type = optarg;
          } else {
            opt_repeater_type = "msc";
          } /*if*/
          break;
	case 'F':
	  opt_force_repeat = 1;
	  opt_repeater++;
	  if (0 == opt_repeater_type)
	    opt_repeater_type = "msc";
	  break;
        case 's': opt_sample = atoi(optarg); break;
        case 'S':
          if (optarg) opt_special=optarg;
          else opt_special="";
          break;
	case 't':
	  opt_type=optarg;
	  for (m_type=mice; m_type->fun; m_type++)
	    if (!strcmp(opt_type,m_type->name)
		|| !strcasecmp(opt_type,m_type->synonyms))
	      break;

	  if (!(m_type->fun)) {
	    /* not found */
	    if (strcmp(opt_type,"types")==0)
	      exit(M_listTypes());
	    else
	      exit(M_listMice());
	  }
	  break;
        case 'T': opt_test++; break;
        case 'v': printf(GPM_NAME " " GPM_RELEASE ", " GPM_DATE "\n"); exit(0);
        case 'V': 
          gpm_debug_level += (0 == optarg ? 1 : strtol(optarg, 0, 0));
          break;
        case '2': opt_three=-1; break;
        case '3': opt_three=1; break;
	case 'e': gpm_log=0; break;
        default:
          exit(usage("commandline"));
        }
    }

  if (gpm_log)
    openlog(prgname, LOG_PID, gpm_log_daemon ? LOG_DAEMON : LOG_USER);
  check_kill();

  loadlut(opt_lut);

  if (opt_repeater)
    {
      if (mkfifo(GPM_NODE_FIFO,0666) && errno!=EEXIST)
        { oops(GPM_NODE_FIFO); }
      if ((fifofd=open(GPM_NODE_FIFO, O_RDWR|O_NONBLOCK))<0)
        { oops(GPM_NODE_FIFO); }
    }


  /* duplicate initialization */

  for (i=1; i <= 1+opt_double; i++)
    {
      which_mouse=mouse_table+i; /* used to access options */

      if (opt_accel<1) exit(usage("acceleration"));
      if (opt_delta<2) exit(usage("delta"));
      if (strlen(opt_sequence) <= 0)
        exit(usage("sequence"));
      /* choose the sequence */
      for (j = 0; j < 9; j++)
	opt_buts[j] = 1 << j;

      for (p = opt_sequence, j = 0; *p != '\0'; p++, j++) {
	if ((*p < '0') || (*p > '9')) {
	  exit(usage("button sequence"));
	}
	opt_buts[j] = (1 << (*p - '1'));
      }

      if (opt_glidepoint_tap>9)
        exit(usage("glidepoint tap button"));
      if (opt_glidepoint_tap)
	opt_glidepoint_tap = opt_buts[opt_glidepoint_tap - 1];

      /* look for the mouse type */
      m_type = find_mouse_by_name(opt_type);
      if (!m_type) /* not found */
	exit(M_listMice());
    } /*for*/

  if (opt_repeater) {
    if (0 == strcmp(opt_repeater_type,"raw")) {
      opt_rawrep = 1;
    } else {
      /* look for the type */
      repeated_type = find_mouse_by_name(opt_repeater_type);

      if (!repeated_type) /* not found */
        exit(M_listTypes());

      if (!(repeated_type->repeat_fun)) /* unsupported translation */
        gpm_oops(__FILE__,__LINE__,
                 "Repeating into %s protocol not yet implemented :-(",
                 opt_repeater_type);
    } /*if*/
  } /*if*/

  if (gpm_log_daemon) {         /* itz Wed Aug 12 15:44:37 PDT 1998 */
                                /* now a runtime option */

    /* go to background and become a session leader (Stefan Giessler) */
    switch(fork())
      {
      case -1: oops("fork()");  /* error */
      case  0: break;           /* child */
      default: _exit(0);         /* parent */
      }

    fclose(stdin); fclose(stdout);

/* report should be here and nothing else! */

    if (gpm_log) {
      fclose(stderr);
    } else if (!freopen("/dev/console", "w", stderr)) { 
      // currently current console
      oops("freopen(stderr) failed");
    }

    if (setsid()<0) oops("setsid()");
    if (chdir("/")<0) oops("/");

    /* now sign */
    check_uniqueness();
    gpm_debug_log(LOG_INFO,"Signed");

  } /*if*/

  /*
   * well, I used to create a symlink in the /tmp dir to be compliant with old
   * executables. ===No more with 1.0
   *
   * symlink(GPM_NODE_CTL,"/tmp/gpmctl");
   */

  return mouse_table[1].fd; /* the second is handled in the main() */
}
  


/*
 * Use 4 as indent-level. It used to be 2, but new stuff will be inserted
 * using 4.
 */

/* Local Variables: */
/* c-indent-level: 4 */
/* End: */

