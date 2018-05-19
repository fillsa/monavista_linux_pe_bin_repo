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
#include <ctype.h>
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

int
reloc_type_class (int type, int machine)
{
  switch (machine)
    {
    case EM_386:
      switch (type)
	{
	case R_386_COPY: return RTYPE_CLASS_COPY;
	case R_386_JMP_SLOT: return RTYPE_CLASS_PLT;
	case R_386_TLS_DTPMOD32:
	case R_386_TLS_DTPOFF32:
	case R_386_TLS_TPOFF32:
	case R_386_TLS_TPOFF:
	  return RTYPE_CLASS_TLS;
	default: return RTYPE_CLASS_VALID;
	}

    case EM_ARM:
      switch (type)
	{
	case R_ARM_COPY: return RTYPE_CLASS_COPY;
	case R_ARM_JUMP_SLOT: return RTYPE_CLASS_PLT;
	default: return RTYPE_CLASS_VALID;
	}

    case EM_SH:
      switch (type)
	{
	case R_SH_COPY: return RTYPE_CLASS_COPY;
	case R_SH_JMP_SLOT: return RTYPE_CLASS_PLT;
	default: return RTYPE_CLASS_VALID;
	}

    case EM_PPC:
      switch (type)
	{
	case R_PPC_COPY: return RTYPE_CLASS_COPY;
	case R_PPC_JMP_SLOT: return RTYPE_CLASS_PLT;
	default: return RTYPE_CLASS_VALID;
	}

    default:
      printf ("Unknown architecture!\n");
      exit (1);
      return 0;
    }
}

int
is_ldso_soname (const char *soname)
{
  if (! strcmp (soname, "ld-linux.so.2")
      || ! strcmp (soname, "ld.so.1")    
      || ! strcmp (soname, "ld-linux-ia64.so.2")
      || ! strcmp (soname, "ld-linux-x86-64.so.2")
      || ! strcmp (soname, "ld64.so.1"))
    return 1;
  return 0;
}


struct needed_list
{
  struct dso_list *ent;
  struct needed_list *next;
};

struct dso_list
{
  DSO *dso;
  struct link_map *map;
  struct dso_list *next, *prev;
  struct needed_list *needed, *needed_tail;
  const char *name;
  struct dso_list *loader;
  const char *canon_filename;
};

static int dso_open_error = 0;

static void
free_needed (struct needed_list *p)
{
  struct needed_list *old_p = p;
  while (old_p)
    {
      old_p = p->next;
      free (p);
      p = old_p;
    }
}

static struct dso_list *
in_dso_list (struct dso_list *dso_list, const char *soname, const char *filename)
{
  while (dso_list != NULL)
    {
      if (dso_list->dso != NULL)
	{
	  if (strcmp (dso_list->dso->soname, soname) == 0)
	    return dso_list;
	}

      if (strcmp (dso_list->name, soname) == 0)
	    return dso_list;

      if (filename
	  && strcmp (dso_list->canon_filename, filename) == 0)
	    return dso_list;

      dso_list = dso_list->next;
    }
  return NULL;
}

static int
in_needed_list (struct needed_list *needed_list, const char *soname)
{
  while (needed_list != NULL)
    {
      if (strcmp (needed_list->ent->dso->soname, soname) == 0)
	return 1;
      needed_list = needed_list->next;
    }
  return 0;
}


/****/

struct search_path 
{
  int maxlen, count, allocated;
  char **dirs;
};

struct search_path ld_dirs, ld_library_search_path;

void
add_dir (struct search_path *path, const char *dir, int dirlen)
{
  if (path->allocated == 0)
    {
      path->allocated = 5;
      path->dirs = malloc (sizeof (char *) * 5);
    }
  else if (path->count == path->allocated)
    {
      path->allocated *= 2;
      path->dirs = realloc (path->dirs, sizeof (char *) * path->allocated);
    }
  path->dirs[path->count] = malloc (dirlen + 1);
  memcpy (path->dirs[path->count], dir, dirlen);
  path->dirs[path->count++][dirlen] = 0;

  if (path->maxlen < dirlen)
    path->maxlen = dirlen;
}

void
free_path (struct search_path *path)
{
  if (path->allocated)
    {
      int i;
      for (i = 0; i < path->count; i++)
	free (path->dirs[i]);
      free (path->dirs);
    }
}

