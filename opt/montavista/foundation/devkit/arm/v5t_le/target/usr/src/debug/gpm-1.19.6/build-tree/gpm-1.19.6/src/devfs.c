/*
 * check for devfs
 *
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
 */

#include <stdio.h>      /* NULL */
#include <sys/types.h>  /* these three are */
#include <sys/stat.h>   /* needed for      */
#include <unistd.h>     /* stat() */
#include "headers/general.h"
#include "headers/gpmInt.h"

/* checks for devfs */
int check_devfs( void )
{

  int retval = GPM_IS_NOTHING;
  struct stat buf;

  /* first try the devfs device, because in the next time this will be
   * the preferred one. If that fails, take the old console */
   
  /* Check for open new console */
  if (stat(GPM_DEVFS_CVC,&buf) == 0)
    retval = GPM_IS_DEVFS;
  
  /* Failed, try OLD console */
  else if(stat(GPM_NO_DEVFS_CVC,&buf) == 0)
    retval = GPM_IS_NOT_DEVFS;

  return retval;

}

/* set console/basvc. returns 1 on succes, 0 on failed*/
int set_devfs(int devfs_id, char **console, char **basevc)
{
   int retval = 1;

   switch(devfs_id) {
      case GPM_IS_DEVFS:
         *basevc  = GPM_DEVFS_VC;
         *console = GPM_DEVFS_CVC;
      break;
      case GPM_IS_NOT_DEVFS:
         *basevc  = GPM_NO_DEVFS_VC;
         *console = GPM_NO_DEVFS_CVC;
      break;

      case GPM_IS_NOTHING:
         retval = 0;
      break;
   }   
   return retval;
}

/* static version, when we need to check only one time */
int set_devfs_onet(char **console, char **basevc)
{
   static int retval = 1;
   static int already = 0;
   if(already == 0) { /* first time */
      already = 1;
      retval = set_devfs(check_devfs(), console, basevc);
   }
   return retval;
}   

/* return console or vcname */
char *ret_devfs(int devfs_id, int rettype)
{
   
   char *basevc = NULL, *console = NULL;

   set_devfs(devfs_id,&basevc,&console);

   if(rettype == GPM_TYPE_CON)
      return console;
   else if(rettype == GPM_TYPE_VCN)
      return basevc;
   else return NULL;
}

/* static version, when we need to check only one time */
char *ret_devfs_onet(int rettype)
{
   static char *retval = NULL;
   static int already = 0;
   if(already == 0) { /* first time */
      already = 1;
      retval = ret_devfs(check_devfs(), rettype);
   }
   return retval;
}
