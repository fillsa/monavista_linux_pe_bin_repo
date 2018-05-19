/*
 * Copyright (c) 1992-1998 Michael A. Cooper.
 * This software may be freely used and distributed provided it is not
 * sold for profit or used in part or in whole for commercial gain
 * without prior written agreement, and the author is credited
 * appropriately.
 */

/*
 * $Id: config-data.h,v 6.4 1998/11/10 03:59:47 mcooper Exp $
 * @(#)configdata.h
 */

#ifndef __configdata_h__
#define __configdata_h__

/*
 * Configuration data
 */

/*
 * Define the read and write values for the file descriptor array
 * used by pipe().
 */
#define PIPE_READ		0
#define PIPE_WRITE		1

/*
 * Directory information
 */
#if	DIR_TYPE == DIR_DIRECT
#include 	<sys/dir.h>
typedef 	struct direct		DIRENTRY;
#define 	D_NAMLEN(p)		((p)->d_namlen)
#endif	/* DIR_DIRECT */

#if	DIR_TYPE == DIR_DIRENT
#include 	<dirent.h>
typedef 	struct dirent		DIRENTRY;
#define 	D_NAMLEN(p)		(strlen((p)->d_name))
#endif	/* DIR_DIRENT */

/*
 * Set a default buffering type.
 */
#if	!defined(SETBUF_TYPE)
#define 	SETBUF_TYPE		SETBUF_SETLINEBUF
#endif	/* SETBUF_TYPE */

/*
 * Set a default get socket pair type.
 */
#if	!defined(SOCKPAIR_TYPE)
#define 	SOCKPAIR_TYPE		SOCKPAIR_SOCKETPAIR
#endif	/* SOCKPAIR_TYPE */

/*
 * Set default write(2) return and amount types.
 */
#if	!defined(WRITE_RETURN_T)
#define		WRITE_RETURN_T		int	/* What write() returns */
#endif	/* WRITE_RETURN_T */
#if	!defined(WRITE_AMT_T)
#define		WRITE_AMT_T		int	/* Amount to write */
#endif	/* WRITE_AMT_T */

#endif	/* __configdata_h__ */
