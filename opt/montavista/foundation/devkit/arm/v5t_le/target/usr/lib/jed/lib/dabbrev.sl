% dabbrev.sl - Author: Adrian Savage (afs@jumper.mcc.ac.uk)
%              Date:   May 1994
%
%    (Extensively modified by JED)
%
% This file may be freely distributed and modified
%
% Find the previous match for the current word and add it to the current word
%
%  Notes:
%   This implementation searches the buffer for the _next_ completion.  Perhaps
%   a better implementation would create a list of all possible completions
%   and then use that list for further completions.  This would easily allow 
%   the completion list to be derived from all buffers.
%   
%   It may be better to rewrite this function to take advantage of the 
%   _jed_before/after_key hooks.
_debug_info = 1;
#ifdef MSDOS
  $1 = 10;
#else
  $1 = 32;
#endif

static variable Num_Matches = 0;
static variable Completion_List;
static variable Word_Chars;

static define dabbrev_is_already_matched (str)
{
   if (assoc_key_exists (Completion_List, str))
     return 1;

   Completion_List [str] = Num_Matches;
   Num_Matches++;
   return 0;
}


static define dabbrev_skip_word_chars (dir)
{
   if (dir > 0)
     skip_chars (Word_Chars);
   else
     bskip_chars (Word_Chars);
#iffalse
   if (dir > 0)
     {
	do 
	  {
	     skip_chars ("_");
	     skip_word_chars ();
	  }
	while (looking_at_char ('_'));
	return;
     }
  
   forever
     {
	bskip_word_chars ();
	if (bolp()) break;
	go_left_1 ();
	!if (looking_at_char ('_'))
	  {
	     go_right_1 ();
	     break;
	  }
     }
#endif
}

static define dabbrev_widen ()
{
   variable n = count_narrows ();
   if (n)
     {
	push_narrow ();
	loop (n) widen_region ();
     }
   n;
}

static define dabbrev_expand_dir (dir)
{
   variable hilite_wrd, num_spots = 0, num_marks = 0, ndel, 
     complete, fun, fun_type, success = 0, ch, search_fun,
     is_narrow = 0;
   
   ERROR_BLOCK 
     {
	loop (num_spots) pop_spot ();
	loop (num_marks) pop_mark_1 ();
	!if (success)
	  {
	     push_mark ();
	     dabbrev_skip_word_chars(-1);
	     del_region ();
	     insert (hilite_wrd);
	  }
	if (is_narrow) 
	  {
	     pop_narrow ();
	  }
     }
   
   
   push_mark ();  num_marks++;	       % remember initial position
   
   push_mark();			       % mark end of this word  
   dabbrev_skip_word_chars(-1);	       % jump to beginning of word    
   hilite_wrd = bufsubstr();	       % get the word  
   push_mark ();  num_marks++;	       % remember beginning position

   % Add partial completion to the list of matches
   () = dabbrev_is_already_matched (hilite_wrd);

   ndel = strlen (hilite_wrd);
   
   search_fun = &bsearch;
   if (dir) 
     {
	search_fun = &fsearch;
	go_right (ndel);
     }
   
   is_narrow = dabbrev_widen ();
   
   forever
     {
	!if (@search_fun (hilite_wrd))
	  error ("No more completions for " + hilite_wrd);
	
	dabbrev_skip_word_chars (-1);
	!if (looking_at(hilite_wrd)) 
	  {
	     if (dir) dabbrev_skip_word_chars (1);
	     continue;
	  }
	
	push_mark ();		       % set a mark there  
	dabbrev_skip_word_chars(1);    % skip to end of	word      
	complete = bufsubstr();	       % get the completed word
	
	!if (dir) dabbrev_skip_word_chars (-1);
	if (dabbrev_is_already_matched(complete)) continue;
	
	push_spot (); num_spots++;     %  remember how far we got
	
	pop_mark_1 ();		       %  back to beginning
	push_mark;
	
	insert (complete);
	deln (ndel);		       %  delete word
	ndel = strlen (complete);

	if (is_narrow)
	  {
	     pop_narrow ();
	     is_narrow = 0;
	  }
	
	update_sans_update_hook (1);		       %  force update
	
	%ch = getkey (); ungetkey (ch);
	
	(fun_type, fun) = get_key_binding ();
	
	if (fun != "dabbrev")
	  break;

	variable zzzz = create_user_mark ();
	pop_spot (); num_spots--;      %  returns and continue looking
	
	is_narrow = dabbrev_widen ();
     }
   
   % we get here only when we are finished
   success = 1;
   
   EXECUTE_ERROR_BLOCK;		       %  pop spots/marks
   
   update_sans_update_hook (0);
   return (fun_type, fun);
}

static define dabbrev_case_search (cse)
{
   CASE_SEARCH = cse;
   ERROR_BLOCK
     {
	_clear_error ();
	return dabbrev_expand_dir (1);
     }
   return dabbrev_expand_dir (0);
}

public define dabbrev ()
{
   variable cse = CASE_SEARCH;
   variable type, fun;

   Word_Chars = mode_get_mode_info ("dabbrev_word_chars");
   if (Word_Chars == NULL)
     Word_Chars = "_" + get_word_chars ();
   
   Completion_List = Assoc_Type [Integer_Type];
   Num_Matches = 0;

   ERROR_BLOCK
     {
	_clear_error ();
	ERROR_BLOCK
	  {
	     CASE_SEARCH = cse;		% restore case search
	  }
	dabbrev_case_search (0);
     }

   % This is subtle and illustrates why I need try/catch semantics in 
   % slang 2.  If the next call triggers an error, it will put nothing
   % on the stack and the above ERROR_BLOCK will get executed.  If
   % its call to dabbrev_case_search succeeds, then that will leave to
   % values on the stack that (type, fun)= will pickup.  Got it?
   (type, fun) = dabbrev_case_search (1);

   CASE_SEARCH = cse;		       % restore case search  
   Completion_List = NULL;	       % free list

   % The following may generate an error so cancel the above ERROR_BLOCK.
   ERROR_BLOCK
     {
     }
   
   if (fun == NULL)
     return;

   if (type) call (fun); else eval (fun);
}
