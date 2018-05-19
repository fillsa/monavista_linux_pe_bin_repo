% S-Lang mode is just a superset of C mode so make sure it is loaded.
require ("cmode");

$1 = "SLANG";

create_syntax_table ($1);
define_syntax ("%", "", '%', $1);
define_syntax ("([{", ")]}", '(', $1);
define_syntax ('"', '"', $1);
define_syntax ('\'', '\'', $1);
define_syntax ('\\', '\\', $1);
define_syntax ("0-9a-zA-Z_$", 'w', $1);        % words
define_syntax ("-+0-9a-fA-F.xX", '0', $1);   % Numbers
define_syntax (",;:.", ',', $1);
define_syntax ('#', '#', $1);
define_syntax ("%-+/&*=<>|!~^", '+', $1);

#ifdef HAS_DFA_SYNTAX
%%% DFA_CACHE_BEGIN %%%
static define setup_dfa_callback (name)
{
   dfa_enable_highlight_cache ("slmode.dfa", name);
   dfa_define_highlight_rule("^[ \t]*#", "PQpreprocess", name);
   dfa_define_highlight_rule("%.*$", "comment", name);
   dfa_define_highlight_rule("[A-Za-z_\\$][A-Za-z_0-9\\$]*", "Knormal", name);
   dfa_define_highlight_rule("[0-9]+(\\.[0-9]*)?([Ee][\\+\\-]?[0-9]*)?",
			 "number", name);
   dfa_define_highlight_rule("0[xX][0-9A-Fa-f]*", "number", name);
   dfa_define_highlight_rule("\"([^\"\\\\]|\\\\.)*\"", "string", name);
   dfa_define_highlight_rule("\"([^\"\\\\]|\\\\.)*\\\\?$", "string", name);
   dfa_define_highlight_rule("'([^'\\\\]|\\\\.)*'", "string", name);
   dfa_define_highlight_rule("'([^'\\\\]|\\\\.)*\\\\?$", "string", name);
   dfa_define_highlight_rule("[ \t]+", "normal", name);
   dfa_define_highlight_rule("[\\(\\[{}\\]\\),;\\.\\?:]", "delimiter", name);
   dfa_define_highlight_rule("[%\\-\\+/&\\*=<>\\|!~\\^]", "operator", name);
   dfa_define_highlight_rule("!if", "keyword0", name);
   dfa_build_highlight_table(name);
}
dfa_set_init_callback (&setup_dfa_callback, "SLANG");
%%% DFA_CACHE_END %%%
#endif

() = define_keywords ($1, "doifor", 2);
() = define_keywords ($1, "andchsformodnotpopshlshrsqrxor", 3);
() = define_keywords ($1, "NULL_forcaseelseexchloopmul2sign", 4);
() = define_keywords ($1, "__tmpbreakusingwhile", 5);
() = define_keywords ($1, "defineorelsepublicreturnstaticstructswitch", 6);
() = define_keywords ($1, "andelseforeachforeverprivatetypedef", 7);
() = define_keywords ($1, "continuevariable", 8);
() = define_keywords ($1, "EXIT_BLOCK", 10);
() = define_keywords ($1, "ERROR_BLOCK", 11);
() = define_keywords ($1, "EXECUTE_ERROR_BLOCK", 19);

% This function attempts to implement some form of wrapping mode in the
% presence of comments.  However, the embedded documentation comment style
% (using text-macro) means that this will need to be modified to be more
% sophisticated.  Basically the modifications would require analysing the
% text-macro context.  For example, wrapping is not appropriate in verbatim 
% sections.
#ifntrue
define slmode_insert_space ()
{
   variable cstr;
   
   if (is_overwrite_mode ())
     {
	call ("self_insert_cmd");
	return;
     }

   EXIT_BLOCK
     {
	insert_single_space ();
     }


   % The following code attempts a wrapping mode in the presence of comments
   !if (cmode_is_slang_mode ()) return;
   if (not (eolp ()) or (what_column () <= WRAP)) return;
   
   % we are at the end of line.
   cstr = "%!% ";
   bol ();
   !if (looking_at (cstr), eol ()) return;
   !if (bfind_char (' ')) return;
   trim ();
   newline ();
   insert (cstr);
   eol ();
}
#endif
   
define slang_mode ()
{
   set_mode("SLang", 2 | 8);
   c_mode_common ();
   use_syntax_table ("SLANG");
   %local_setkey ("slmode_insert_space", " ");
   mode_set_mode_info ("SLang", "fold_info", "%{{{\r%}}}\r\r");
   run_mode_hooks("slang_mode_hook");
}