void
load_ld_so_conf (void)
{
  int fd;
  FILE *conf;
  char buf[1024];

  memset (&ld_dirs, 0, sizeof (ld_dirs));

  add_dir (&ld_dirs, "/lib", strlen ("/lib"));
  add_dir (&ld_dirs, "/usr/lib", strlen ("/usr/lib"));

  fd = wrap_open ("/etc/ld.so.conf", O_RDONLY);
  if (fd == -1)
    return;
  conf = fdopen (fd, "r");
  while (fgets (buf, 1024, conf) != NULL)
    {
      int len;
      char *p;

      p = strchr (buf, '#');
      if (p)
	*p = 0;
      len = strlen (buf);
      while (isspace (buf[len - 1]))
	buf[--len] = 0;

      add_dir (&ld_dirs, buf, len);
    }
  fclose (conf);
}

void
string_to_path (struct search_path *path, const char *string)
{
  const char *start, *end, *end_tmp;

  start = string;
  while (1) {
    end = start;
    while (*end && *end != ':' && *end != ';')
      end ++;

    /* Eliminate any trailing '/' characters, but be sure to leave a
       leading slash if someeone wants / in their RPATH.  */
    end_tmp = end;
    while (end_tmp > start + 1 && end_tmp[-1] == '/')
      end_tmp --;

    add_dir (path, start, end_tmp - start);

    if (*end == 0)
      break;

    /* Skip the separator.  */
    start = end + 1;
  }
}

char *
find_lib_in_path (struct search_path *path, const char *soname)
{
  char *ret;
  int i;

  ret = malloc (strlen (soname) + 2 + path->maxlen);

  for (i = 0; i < path->count; i++)
    {
      sprintf (ret, "%s/%s", path->dirs[i], soname);
      if (wrap_access (ret, F_OK) == 0)
	return ret;
    }

  free (ret);
  return NULL;
}

char *
find_lib_by_soname (const char *soname, struct dso_list *loader)
{
  char *ret;

  if (strchr (soname, '/'))
    return strdup (soname);

  if (loader->dso->info[DT_RUNPATH] == 0)
    {
      /* Search DT_RPATH all the way up.  */
      struct dso_list *loader_p = loader;
      while (loader_p)
	{
	  if (loader_p->dso->info[DT_RPATH])
	    {
	      struct search_path r_path;
	      const char *rpath = get_data (loader_p->dso,
					    loader_p->dso->info[DT_STRTAB]
					    + loader_p->dso->info[DT_RPATH],
					    NULL);
	      memset (&r_path, 0, sizeof (r_path));
	      string_to_path (&r_path, rpath);
	      ret = find_lib_in_path (&r_path, soname);
	      free_path (&r_path);
	      if (ret)
		return ret;
	    }
	  loader_p = loader_p->loader;
	}
    }

  ret = find_lib_in_path (&ld_library_search_path, soname);
  if (ret)
    return ret;

  if (loader->dso->info[DT_RUNPATH])
    {
      struct search_path r_path;
      const char *rpath = get_data (loader->dso,
				    loader->dso->info[DT_STRTAB]
				    + loader->dso->info[DT_RUNPATH],
				    NULL);
      memset (&r_path, 0, sizeof (r_path));
      string_to_path (&r_path, rpath);
      ret = find_lib_in_path (&r_path, soname);
      free_path (&r_path);
      if (ret)
	return ret;
    }

  ret = find_lib_in_path (&ld_dirs, soname);
  if (ret)
    return ret;

  return NULL;
}

