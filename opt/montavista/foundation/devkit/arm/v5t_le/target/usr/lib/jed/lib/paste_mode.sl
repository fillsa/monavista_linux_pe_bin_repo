% made by JED and pasted to the mailing list
% use as follows:
% M-x push_mode
% Push to mode: paste
% <paste with mouse>
% M-x pop_mode

$1 = "Paste";
!if (keymap_p ($1)) make_keymap ($1);
_for (32, 255, 1)
{
       $2 = char ();
       undefinekey ($2, $1);
       definekey ("self_insert_cmd", $2, $1);
}
definekey ("newline", "\n", $1);
definekey ("newline", "\r", $1);
definekey ("self_insert_cmd", "\t", $1);

define paste_mode ()
{
       variable kmap = "Paste";
       set_mode (kmap, 2);
       use_keymap (kmap); 
       runhooks ("paste_mode_hook");
}

provide("paste_mode");
