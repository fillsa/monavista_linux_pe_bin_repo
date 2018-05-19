/******************************************************************************
 *
 * $Id: debug.h,v 1.6 2001/03/19 19:27:40 root Exp $
 *
 *
 * Copyright (C) 1997-2004 by Dimitri van Heesch.
 *
 * Permission to use, copy, modify, and distribute this software and its
 * documentation under the terms of the GNU General Public License is hereby 
 * granted. No representations are made about the suitability of this software 
 * for any purpose. It is provided "as is" without express or implied warranty.
 * See the GNU General Public License for more details.
 *
 * Documents produced by Doxygen are derivative works derived from the
 * input used in their production; they are not affected by this license.
 *
 */

#ifndef _DEBUG_H
#define _DEBUG_H

class Debug
{
  public:
    enum DebugMask { Quiet        = 0x00000000,
                     FindMembers  = 0x00000001, 
                     Functions    = 0x00000002, 
                     Variables    = 0x00000004,
                     Preprocessor = 0x00000008,
                     Classes      = 0x00000010,
                     CommentCnv   = 0x00000020,
                     Validate     = 0x00000040,
                     PrintTree    = 0x00000080,
                     Time         = 0x00000100
                   };
    static void print(DebugMask mask,int prio,const char *fmt,...);
    static void setFlag(const char *label);
    static void clearFlag(const char *label);
    static bool isFlagSet(DebugMask mask);
    static void setPriority(int p);
    
  private:
    static DebugMask curMask;
    static int curPrio;
};

#endif