static struct dso_list *
load_dsos (DSO *dso)
{
  struct dso_list *dso_list, *dso_list_tail, *cur_dso_ent, *new_dso_ent;

  dso_list = malloc (sizeof (struct dso_list));
  dso_list->dso = dso;
  dso_list->next = NULL;
  dso_list->prev = NULL;
  dso_list->needed = NULL;
  dso_list->name = dso->filename;
  dso_list->loader = NULL;
  dso_list->canon_filename = dso->filename;

  cur_dso_ent = dso_list_tail = dso_list;

  while (cur_dso_ent != NULL)
    {
      DSO *cur_dso, *new_dso;
      Elf_Scn *scn;
      Elf_Data *data;
      GElf_Dyn dyn;

      cur_dso = cur_dso_ent->dso;
      if (cur_dso == NULL)
	{
	  cur_dso_ent = cur_dso_ent->next;
	  continue;
	}

      scn = cur_dso->scn[cur_dso->dynamic];
      data = NULL;
      while ((data = elf_getdata (scn, data)) != NULL)
	{
	  int ndx, maxndx;
	  maxndx = data->d_size / cur_dso->shdr[cur_dso->dynamic].sh_entsize;
	  for (ndx = 0; ndx < maxndx; ++ndx)
	    {
	      gelfx_getdyn (cur_dso->elf, data, ndx, &dyn);
	      if (dyn.d_tag == DT_NULL)
		break;
	      if (dyn.d_tag == DT_NEEDED)
		{
		  char *new_name, *new_canon_name;
		  const char *soname = get_data (cur_dso,
						 cur_dso->info[DT_STRTAB]
						 + dyn.d_un.d_val,
						 NULL);
		  new_dso_ent = in_dso_list (dso_list, soname, NULL);
		  if (new_dso_ent == NULL)
		    {
		      new_name = find_lib_by_soname (soname, cur_dso_ent);
		      if (new_name == 0)
			{
			  dso_open_error ++;

			  new_dso_ent = malloc (sizeof (struct dso_list));
			  dso_list_tail->next = new_dso_ent;
			  dso_list_tail->next->prev = dso_list_tail;
			  dso_list_tail = dso_list_tail->next;
			  dso_list_tail->next = NULL;
			  dso_list_tail->dso = NULL;
			  dso_list_tail->needed = NULL;
			  dso_list_tail->name = soname;
			  dso_list_tail->loader = NULL;
			  dso_list_tail->canon_filename = soname;

			  continue;
			}

		      /* See if the filename we found has already been
			 opened (possibly under a different SONAME via
			 some symlink). */
		      new_canon_name = wrap_canonicalize_file_name (new_name);
		      if (new_canon_name == NULL)
			new_canon_name = strdup (new_name);
		      new_dso_ent = in_dso_list (dso_list, soname, new_canon_name);
		    }

		  if (new_dso_ent == NULL)
		    {
		      new_dso = open_dso (new_name);
		      free (new_name);
		      new_dso_ent = malloc (sizeof (struct dso_list));
		      dso_list_tail->next = new_dso_ent;
		      dso_list_tail->next->prev = dso_list_tail;
		      dso_list_tail = dso_list_tail->next;
		      dso_list_tail->next = NULL;
		      dso_list_tail->dso = new_dso;
		      dso_list_tail->needed = NULL;
		      dso_list_tail->loader = cur_dso_ent;
		      dso_list_tail->canon_filename = new_canon_name;

		      if (is_ldso_soname (new_dso->soname))
			dso_list_tail->name = new_dso->filename;
		      else if (strcmp (dso->soname, dso->filename) == 0)
			/* new_dso->soname might be a full path if the library
			   had no SONAME.  Use the original SONAME instead.  */
			dso_list_tail->name = soname;
		      else
			/* Use the new SONAME if possible, in case some library
			   links to this one using an incorrect SONAME.  */
			dso_list_tail->name = new_dso->soname;
		    }

		  if (!cur_dso_ent->needed)
		    {
		      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
		      cur_dso_ent->needed_tail = cur_dso_ent->needed;
		      cur_dso_ent->needed_tail->ent = new_dso_ent;
		      cur_dso_ent->needed_tail->next = NULL;
		    }
		  else if (!in_needed_list (cur_dso_ent->needed, soname))
		    {
		      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
		      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
		      cur_dso_ent->needed_tail->ent = new_dso_ent;
		      cur_dso_ent->needed_tail->next = NULL;
		    }

		  continue;
		}
	      if (dyn.d_tag == DT_FILTER || dyn.d_tag == DT_AUXILIARY)
		{
		  // big fat warning;
		}
	    }
	}
      cur_dso_ent = cur_dso_ent->next;
    }
  return dso_list;
}

