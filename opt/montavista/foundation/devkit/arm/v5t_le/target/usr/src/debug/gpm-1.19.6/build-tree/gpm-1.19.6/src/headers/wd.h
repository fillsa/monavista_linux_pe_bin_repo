/*
 * wd.h - some stupid things to enable messages
 *
 * Copyright 1994   DIS - Universita` di Pavia - Italy
 * Copyright (C) 1998 Ian Zimmerman <itz@rahul.net>
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

#ifndef _WD_H_
#define _WD_H_

#ifdef HAVE_SYSLOG_H
#include <syslog.h>
#else
#define LOG_EMERG 0
#define LOG_ALERT 1
#define LOG_CRIT 2
#define LOG_ERR 3
#define LOG_WARNING 4
#define LOG_NOTICE 5
#define LOG_INFO 6
#define LOG_DEBUG 7
#endif

extern int 
gpm_debug_level;

extern int 
gpm_log_daemon;

extern int
gpm_log;

extern void
gpm_debug_log(int level, char* fmt, ...);

extern void 
gpm_oops(char *f, int n, char *s, ...);

#endif /* _WD_H_ */
