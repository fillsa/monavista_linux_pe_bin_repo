%
%   CUA (Microsoft/Mac/CDE-like) bindings for Jed.
%
%   Reuben Thomas (rrt@sc3d.org)
%

_Jed_Emulation = "cua";

%  Key definitions for Linux and DOS (from ide.sl)

% Use "jed -l keycode -f keycode" to find what codes keys generate

require ("keydefs");
require ("wmark");

set_status_line("(Jed %v) CUA: %b    (%m%a%n%o)  %p   %t", 1);

Help_File = "cua.hlp";
KILL_LINE_FEATURE = 0;
#ifdef UNIX
enable_flow_control(0);  %turns off ^S/^Q processing (Unix only)
#endif

% Keys bound by default in Jed which must be unbound
_Reserved_Key_Prefix = NULL; % "^Q"; ???

unsetkey("^F");
unsetkey("^K");
unsetkey("^R");
unsetkey("^V");
unsetkey("^W");
unsetkey("^X");
unsetkey("^_");

%  Jed default binding of the tab char ^I is to indent line.  Here just
%  insert the tab

setkey("self_insert_cmd",	"^I");

%% The default binding for the quote keys (", ') is 'text_smart_quote'.
%% Most users do not seem to like this so it is unset here.
%% 
setkey("self_insert_cmd",     "\"");
setkey("self_insert_cmd",     "'");

setkey("backward_delete_char_untabify",	"^?");
setkey("beg_of_line",		"^A");
setkey("beg_of_line",		Key_Home);
setkey("delete_char_cmd",	"^D");
setkey("delete_char_cmd",	Key_Del);
setkey("eol_cmd",		Key_End);
setkey("eol_cmd",             "^E");
setkey("newline_and_indent",	"^M");
% setkey("quoted_insert",	"^Q");
setkey("isearch_forward",	"^F");
setkey("isearch_backward",	"\eF");
setkey("replace_cmd",		"^R");
%  setkey("search_backward",	"^R");
%  setkey("search_forward",	"^S");
setkey("page_down",		Key_PgDn);
setkey("page_down",		"^N");
%  setkey("sys_spawn_cmd",	"^Z");
setkey("help_prefix",		"\eH");
setkey("help_prefix",		Key_F1);
setkey("undo",		"^Z");
setkey("bskip_word",		"\eOd");
setkey("delete_word",	        Key_Ctrl_Del);
setkey("bdelete_word",		Key_Ctrl_BS);
setkey("skip_word",		"\eOc");
setkey("beg_of_buffer",	Key_Alt_Home);
setkey("beg_of_buffer",       "\e^A");
setkey("end_of_buffer",	Key_Alt_End);
setkey("end_of_buffer",       "\e^E");
setkey("format_paragraph",	"^J");
setkey("page_up",		Key_PgUp);
setkey("page_up",		"^P");

setkey("kill_region",         "^X");
setkey("copy_region",         "^C");
setkey("yank",                "^V");

%
%    ^X map
%

%  setkey("begin_macro",		"^X(");
%  setkey("end_macro",		"^X)");
%  setkey("mark_spot",		"^X/");
setkey("delbuf(whatbuf())",   "^W");
%  setkey("one_window",		"^X1");
%  setkey("split_window",	"^X2");
%  setkey("scroll_left",		"^X<");
%  setkey("scroll_right",	"^X>");
%  setkey("switch_to_buffer",	"^XB");
%  setkey("dired",		"^XD");
%  setkey("insert_file",		"^XI");
%  setkey("execute_macro",	"^XE");
%  setkey("pop_spot",		"^XJ");
%  setkey("kill_buffer",		"^XK");
%  setkey("other_window",	"^XO");
setkey("exit_jed",		"\eQ");
setkey("find_file",		"^O");
%  setkey(".'d'xform_region",	"^X^L");
%  setkey("toggle_readonly",	"^X^Q");
setkey("save_buffer",		"^S");
setkey("insert_file",         "\eI");
%  setkey("transpose_lines",	"^X^T");
%  setkey(".'u'xform_region",	"^X^U");
%  setkey("write_buffer",	"\eS");

% rectangle stuff

%  setkey("kill_rect", 		"^XRk");
%  setkey("open_rect", 		"^XRo");
%  setkey("insert_rect", 	"^XRy");
%  setkey("copy_rect",	 	"^XRr");

setkey("smart_set_mark_cmd",		"\eR");

%setkey ("find_buffer_other_window",	"^X4b");
%setkey ("find_alternate_file",		"^X^V");
%setkey ("find_file_other_window",	"^X4f");

%autoload ("find_file_other_window",	"emacsmsc");
%autoload ("find_buffer_other_window",	"emacsmsc");
%autoload ("find_alternate_file",	"emacsmsc");
%autoload ("delete_blank_lines",		"emacsmsc");
%autoload ("forward_sexp",		"emacsmsc");
%autoload ("backward_sexp",		"emacsmsc");
%autoload ("kill_sexp",			"emacsmsc");
%autoload ("scroll_up_in_place",		"emacsmsc");
%autoload ("scroll_down_in_place",	"emacsmsc");

%% misc functions
%% 
define transpose_chars ()
{
   variable c, err;
   err = "Top of Buffer";
   
   if (eolp()) go_left_1 ();
   !if (left(1)) error(err);
   c = what_char();
   del();
   go_right_1 ();
   insert_char(c);
}
setkey("transpose_chars",  "^T");


%%0 9 1 { "^U" exch string strcat "digit_arg" exch setkey } _for
%
%  Emacs Universal argument--- bound to ^U
%
define universal_argument ()
{
   variable n, key, count, msg, cu, force;
   n = 4; count = 0; cu = "C-u"; msg = cu; force = 0;
   
   forever
     {
	!if (force) !if(input_pending(10)) force = 1;
	
	if (force)
	  {
	     message(msg + "-");
	     update(0);
	  }
	
	
	msg += " ";
	key = getkey();
	
	switch(key)
	  {
	     isdigit(char(key)) :
	     key = key - '0';
	     count = 10 * count + key;
	     msg += string(key);
	  }
	  {
	   case 21 :		       %  ^U
	     !if (count) n = 4 * n;
	     count = 0;
	     msg += cu;
	  }
	  {
	     ungetkey(key);
	     !if (count) count = n;
	     count = string(count);
	     n = strlen(count);
	     _for (n, 1, -1)
	       {
		  count; exch();
		  ungetkey(int (substr((), (), 1)));
	       }
	     ungetkey(27);
	     return;
	  }
     }
}
setkey("universal_argument",  "^U");

% The 8086 version of jed does not suppot yank-pop whereas jed386 does.  So,
% I do it this way so both executables can execute this file.
if (is_defined ("KILL_ARRAY_SIZE"))
{
   require ("yankpop");
   setkey ("bol;yp_kill_line", "^K");
   setkey ("yp_kill_line", "\eK");
   setkey ("yp_yank", "^Y");
   setkey ("yp_yank_pop", "\eY");
   setkey ("yp_kill_word", "\eD");
   setkey ("yp_bkill_word", "\e^?");
   setkey ("yp_copy_region_as_kill", "\eW");
   %     setkey ("yp_kill_region", "^W");
}

runhooks ("keybindings_hook", _Jed_Emulation);