static void
get_version_info (DSO *dso, struct link_map *map)
{
  int i;
  Elf_Data *data;
  int ndx_high;
  const char *strtab = map->l_info[DT_STRTAB];

  ElfW(Verneed) *verneed;
  ElfW(Verdef) *verdef;

  map->l_versyms = NULL;

  if (dso->info_set_mask & (1ULL << DT_VERNEED_BIT))
    {
      i = addr_to_sec (dso, dso->info_DT_VERNEED);
      data = elf_getdata (dso->scn[i], NULL);
      verneed = data->d_buf;
    }
  else
    verneed = NULL;

  if (dso->info_set_mask & (1ULL << DT_VERDEF_BIT))
    {
      i = addr_to_sec (dso, dso->info_DT_VERDEF);
      data = elf_getdata (dso->scn[i], NULL);
      verdef = data->d_buf;
    }
  else
    verdef = NULL;

  ndx_high = 0;
  if (verneed)
    {
      ElfW(Verneed) *ent = verneed;
      ElfW(Vernaux) *aux;
      while (1)
	{
	  aux = (ElfW(Vernaux) *) ((char *) ent + ent->vn_aux);
	  while (1)
	    {
	      if ((unsigned int) (aux->vna_other & 0x7fff) > ndx_high)
		ndx_high = aux->vna_other & 0x7fff;

	      if (aux->vna_next == 0)
		break;
	      aux = (ElfW(Vernaux) *) ((char *) aux + aux->vna_next);
	    }

	  if (ent->vn_next == 0)
	    break;
	  ent = (ElfW(Verneed) *) ((char *) ent + ent->vn_next);
	}
    }

  if (verdef)
    {
      ElfW(Verdef) *ent = verdef;
      while (1)
	{
	  if ((unsigned int) (ent->vd_ndx & 0x7fff) > ndx_high)
	    ndx_high = ent->vd_ndx & 0x7fff;

	  if (ent->vd_next == 0)
	    break;
	  ent = (ElfW(Verdef) *) ((char *) ent + ent->vd_next);
	}
    }

  if (ndx_high)
    {
      map->l_versions = (struct r_found_version *)
	calloc (ndx_high + 1, sizeof (struct r_found_version));
      map->l_nversions = ndx_high + 1;

      i = addr_to_sec (dso, dso->info_DT_VERSYM);
      data = elf_getdata (dso->scn[i], NULL);
      map->l_versyms = data->d_buf;

      if (verneed)
	{
	  ElfW(Verneed) *ent = verneed;

	  while (1)
	    {
	      ElfW(Vernaux) *aux;
	      aux = (ElfW(Vernaux) *) ((char *) ent + ent->vn_aux);
	      while (1)
		{
                  ElfW(Half) ndx = aux->vna_other & 0x7fff;
                  map->l_versions[ndx].hash = aux->vna_hash;
                  map->l_versions[ndx].hidden = aux->vna_other & 0x8000;
                  map->l_versions[ndx].name = &strtab[aux->vna_name];
                  map->l_versions[ndx].filename = &strtab[ent->vn_file];
		  
		  if (aux->vna_next == 0)
		    break;
		  aux = (ElfW(Vernaux) *) ((char *) aux + aux->vna_next);
		}

	      if (ent->vn_next == 0)
		break;
	      ent = (ElfW(Verneed) *) ((char *) ent + ent->vn_next);
	    }
	}

      if (verdef)
	{
	  ElfW(Verdef) *ent = verdef;
	  ElfW(Verdaux) *aux;
	  while (1)
	    {
	      aux = (ElfW(Verdaux) *) ((char *) ent + ent->vd_aux);

	      if ((ent->vd_flags & VER_FLG_BASE) == 0)
		{
		  /* The name of the base version should not be
		     available for matching a versioned symbol.  */
		  ElfW(Half) ndx = ent->vd_ndx & 0x7fff;
		  map->l_versions[ndx].hash = ent->vd_hash;
		  map->l_versions[ndx].name = &strtab[aux->vda_name];
		  map->l_versions[ndx].filename = NULL;
		}

	      if (ent->vd_next == 0)
		break;
	      ent = (ElfW(Verdef) *) ((char *) ent + ent->vd_next);
	    }
	}
    }
}

const char *rtld_progname;

static unsigned int load_addr = 0xdead0000;

