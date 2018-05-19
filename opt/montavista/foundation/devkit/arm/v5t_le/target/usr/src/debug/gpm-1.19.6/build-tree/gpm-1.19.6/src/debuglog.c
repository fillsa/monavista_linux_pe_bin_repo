/* Ian Zimmerman <itz@rahul.net> Wed Jul  1 00:18:49 PDT 1998 */
/* Replace Alessandro's ugggly debuggginggg macros :) */
/* Copyright (C) 1998 */

/* This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.

 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 */

/* itz Wed Jul  1 19:57:26 PDT 1998 */
/* copied from the Autoconf info node.  Eeek! */

/* AIX requires this to be the first thing in the file.  */
#ifdef __GNUC__
# define alloca __builtin_alloca
#else
# if HAVE_ALLOCA_H
#  include <alloca.h>
# else
#  ifdef _AIX
#pragma alloca
#  else
#   ifndef alloca /* predefined by HP cc +Olibcalls */
char *alloca ();
#   endif
#  endif
# endif
#endif

#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include "headers/wd.h"

extern int errno;

#ifndef DEBUG
int 
gpm_debug_level = LOG_NOTICE;
#else
int 
gpm_debug_level = LOG_DEBUG;    /* ie. everything */
#endif

int
gpm_log_daemon = 0;

int
gpm_log = 1;

void
gpm_debug_log(int level, char* fmt, ...)
{
  if (level <= gpm_debug_level) {
    va_list ap;
    va_start(ap, fmt);
#ifdef HAVE_VSYSLOG
    if (gpm_log) {
      vsyslog(level | (gpm_log_daemon ? LOG_DAEMON : LOG_USER), fmt, ap);
    } else
#endif  
    {
      vfprintf(stderr, fmt, ap);
      fputs("\n", stderr);
    }
    va_end(ap);
  } /*if*/
}

void 
gpm_oops(char *f, int n, char *s, ...)
{
  if (LOG_ERR <= gpm_debug_level) {
    int pri;
    va_list ap;

#if(defined(HAVE_VSYSLOG) && defined(HAVE_SYSLOG))
    static char fmt[] = ": %m";
    char* buf = alloca(strlen(s)+sizeof(fmt));
    strcpy(buf, s); strcat(buf, fmt);
#endif

    va_start(ap, s);
#if(defined(HAVE_VSYSLOG) && defined(HAVE_SYSLOG))
    if (gpm_log) {
      pri = LOG_ERR | (gpm_log_daemon ? LOG_DAEMON : LOG_USER);
      syslog(pri, "oops() invoked from %s(%i)",f, n);
      vsyslog(pri, buf, ap);
    } else
#endif /* always print to stderr as well */
    {
      fprintf(stderr,"gpm: oops() invoked from %s(%i)\n",f, n);
      vfprintf(stderr, s, ap);
      fprintf(stderr,": %s\n", strerror(errno));
    }

    va_end(ap);
  } /*if*/

  exit(1);
}


/* Local Variables: */
/* c-indent-level: 2 */
/* End: */




