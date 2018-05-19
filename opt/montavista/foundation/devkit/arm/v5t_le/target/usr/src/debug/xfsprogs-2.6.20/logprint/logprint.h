/*
 * Copyright (c) 2000-2001,2004 Silicon Graphics, Inc.  All Rights Reserved.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of version 2 of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it would be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * Further, this software is distributed without any warranty that it is
 * free of the rightful claim of any third person regarding infringement
 * or the like.  Any license provided herein, whether implied or
 * otherwise, applies only to this software file.  Patent licenses, if
 * any, provided herein do not apply to combinations of this program with
 * other software, or any other product whatsoever.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write the Free Software Foundation, Inc., 59
 * Temple Place - Suite 330, Boston MA 02111-1307, USA.
 *
 * Contact information: Silicon Graphics, Inc., 1600 Amphitheatre Pkwy,
 * Mountain View, CA  94043, or:
 *
 * http://www.sgi.com
 *
 * For further information regarding this notice, see:
 *
 * http://oss.sgi.com/projects/GenInfo/SGIGPLNoticeExplan/
 */
#ifndef LOGPRINT_H
#define LOGPRINT_H

#include <xfs/libxlog.h>

/* command line flags */
extern int	print_data;
extern int	print_only_data;
extern int	print_inode;
extern int	print_quota;
extern int	print_buffer;
extern int	print_transactions;
extern int	print_overwrite;
extern int	print_no_data;
extern int	print_no_print;

/* exports */
extern char *trans_type[];

extern void xlog_print_lseek(xlog_t *, int, xfs_daddr_t, int);

extern void xfs_log_copy(xlog_t *, int, char *);
extern void xfs_log_dump(xlog_t *, int, int);
extern void xfs_log_print(xlog_t *, int, int);
extern void xfs_log_print_trans(xlog_t *, int);

extern void print_xlog_record_line(void);
extern void print_xlog_op_line(void);
extern void print_stars(void);

#endif	/* LOGPRINT_H */