static void
create_link_map (struct dso_list *cur_dso_ent)
{
  struct link_map *map = malloc (sizeof (struct link_map));
  DSO *dso = cur_dso_ent->dso;
  int i;
  Elf_Data *data;
  Elf_Symndx *hash;

  cur_dso_ent->map = map;

  if (is_ldso_soname (cur_dso_ent->dso->soname))
    {
      map->l_name = dso->filename;
      rtld_progname = dso->filename;
    }
  else
    map->l_name = dso->soname;
  map->l_soname = dso->soname;
  map->filename = dso->filename;

  if (dso->ehdr.e_type == ET_EXEC)
    map->l_type = lt_executable;
  else
    map->l_type = lt_library;

  /* FIXME: gelfify, endianness issues */
  /* and leaks? */
  i = addr_to_sec (dso, dso->info[DT_SYMTAB]);
  data = elf_getdata (dso->scn[i], NULL);
  map->l_info[DT_SYMTAB] = data->d_buf;

  i = addr_to_sec (dso, dso->info[DT_STRTAB]);
  data = elf_getdata (dso->scn[i], NULL);
  map->l_info[DT_STRTAB] = data->d_buf;

  i = addr_to_sec (dso, dso->info[DT_HASH]);
  data = elf_getdata (dso->scn[i], NULL);
  hash = data->d_buf;
  map->l_nbuckets = *hash;
  map->l_buckets = hash + 2;
  map->l_chain = hash + 2 + map->l_nbuckets;

  get_version_info (dso, map);

  map->l_map_start = load_addr;
  load_addr += 0x1000;

  map->sym_base = dso->info[DT_SYMTAB] - dso->base;
}

struct 
{
  ElfW(Sym) *symptr;
  int rtypeclass;
} cache;

void
do_rel_section (DSO *dso, struct link_map *map, 
		struct r_scope_elem *scope,
		int tag, int section)
{
  Elf_Data *data;
  int ndx, maxndx, sym, type;
  struct r_found_version *ver;
  int rtypeclass;
  ElfW(Sym) *symptr;
  const char *name;

  data = elf_getdata (dso->scn[section], NULL);
  maxndx = data->d_size / dso->shdr[section].sh_entsize;
  for (ndx = 0; ndx < maxndx; ndx++)
    {
      if (tag == DT_REL)
	{
	  GElf_Rel rel;
	  gelfx_getrel (dso->elf, data, ndx, &rel);
	  sym = GELF_R_SYM (rel.r_info);
	  type = GELF_R_TYPE (rel.r_info);
	}
      else
	{
	  GElf_Rela rela;
	  gelfx_getrela (dso->elf, data, ndx, &rela);
	  sym = GELF_R_SYM (rela.r_info);
	  type = GELF_R_TYPE (rela.r_info);
	}
      if (sym == 0)
	continue;
      if (map->l_versyms)
	{
	  int vernum = map->l_versyms[sym] & 0x7fff;
	  ver = &map->l_versions[vernum];
	}
      else
	ver = NULL;

      rtypeclass = reloc_type_class (type, dso->ehdr.e_machine);

      symptr = &((ElfW(Sym *))map->l_info[DT_SYMTAB])[sym];

      if (ELFW(ST_BIND) (symptr->st_info) == STB_LOCAL)
	continue;
      if (cache.symptr == symptr && cache.rtypeclass == rtypeclass)
	continue;
      cache.symptr = symptr;
      cache.rtypeclass = rtypeclass;

      name = ((const char *)map->l_info[DT_STRTAB]) + symptr->st_name;
      if (ver && ver->hash)
	rtld_lookup_symbol_versioned (name, symptr, scope, ver, rtypeclass, map,
				      dso->ehdr.e_machine);
      else
	rtld_lookup_symbol (name, symptr, scope, rtypeclass, map, dso->ehdr.e_machine);
    }
}

void
do_relocs (DSO *dso, struct link_map *map, struct r_scope_elem *scope, int tag)
{
  GElf_Addr rel_start, rel_end;
  GElf_Addr pltrel_start, pltrel_end;
  int first, last;

  /* Load the DT_REL or DT_RELA section.  */
  if (dso->info[tag] != 0)
    {
      rel_start = dso->info[tag];
      rel_end = rel_start + dso->info[tag == DT_REL ? DT_RELSZ : DT_RELASZ];
      first = addr_to_sec (dso, rel_start);
      last = addr_to_sec (dso, rel_end - 1);
      while (first <= last)
	do_rel_section (dso, map, scope, tag, first++);

      /* If the DT_JMPREL relocs are of the same type and not included,
	 load them too.  Assume they overlap completely or not at all,
	 and are in at most a single section.  They also need to be adjacent.  */
      if (dso->info[DT_PLTREL] == tag)
	{
	  pltrel_start = dso->info[DT_JMPREL];
	  pltrel_end = pltrel_start + dso->info[DT_PLTRELSZ];
	  if (pltrel_start < rel_start || pltrel_start >= rel_end)
	    do_rel_section (dso, map, scope, tag, addr_to_sec (dso, pltrel_start));
	}
    }
  else if (dso->info[DT_PLTREL] == tag)
    do_rel_section (dso, map, scope, tag, addr_to_sec (dso, dso->info[DT_JMPREL]));
}

