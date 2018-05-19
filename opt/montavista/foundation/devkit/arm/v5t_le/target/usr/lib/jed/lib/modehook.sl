% modehook.sl	-*- SLang -*-
%\function{modeline_hook2}
%\synopsis{modeline_hook2}
%\description
% check for the following mode statements:
%#v+
% -*- mode: NAME -*-		set mode to NAME
% -*- evalfile: FILE -*-	evaluate file FILE
% -*- eval: expression -*-    evaluate expression
% -*- VAR: VALUE -*-		set VAR = VALUE
%#v-
% these statements may be combined:
%#v+
% -*- mode: NAME; evalfile: FILE; VAR: VALUE -*-
%#v-
define modeline_hook2 ()
{
   variable keyword, value, mode = 0, tag = "-*-", modestr;

   bob ();
   !if (fsearch (tag)) return 0;

   while (ffind (tag))
     {
	go_right (3);
#iffalse
	if (looking_at ("END -*-")) break;
#endif

	push_spot ();
	skip_white (); 
	!if (ffind (tag), pop_spot ()) break;	% closing tag exists?

	forever
	  {
	     skip_chars (" \t;");
	     push_mark ();
	     !if (ffind_char (':'))
	       {
		  pop_mark_0 ();
		  break;
	       }
	     keyword = bufsubstr ();	     
	     go_right_1 ();

	     push_mark ();
	     do
	       {
		  skip_chars ("^-;");
		  if (looking_at_char (';') or looking_at (tag))
		    break;
	       }
	     while (right (1));
	     value = strtrim (bufsubstr ());
	     
	     push_spot ();
	     
	     ERROR_BLOCK
	       {
		  pop_spot ();
	       }
	     % error (sprintf ("keyword <%s> value <%s>", keyword, value));
	     switch (keyword)
	       { case "mode":
		  modestr = "_mode";
		  value = strlow (strtrans (value, "-", "_"));
		  !if (is_substr (value, modestr)) 
		    value += modestr;
		  if (value == "c++_mode")
		    value = "c_mode";
		  if (is_defined(value))
		    {
		       eval (value);
		       mode++;
		    }
	       }
	       { case "evalfile":
		  () = evalfile (value);
	       }
	       { case "eval" :
		  eval (value);
	       }
	       { is_defined (keyword) < 0 :		% set a value
		  eval (keyword + " = " + value);
	       }
#iffalse
	       { is_defined (keyword) > 0 :
		  if (value [0] == '.')		% RPN interpret
		    eval (value + " " + keyword);
	       }
#endif
	     
	     pop_spot ();
	  }
	go_down_1 ();
     }
   mode;
}
