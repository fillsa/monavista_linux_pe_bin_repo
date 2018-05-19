/*
 * Copyright (c) 1992-1998 Michael A. Cooper.
 * This software may be freely used and distributed provided it is not
 * sold for profit or used in part or in whole for commercial gain
 * without prior written agreement, and the author is credited
 * appropriately.
 */

/*
 * $Id: filesys.h,v 6.20 1998/11/10 04:02:47 mcooper Exp $
 * @(#)filesys.h
 */

#ifndef __filesys_h__
#define __filesys_h__

/*
 * File System information
 */

/*
 * Mount information
 */
#if FSI_TYPE == FSI_GETMNT
#	include <sys/types.h>
#	include <sys/param.h>
#	include <sys/mount.h>
#	define MOUNTED_FILE		"<none>"
#endif

#if FSI_TYPE == FSI_GETFSSTAT
#	include <sys/types.h>
#	include <sys/mount.h>
#	define MOUNTED_FILE		"<none>"
#endif

#if FSI_TYPE == FSI_MNTCTL
#	include <sys/mntctl.h>
#	define MOUNTED_FILE		"<none>"
#endif

#if FSI_TYPE == FSI_GETMNTENT
#	include <mntent.h>
#	define	MOUNTED_FILE		MOUNTED
#endif

#if FSI_TYPE == FSI_GETMNTENT2
#if     defined(MNTTAB_H)
#       include MNTTAB_H
#endif	/* MNTTAB_H */
#if     defined(MNTENT_H)
#       include MNTENT_H
#endif	/* MNTENT_H */
#	define	MOUNTED_FILE		MNTTAB
#endif	/* FSI_GETMNTENT2 */

#if	!defined(MOUNTED_FILE) && defined(MNT_MNTTAB)	/* HPUX */
#	define MOUNTED_FILE		MNT_MNTTAB
#endif	/* MNT_MNTTAB */

/*
 * NCR OS defines bcopy and bzero
 */
#if defined(NCR)
#undef bcopy
#undef bzero
#endif	/* NCR */

/*
 * Stat Filesystem
 */
#if 	defined(STATFS_TYPE)
#if defined(ultrix)
	typedef struct fs_data		statfs_t;
#	define f_bavail			fd_req.bfreen
#	define f_bsize			fd_req.bsize
#	define f_ffree			fd_req.gfree
#else
#if defined(_AIX) || STATFS_TYPE == STATFS_SYSV
#	include <sys/statfs.h>
	typedef struct statfs		statfs_t;
#	define f_bavail			f_bfree
#else
#if defined(SVR4)
#	include <sys/statvfs.h>
	typedef struct statvfs		statfs_t;
#	define statfs(mp,sb)		statvfs(mp,sb)
#else
#if defined(BSD386) || defined(__bsdi__) || defined(FREEBSD) || STATFS_TYPE == STATFS_OSF1
	typedef struct statfs		statfs_t;
#else
#	include <sys/vfs.h>
	typedef struct statfs 		statfs_t;
#endif	/* BSD386 */
#endif	/* SVR4 */
#endif	/* _AIX */
#endif	/* ultrix */
#endif	/* STATFS_TYPE */

/*
 * Mount Entry definetions
 */
#ifndef METYPE_OTHER
#define METYPE_OTHER			"other"
#endif
#ifndef METYPE_NFS
#define METYPE_NFS			"nfs"
#endif
#ifndef MEFLAG_READONLY
#define MEFLAG_READONLY			0x01
#endif
#ifndef MEFLAG_IGNORE
#define MEFLAG_IGNORE			0x02
#endif

/*
 * Our internal mount entry type
 */
struct _mntent {
	char			       *me_path;	/* Mounted path */
	char			       *me_type;	/* Type of mount */
	int				me_flags;	/* Mount flags */
};
typedef struct _mntent mntent_t;

/*
 * Internal mount information type
 */
struct mntinfo {
	mntent_t			*mi_mnt;
	struct stat			*mi_statb;
	struct mntinfo			*mi_nxt;
};

/*
 * Declarations
 */
FILE	       *setmountent();
mntent_t       *getmountent();
mntent_t       *newmountent();
void		endmountent();

#endif	/* __filesys_h__ */