void
handle_relocs (DSO *dso, struct dso_list *dso_list)
{
  struct dso_list *ldso, *tail;

  /* do them all last to first.
     skip the dynamic linker; then do it last
     in glibc this is conditional on the opencount; but every binary
     should be linked to libc and thereby have an opencount for ld.so...
     besides, that's the only way it would get on our dso list.  */

  tail = dso_list;
  while (tail->next)
    tail = tail->next;

  ldso = NULL;
  while (tail)
    {
      if (is_ldso_soname (tail->dso->soname))
	ldso = tail;
      else
	{
	  /* Load the symbols and relocations.  */
	  do_relocs (tail->dso, tail->map, dso_list->map->l_local_scope, DT_REL);
	  do_relocs (tail->dso, tail->map, dso_list->map->l_local_scope, DT_RELA);
	}
      tail = tail->prev;
    }

  if (ldso)
    {
      do_relocs (ldso->dso, ldso->map, dso_list->map->l_local_scope, DT_REL);
      do_relocs (ldso->dso, ldso->map, dso_list->map->l_local_scope, DT_RELA);
    }
}

void
add_to_scope (struct r_scope_elem *scope, struct dso_list *ent)
{
  struct needed_list *n;
  int i;

  for (i = 0; i < scope->r_nlist; i++)
    if (scope->r_list[i] == ent->map)
      return;

  scope->r_list[scope->r_nlist++] = ent->map;
  n = ent->needed;
  while (n)
    {
      add_to_scope (scope, n->ent);
      n = n->next;
    }
}

void
build_local_scope (struct dso_list *ent, int max)
{
  ent->map->l_local_scope = malloc (sizeof (struct r_scope_elem));
  ent->map->l_local_scope->r_list = malloc (sizeof (struct link_map *) * max);
  ent->map->l_local_scope->r_nlist = 0;
  add_to_scope (ent->map->l_local_scope, ent);
}

struct link_map *requested_map;

static void process_one_dso (DSO *dso, int host_paths);

int
main(int argc, char **argv)
{
  int host_paths = 1;
  int multiple = 0;

  sysroot = getenv ("PRELINK_SYSROOT");
#ifdef DEFAULT_SYSROOT
  if (sysroot == NULL)
    { 
      extern char *make_relative_prefix (const char *, const char *, const char *);
      sysroot = make_relative_prefix (argv[0], BINDIR, DEFAULT_SYSROOT);
    }
#endif

  if (sysroot)
    sysroot = canonicalize_file_name (sysroot);

  load_ld_so_conf ();

  elf_version (EV_CURRENT);

  while (1)
    {
      if (argc > 2 && strcmp (argv[1], "--library-path") == 0)
	{
	  string_to_path (&ld_library_search_path, argv[2]);
	  argc -= 2;
	  argv += 2;
	}
      else if (argc > 1 && strcmp (argv[1], "--target-paths") == 0)
	{
	  host_paths = 0;
	  argc -= 1;
	  argv += 1;
	}
      else
	break;
    }

  if (argc < 2)
    error (1, 0, "No filename given.");

  if (argc > 2)
    multiple = 1;

  while (argc > 1)
    {
      DSO *dso = NULL;
      int i, fd;

      if (host_paths)
	fd = open (argv[1], O_RDONLY);
      else
	fd = wrap_open (argv[1], O_RDONLY);

      if (fd >= 0)
	dso = fdopen_dso (fd, argv[1]);

      if (dso == NULL)
	error (1, errno, "Could not open %s", argv[1]);

      if (multiple)
	printf ("%s:\n", argv[1]);

      for (i = 0; i < dso->ehdr.e_phnum; ++i)
	if (dso->phdr[i].p_type == PT_INTERP)
	  break;

      /* If there are no PT_INTERP segments, it is statically linked.  */
      if (dso->ehdr.e_type == ET_EXEC && i == dso->ehdr.e_phnum)
	printf ("\tnot a dynamic executable\n");
      else
	process_one_dso (dso, host_paths);

      argc -= 1;
      argv += 1;
    }

  return 0;
}

