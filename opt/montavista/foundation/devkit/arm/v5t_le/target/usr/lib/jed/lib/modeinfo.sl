% These routines facilitate the manipulation of mode dependent data.

!if (is_defined ("Mode_Info_Type"))
typedef struct
{
     fold_info,			       %  folding.sl: beg\rend\r\beg1\r\end1
     dabbrev_word_chars,		       %  word chars for dabbrev mode
     init_mode_menu,
     chglog_get_item,
     use_dfa_syntax,
}
Mode_Info_Type;

static variable Mode_Info_List = Assoc_Type [Mode_Info_Type];

static define find_mode_info (mode_name)
{
   !if (assoc_key_exists (Mode_Info_List, mode_name))
     return NULL;
   
   return Mode_Info_List[mode_name];
}

define mode_set_mode_info (mode_name, field_name, field_value)
{
   variable mode_info;
   
   mode_info = find_mode_info (mode_name);
   if (mode_info == NULL)
     {
	mode_info = @Mode_Info_Type;
	Mode_Info_List [mode_name] = mode_info;
     }

   set_struct_field (mode_info, field_name, field_value);
}
   
define mode_get_mode_info (field_name)
{
   variable mode_info;
   
   if (_NARGS == 1)
     get_mode_name ();

   variable mode_name = ();
     
   mode_info = find_mode_info (mode_name);
   if (mode_info == NULL)
     return NULL;
   
   return get_struct_field (mode_info, field_name);
}
