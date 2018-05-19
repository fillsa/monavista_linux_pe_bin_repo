/* *INDENT-OFF* */ /* THIS FILE IS GENERATED */

/* A register protocol for GDB, the GNU debugger.
   Copyright 2001, 2002 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

/* This file was created with the aid of ``regdat.sh'' and ``../../../gdb/gdbserver/../regformats/reg-arm.dat''.  */

#include "regdef.h"
#include "regcache.h"

struct reg regs_arm[] = {
  { "r0", 0, 32 },
  { "r1", 32, 32 },
  { "r2", 64, 32 },
  { "r3", 96, 32 },
  { "r4", 128, 32 },
  { "r5", 160, 32 },
  { "r6", 192, 32 },
  { "r7", 224, 32 },
  { "r8", 256, 32 },
  { "r9", 288, 32 },
  { "r10", 320, 32 },
  { "r11", 352, 32 },
  { "r12", 384, 32 },
  { "sp", 416, 32 },
  { "lr", 448, 32 },
  { "pc", 480, 32 },
  { "f0", 512, 96 },
  { "f1", 608, 96 },
  { "f2", 704, 96 },
  { "f3", 800, 96 },
  { "f4", 896, 96 },
  { "f5", 992, 96 },
  { "f6", 1088, 96 },
  { "f7", 1184, 96 },
  { "fps", 1280, 32 },
  { "cpsr", 1312, 32 },
  { "wr0", 1344, 64 },
  { "wr1", 1408, 64 },
  { "wr2", 1472, 64 },
  { "wr3", 1536, 64 },
  { "wr4", 1600, 64 },
  { "wr5", 1664, 64 },
  { "wr6", 1728, 64 },
  { "wr7", 1792, 64 },
  { "wr8", 1856, 64 },
  { "wr9", 1920, 64 },
  { "wr10", 1984, 64 },
  { "wr11", 2048, 64 },
  { "wr12", 2112, 64 },
  { "wr13", 2176, 64 },
  { "wr14", 2240, 64 },
  { "wr15", 2304, 64 },
  { "wcid", 2368, 32 },
  { "wcon", 2400, 32 },
  { "wcssf", 2432, 32 },
  { "wcasf", 2464, 32 },
  { "", 2496, 32 },
  { "", 2528, 32 },
  { "", 2560, 32 },
  { "", 2592, 32 },
  { "wcgr0", 2624, 32 },
  { "wcgr1", 2656, 32 },
  { "wcgr2", 2688, 32 },
  { "wcgr3", 2720, 32 },
  { "", 2752, 32 },
  { "", 2784, 32 },
  { "", 2816, 32 },
  { "", 2848, 32 },
};

const char *expedite_regs_arm[] = { "r11", "sp", "pc", 0 };
const char *last_g_reg_arm = "cpsr";

void
init_registers ()
{
    set_register_cache (regs_arm, last_g_reg_arm,
			sizeof (regs_arm) / sizeof (regs_arm[0]));
    gdbserver_expedite_regs = expedite_regs_arm;
}
