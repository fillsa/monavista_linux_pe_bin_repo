/* Copyright (C) 1991,92,93,1995-2001, 2003 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, write to the Free
   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.  */

#include <errno.h>
#include <limits.h>
#include <stddef.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#include <stdio-common/_itoa.h>

static int getttyname_r (const char *prefix, char *buf, size_t buflen,
			 struct stat64 *mystat, int save,
			 int *dostat) internal_function;

static int
internal_function
getttyname_r (const char *prefix, char *buf, size_t buflen, struct stat64 *mystat,
	      int save, int *dostat)
{
  struct stat64 st;
  DIR *dirstream;
  struct dirent64 *d;
  size_t devlen = strlen (prefix);

  memcpy (buf, prefix, strlen (prefix));
  buflen -= strlen (prefix) - 1;

  dirstream = __opendir (prefix);
  if (dirstream == NULL)
    {
      *dostat = -1;
      return errno;
    }

  while ((d = __readdir64 (dirstream)) != NULL)
    if ((d->d_fileno == mystat->st_ino || *dostat)
	&& strcmp (d->d_name, "stdin")
	&& strcmp (d->d_name, "stdout")
	&& strcmp (d->d_name, "stderr"))
      {
	char *cp;
	size_t needed = _D_EXACT_NAMLEN (d) + 1;

	if (needed > buflen)
	  {
	    *dostat = -1;
	    (void) __closedir (dirstream);
	    __set_errno (ERANGE);
	    return ERANGE;
	  }

	cp = __stpncpy (buf + devlen, d->d_name, needed);
	cp[0] = '\0';

	if (__xstat64 (_STAT_VER, buf, &st) == 0
#ifdef _STATBUF_ST_RDEV
	    && S_ISCHR (st.st_mode) && st.st_rdev == mystat->st_rdev
#else
	    && d->d_fileno == mystat->st_ino && st.st_dev == mystat->st_dev
#endif
	   )
	  {
	    (void) __closedir (dirstream);
	    __set_errno (save);
	    return 0;
	  }
      }

  (void) __closedir (dirstream);
  __set_errno (save);
  /* It is not clear what to return in this case.  `isatty' says FD
     refers to a TTY but no entry in /dev has this inode.  */
  return ENOTTY;
}

/* Store at most BUFLEN character of the pathname of the terminal FD is
   open on in BUF.  Return 0 on success,  otherwise an error number.  */
int
__ttyname_r (int fd, char *buf, size_t buflen)
{
  char procname[30];
  struct stat64 st, st1;
  int dostat = 0;
  int save = errno;
  int ret, i;
  const char *dirs[] = { "/dev/pts/", "/dev/vc/", "/dev/tts/", 0 };

  /* Test for the absolute minimal size.  This makes life easier inside
     the loop.  */
  if (!buf)
    {
      __set_errno (EINVAL);
      return EINVAL;
    }

  if (buflen < sizeof ("/dev/pts/"))
    {
      __set_errno (ERANGE);
      return ERANGE;
    }

  /* We try using the /proc filesystem.  */
  *_fitoa_word (fd, __stpcpy (procname, "/proc/self/fd/"), 10, 0) = '\0';

  ret = __readlink (procname, buf, buflen - 1);
  if (ret == -1 && errno == ENOENT)
    {
      __set_errno (EBADF);
      return EBADF;
    }

  if (!__isatty (fd))
    {
      __set_errno (ENOTTY);
      return ENOTTY;
    }

  if (ret == -1 && errno == ENAMETOOLONG)
    {
      __set_errno (ERANGE);
      return ERANGE;
    }

  if (ret != -1 && buf[0] != '[')
    {
      buf[ret] = '\0';
      return 0;
    }

  if (__fxstat64 (_STAT_VER, fd, &st) < 0)
    return errno;

  ret = ENOTTY;

  for (i = 0; ret && dirs[i]; i++)
    {
      if (__xstat64 (_STAT_VER, dirs[i], &st1) == 0 && S_ISDIR (st1.st_mode))
	ret = getttyname_r (dirs[i], buf, buflen, &st, save, &dostat);
      else
	__set_errno (save);
    }


  if (ret && dostat != -1)
    ret = getttyname_r ("/dev/", buf, buflen, &st, save, &dostat);

  if (ret && dostat != -1)
    {
      dostat = 1;
      ret = getttyname_r ("/dev/", buf, buflen, &st, save, &dostat);
    }

  return ret;
}

weak_alias (__ttyname_r, ttyname_r)
