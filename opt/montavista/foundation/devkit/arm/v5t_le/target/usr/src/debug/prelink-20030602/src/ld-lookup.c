/* Copyright (C) 2003 MontaVista Software, Inc.
   Written by Daniel Jacobowitz <drow@mvista.com>, 2003

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#include <config.h>
#include <assert.h>
#include <errno.h>
#include <error.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#include "prelinktab.h"
#include "reloc.h"

#include "ld-libs.h"


#include "ld-do-lookup.h"
#define VERSIONED 1
#include "ld-do-lookup.h"
#undef VERSIONED

static unsigned long
rtld_elf_hash (const char *name)
{
  const unsigned char *str = (const unsigned char *) name;
  unsigned long int hash, hi;
  hash = *str++;
  while (*str != '\0')
    {
      hash = (hash << 4) + *str++;
      hi = hash & 0xf0000000;
      hash ^= hi;
      hash ^= hi >> 24;
    }
  return hash & 0xffffffff;
}

int
_dl_soname_match_p (const char *name, struct link_map *map)
{
  if (strcmp (name, map->l_name) == 0)
    return 1;
  if (strcmp (name, map->l_soname) == 0)
    return 1;
  return 0;
}

#if 0
void
rtld_lookup_symbol (const char *name, const ElfW(Sym) *sym,
		    struct r_scope_elem *scope, int rtypeclass,
		    struct link_map *undef_map, int machine)
{
  int ret;
  struct sym_val result;

  result.s = NULL;
  ret = do_lookup (name, rtld_elf_hash (name), sym,
		   &result, scope, 0, 0, NULL, rtypeclass & ~8);
  if (ret > 0)
    printf ("name %s /%d\n", name, rtypeclass);
#if 0
  printf ("name %s ret %d", name, ret);
  if (result.s)
    printf (" result sym 0x%08x (in %s)", result.s->st_value, result.m->l_name);
  printf ("\n");
#endif
}
#endif

void
rtld_lookup_symbol (const char *name, const ElfW(Sym) *sym,
		    struct r_scope_elem *scope,
		    int rtypeclass,
		    struct link_map *undef_map, int machine)
{
  rtld_lookup_symbol_versioned (name, sym, scope, NULL, rtypeclass, undef_map, machine);
}

void
rtld_lookup_symbol_versioned (const char *name, const ElfW(Sym) *sym,
			      struct r_scope_elem *scope,
			      struct r_found_version *version, int rtypeclass,
			      struct link_map *undef_map, int machine)
{
  int ret;
  int conflict = 0;
  int sym_offset;
  struct sym_val result, result2;
  unsigned int value1, value2;

  result.s = NULL;
  result.m = NULL;
  if (version)
    ret = do_lookup_versioned (name, rtld_elf_hash (name), sym,
			       &result, scope, 0, version, NULL, rtypeclass & ~8,
			       machine);
  else
    ret = do_lookup (name, rtld_elf_hash (name), sym,
		     &result, scope, 0, 0, NULL, rtypeclass & ~8,
		     machine);

  if (result.s == NULL && ELFW(ST_BIND) (sym->st_info) != STB_WEAK)
    printf ("undefined symbol: %s\t(%s)\n", name, undef_map->filename);

  if (ret <= 0)
    return;

  /* Don't do conflict checking for references in the executable.  */
  if (undef_map->l_local_scope != scope)
    {
      result2.s = NULL;
      result2.m = NULL;
      if (version)
	ret = do_lookup_versioned (name, rtld_elf_hash (name), sym,
				   &result2, undef_map->l_local_scope, 0, version,
				   NULL, rtypeclass & ~8, machine);
      else
	ret = do_lookup (name, rtld_elf_hash (name), sym,
			 &result2, undef_map->l_local_scope, 0, 0,
			 NULL, rtypeclass & ~8, machine);

      if (result2.s != result.s
	  || result2.m != result.m)
	conflict = 1;
    }

  /* Print out information for the requested object, all conflicts, and all TLS (eventually) */
  if (!conflict
      && rtypeclass != RTYPE_CLASS_TLS
      && requested_map
      && requested_map != undef_map)
    return;

  /* FIXME: Careful with this if we change the size of symbols when reading in!  */
  sym_offset = ((char *)sym) - ((char *)undef_map->l_info[DT_SYMTAB]);
  sym_offset += undef_map->sym_base;

  value1 = 0;
  if (machine == EM_ARM && result.s
      && ELFW(ST_TYPE) (result.s->st_info) == STT_ARM_TFUNC)
    value1 = 1;

  value2 = 0;
  if (machine == EM_ARM && conflict && result2.s
      && ELFW(ST_TYPE) (result2.s->st_info) == STT_ARM_TFUNC)
    value2 = 1;

  /* FIXME 64? */
  printf ("%s 0x%08x 0x%08x -> 0x%08x 0x%08x ",
	  conflict ? "conflict" : "lookup",
	  undef_map->l_map_start,
	  sym_offset,
	  result.s ? result.m->l_map_start : 0,
	  result.s ? result.s->st_value | value1 : 0);
  if (conflict)
    printf ("x 0x%08x 0x%08x ",
	    result2.s ? result2.m->l_map_start : 0,
	    result2.s ? result2.s->st_value | value2 : 0);
  printf ("/%x %s\n", rtypeclass & ~8, name);
}

