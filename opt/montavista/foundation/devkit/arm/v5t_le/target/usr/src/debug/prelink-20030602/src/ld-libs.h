/* FIX ME */
#define ElfW(x) Elf32_##x
#define ELFW(x) ELF32_##x

struct link_map;

struct r_scope_elem
{
  struct link_map **r_list;
  unsigned int r_nlist;
};

struct r_found_version
  {
    const char *name;
    ElfW(Word) hash;

    int hidden;
    const char *filename;
  };

typedef uint32_t Elf_Symndx;

struct link_map
  {
    ElfW(Addr) l_addr;
    const char *l_name;
    struct r_scope_elem *l_local_scope;
    enum { lt_executable, lt_library, lt_loaded } l_type;
    void *l_info[DT_NUM + DT_VERSIONTAGNUM];

    /* Symbol hash table.  */
    Elf_Symndx l_nbuckets;
    const Elf_Symndx *l_buckets, *l_chain;

    unsigned int l_nversions;
    struct r_found_version *l_versions;

    /* Pointer to the version information if available.  */
    ElfW(Versym) *l_versyms;

    /* for _dl_soname_match_p */
    const char *l_soname;

    ElfW(Addr) l_map_start;

    ElfW(Addr) sym_base;
    const char *filename;
  };

struct sym_val
{
  const ElfW(Sym) *s;
  struct link_map *m;
};

#define ELF_RTYPE_CLASS_COPY 2
#define ELF_RTYPE_CLASS_PLT 1

#define GL(X) _ ## X
#define INTUSE(X) X

#define D_PTR(MAP,MEM) MAP->MEM
#define VERSYMIDX(tag) DT_NUM + DT_VERSIONTAGIDX (tag)

extern int _dl_debug_mask;
#define DL_DEBUG_SYMBOLS 0
#define DL_LOOKUP_RETURN_NEWEST 0
#define _dl_dynamic_weak 0
extern const char *rtld_progname;
#define _dl_debug_printf printf


#define USE_TLS

void rtld_lookup_symbol (const char *name, const ElfW(Sym) *sym,
			 struct r_scope_elem *scope, int rtypeclass,
			 struct link_map *undef_map, int machine);
void rtld_lookup_symbol_versioned (const char *name, const ElfW(Sym) *sym,
				   struct r_scope_elem *scope,
				   struct r_found_version *version, int rtypeclass,
				   struct link_map *undef_map, int machine);
int _dl_soname_match_p (const char *name, struct link_map *map);

extern struct link_map *requested_map;

#define __builtin_expect(a,b) (a)
