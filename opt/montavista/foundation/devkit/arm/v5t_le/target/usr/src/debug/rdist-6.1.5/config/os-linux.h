/*
 * Copyright (c) 1992-1998 Michael A. Cooper.
 * This software may be freely used and distributed provided it is not
 * sold for profit or used in part or in whole for commercial gain
 * without prior written agreement, and the author is credited
 * appropriately.
 */

/*
 * $Id: os-linux.h,v 1.7 1998/11/10 03:59:59 mcooper Exp $
 */

/*
 * Linux os-*.h file
 */

/*
 * Define the following name for use in #ifdef's.
 * The value should be all upper-case with no periods (.).
 */
#if	!defined(LINUX)
#define LINUX
#endif

/*
 * Set process args to messages that show up when running ps(1)
 *
 * Under some OS's, the SETARGS code will cause ": is not an identifier"
 * errors for "special" commands.
 */
#define SETARGS

/*
 * Define the type of directory routines your system has.
 */
#define DIR_TYPE	DIR_DIRENT

/*
 * Determine what routines we have to get filesystem info.
 */
#define FSI_TYPE	FSI_GETMNTENT

/*
 * Type of non-blocking I/O.
 */
#define NBIO_TYPE	NBIO_FCNTL

/*
 * Type of wait() function to use.
 */
#define WAIT_TYPE	WAIT_WAITPID

/*
 * Type of argument passed to wait() (above).
 */
#define WAIT_ARG_TYPE	int

/*
 * Select the type of executable file format.
 */
#define EXE_TYPE	EXE_ELF_AND_AOUT

/*
 * Select the type of statfs() system call (if any).
 */
#define STATFS_TYPE	STATFS_BSD

/*
 * Type of arg functions we have.
 */
#define ARG_TYPE	ARG_STDARG

/*
 * Do we have select()?
 */
#define HAVE_SELECT

/*
 * We have POSIX style saved uid's and gid's.
 */
#define HAVE_SAVED_IDS

/*
 * UID argument type for chown()
 */
typedef uid_t CHOWN_UID_T;

/*
 * GID argument type for chown()
 */
typedef gid_t CHOWN_GID_T;

/*
 * Our types, usually these are uid_t and gid_t.
 */
typedef uid_t UID_T;	/* Must be signed */
typedef gid_t GID_T;	/* Must be signed */

/*
 * Generic pointer, used by memcpy, malloc, etc.  Usually char or void.
 */
typedef void POINTER;

/*
 * Type of set file time function available
 */
#define SETFTIME_TYPE	SETFTIME_UTIME

/*
 * Type of set line buffering function available
 */
#define SETBUF_TYPE	SETBUF_SETVBUF

/*
 * Path to the remote shell command.
 * Define this only if the pathname is different than
 * that which appears in "include/paths.h".
 */
#define _PATH_REMSH	"/usr/bin/rsh"			/**/

/*
 * Things we have
 */
#define HAVE_FCHOWN
#define HAVE_FCHMOD
#define HAVE_PATHS_H
#define POSIX_SIGNALS

/*
 * Things we need.
 */
#define NEED_UNISTD_H
#define NEED_UTIME_H
#define NEED_STRING_H
#define NEED_MNTENT_H
