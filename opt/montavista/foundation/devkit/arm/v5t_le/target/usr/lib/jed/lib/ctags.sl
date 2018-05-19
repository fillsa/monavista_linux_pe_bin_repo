% tags.sl	-*- SLang -*-
%
% read a tags file produced by ctags/etags programs
%
% By default, the file "tags" is used.  However, setting the variable
% `Tag_File' as in
%	variable Tag_File = "mytag.file";
% will override this.
custom_variable ("Tag_File", "tags");

% ctags format:
%  function-name\tfilename\t/^function-prototype/
%  typedef-name\tfilename\tline-number
% Note: an extended format file will look like:
%  function-name\tfilename\t/^function-prototype$/;"TAB...
static define ctags_find (tag)
{
   variable n, file, proto, msg = "Tag file needs updated?";

   !if ((n = re_fsearch (strcat ("^", tag, "\t+\\([^\t]+\\)\t+"))), n)
     error (msg);
   file = regexp_nth_match (1);

   go_right (--n, n);
   if (looking_at ("/^"))
     {
	go_right (2);
	push_mark ();
	!if (ffind ("$/;\"\t"))
	  {
	     eol (); bskip_chars ("\\$/");
	  }
#ifexists strreplace
	proto = str_replace_all (bufsubstr (), "\\/", "/");
#else
	% Versions of slang prior to 1.4.1 do not have strreplace and
	% str_replace_all will fail unless something is done to trick it.
	proto = str_replace_all (bufsubstr (), "\\/", "\001\002\x7f");
	proto = str_replace_all (proto, "\001\002\x7f", "/");
#endif
	n = 0;
     }
   else
     {
	push_mark ();
	eol ();
	n = integer (bufsubstr ());
     }

   variable dir;
   (,dir,,) = getbuf_info ();
   
   file = dircat (dir, file);
   !if (read_file (file)) verror ("File %s not found.", file);

   if (n)
     {
	goto_line (n);
	return;
     }

   bob ();
   !if (bol_fsearch (proto))
     {
        () = fsearch (tag);
        message (proto);
     }
   % message (Sprintf ("Tag: <%s>", proto, 1));
}

% etags format:
%  ^L
%  filename,some-number
%  [function-type] function-name ^?line-name,some-number
static define etags_find (tag)
{
   variable file, line, tmptag, msg = "Tag file needs updated?";

   % we do the re_fsearch in order of preference: user->function->array
   tmptag = strcat ("[: ]", tag);
   !if (re_fsearch (strcat (tmptag, "[\t ]+\x7F\\(\\d+\\),")))
     !if (re_fsearch (strcat (tmptag, "[\t \\(]+\x7F\\(\\d+\\),")))
       !if (re_fsearch (strcat (tmptag, "[\t \\[]+\x7F\\(\\d+\\),")))
	 error (msg);
   line = integer (regexp_nth_match (1));

   () = bol_bsearch (char (014));	% previous ^L
   go_down_1 ();
   push_mark (); skip_chars ("^,");
   file = bufsubstr ();

   !if (read_file (file)) error ("File not found.");
   goto_line (line);
}

static define locate_tags_file (tags_file)
{
   variable dir;

   (,dir,,) = getbuf_info ();
   
   forever
     {
	variable file = dircat (dir, tags_file);
	if (1 == file_status (file))
	  return file;
	
	% This may need modified for non-Unix systems...
#ifdef UNIX
	dir = expand_filename (dircat (dir, "../"));
	if (dir == "/")
	  break;
#elifdef IBMPC_SYSTEM
	dir = expand_filename (dircat (dir, "..\\"));
	if ((dir == "/") or (dir == "\\"))
	  break;
	if (strlen (dir) == 3)
	  {
	     if (dir[1] == ':')
	       break;
	  }
#elifdef VMS
	% Does this work?
	dir = expand_filename (dircat (dir, "[-]"));
#endif
     }

   return NULL;
}

static define find_tags_file ()
{
   variable file, dir, dir1;
   variable tbuf = " *tags*";

   file = locate_tags_file (Tag_File);
   if (file == NULL)
     error ("Unable to find a tags file");

   (dir1,) = parse_filename (file);

   if (bufferp (tbuf))
     {
	(,dir,,) = getbuf_info (tbuf);
	if (dir == dir1)
	  return;
     }

   setbuf (tbuf);
   
   erase_buffer ();
   if (insert_file (file) < 0)
     error ("File tags not found!");
   
   variable flags;

   (file,,tbuf,flags) = getbuf_info ();
   setbuf_info (file,dir1,tbuf,flags);
}
%_debug_info = 1;
define find_tag ()
{
   variable tag = "0-9A-Z_a-z", cbuf = whatbuf ();
#ifdef VMS
   tag = strcat (tag, "$");
#endif
   push_spot ();
   skip_white ();
   bskip_chars (tag);
   push_mark ();
   skip_chars (tag);
   tag = bufsubstr ();		% leave on the stack
   pop_spot ();

   tag = strtrim (read_mini ("Find tag:", tag, Null_String));

   !if (strlen (tag)) return;	% later I will treat this better

   variable cbuf_mark = create_user_mark ();
   variable cwindow = window_info ('t');

   find_tags_file ();
   
   bob ();
   if (looking_at_char (014))	% if first char is ^L (etags)
     etags_find (tag);
   else
     ctags_find (tag);
   
   variable tag_mark = create_user_mark ();

   pop2buf (whatbuf ());
   if (whatbuf() != cbuf)
     {
	% If there are several windows that contain cbuf, find the one we 
	% started from.
	loop (nwindows ())
	  {
	     otherwindow ();
	     if ((window_info ('t') == cwindow)
		 and (whatbuf () == cbuf))
	       {
		  goto_user_mark (cbuf_mark);
		  return;
	       }
	  }
	return;
     }
   
   % See how many windows contain cbuf
   if (nwindows == 1)
     splitwindow ();

   variable count = 0;
   
   % This code illustrates that I need better window intrinsics
   loop (nwindows ())
     {
	otherwindow ();
	if (cbuf == whatbuf ())
	  count++;
     }
	
   if (count == 1)
     {
	otherwindow ();
	sw2buf (cbuf);
	
	loop (nwindows () - 1)
	  otherwindow ();
     }
   
   % Now two windows contain the buffer.  We are in the current window now.
   count = 0;
   do
     {
	otherwindow ();
	count++;
     }
   while (cbuf != whatbuf ());
   goto_user_mark (tag_mark);
   loop (nwindows() - count)
     otherwindow ();

   goto_user_mark (cbuf_mark);
}