static void
process_one_dso (DSO *dso, int host_paths)
{
  struct dso_list *dso_list, *cur_dso_ent, *old_dso_ent;
  const char *req = getenv ("RTLD_TRACE_PRELINKING");
  int i, flag;
  int process_relocs = 0;

  /* Close enough.  Really it's if LD_WARN is "" and RTLD_TRACE_PRELINKING.  */
  if (getenv ("LD_WARN") == 0 && req != NULL)
    process_relocs = 1;

  dso_list = load_dsos (dso);

  cur_dso_ent = dso_list;
  i = 0;
  while (cur_dso_ent)
    {
      if (cur_dso_ent->dso)
	{
	  create_link_map (cur_dso_ent);
	  if (req && strcmp (req, cur_dso_ent->dso->filename) == 0)
	    requested_map = cur_dso_ent->map;
	  i++;
	}
      cur_dso_ent = cur_dso_ent->next;
    }
  dso_list->map->l_local_scope = malloc (sizeof (struct r_scope_elem));
  dso_list->map->l_local_scope->r_list = malloc (sizeof (struct link_map *) * i);
  dso_list->map->l_local_scope->r_nlist = i;
  cur_dso_ent = dso_list;
  i = 0;
  while (cur_dso_ent)
    {
      if (cur_dso_ent->dso)
	{
	  dso_list->map->l_local_scope->r_list[i] = cur_dso_ent->map;
	  if (cur_dso_ent != dso_list)
	    build_local_scope (cur_dso_ent, dso_list->map->l_local_scope->r_nlist);

	  i++;
	}
      cur_dso_ent = cur_dso_ent->next;
    }

  cur_dso_ent = dso_list;
  flag = 0;
  /* In ldd mode, do not show the application. Note that we do show it
     in list-loaded-objects RTLD_TRACE_PRELINK mode.  */
  if (req == NULL && cur_dso_ent)
    cur_dso_ent = cur_dso_ent->next;
  while (cur_dso_ent)
    {
      char *filename;

      if (host_paths && sysroot && cur_dso_ent->dso)
	{
	  const char *rooted_filename;

	  if (cur_dso_ent->dso->filename[0] == '/')
	    rooted_filename = cur_dso_ent->dso->filename;
	  else
	    rooted_filename = wrap_canonicalize_file_name (cur_dso_ent->dso->filename);

	  filename = malloc (strlen (rooted_filename) + strlen (sysroot) + 1);
	  strcpy (filename, sysroot);
	  strcat (filename, rooted_filename);
	}
      else if (cur_dso_ent->dso)
	filename = strdup (cur_dso_ent->dso->filename);
      else
	filename = NULL;

      /* The difference between the two numbers must be dso->base,
         and the first number must be unique.  */
      /* FIXME 64 on the cast to uint32_t.  */
      if (cur_dso_ent->dso == NULL)
	printf ("\t%s => not found\n", cur_dso_ent->name);
      else if (process_relocs)
	printf ("\t%s => %s (0x%08x, 0x%08x)\n", 
		cur_dso_ent->name, filename,
		cur_dso_ent->map->l_map_start,
		(uint32_t) (cur_dso_ent->map->l_map_start - cur_dso_ent->dso->base));
      else
	printf ("\t%s => %s (0x%08x)\n",
		cur_dso_ent->name, filename,
		cur_dso_ent->map->l_map_start);

      if (filename)
	free (filename);

      cur_dso_ent = cur_dso_ent->next;
      flag = 1;
    }

  if (dso_open_error)
    exit (1);

  if (process_relocs)
    handle_relocs (dso_list->dso, dso_list);
  
  cur_dso_ent = dso_list;
  while (cur_dso_ent)
    {
      close_dso (cur_dso_ent->dso);
      old_dso_ent = cur_dso_ent;
      cur_dso_ent = cur_dso_ent->next;
      if (old_dso_ent->needed)
	free_needed (old_dso_ent->needed);
      free (old_dso_ent);
    }
}
