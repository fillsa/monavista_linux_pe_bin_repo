%%   Buffer routines for Jed.  Functions included here are:
%%    
%%     save_buffers  : saves buffers that are associated with a file
%%                     with no user intervention
%%     recover_file  : restore buffer from autosave file.
%%
%%



%!%+
%\function{save_buffers}
%\synopsis{save_buffers}
%\usage{Void save_buffers ();}
%\description
% Save all modified buffers that are associated with a file without
% user intervention.
%!%-
define save_buffers ()
{
   variable file, dir, flags, buf, ch;
   
   loop (buffer_list())
     { 
	buf = ();
	ch = int(buf);
	if ((ch == 32) or (ch == '*')) continue;  %% internal buffer or special
      
	(file, dir,, flags) = getbuf_info (buf);
      
	!if (strlen(file)) continue;        %% no file assciated with it
	if (flags & 1)
	  {
	     setbuf(buf);
	     () = write_buffer(dircat (dir, file));
	  }
     }  
}

      
     
%% write region to file
define write_region()
{
   variable file;
   !if (markp) error("Set Mark first!");
   file = read_file_from_mini("File:");
   write_region_to_file(file);
}


define append_region ()
{
   variable file;
   !if (markp) error("Set Mark first!");
   file = read_file_from_mini("Append to File:");
   if (-1 == append_region_to_file(file)) error ("Append failed.");
}

;%% restores buffer from autosave file.
define recover_file ()
{
   variable flags, file, dir, as, buf;
   
   (file, dir,, flags) = getbuf_info();
   !if (strlen(file)) error("Buffer not associated with a file.");
   as = make_autosave_filename (dir, file);
   if (file_status(as) != 1)
    {
       error (as + " not readable.");
    }
    
   buf = whatbuf();
   as;
   if (file_time_compare(as, dircat (dir, file)))
     {
        " more recent. Use it";
     }
   else " not recent. Use it";
   
   if (get_yes_no(() + ()) > 0)
     {
	what_line();
	setbuf(buf);
	erase_buffer();
	() = insert_file(as);
	goto_line();
     } 
}
	   


  
