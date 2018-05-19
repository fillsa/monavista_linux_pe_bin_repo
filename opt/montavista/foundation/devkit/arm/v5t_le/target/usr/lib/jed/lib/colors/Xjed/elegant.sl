% elegant.sl

$1 = "black";
$2 = "#E0E0E0"; % light gray
$3 = "white";
$4 = "#606060"; % medium gray
$5 = "#B4FFB4"; % pale green
$6 = "#1010A0"; % dark blue
$7 = "#B40A78"; % dark purple

set_color("normal", $1, $2);            % default fg/bg
set_color("status", $1, $3);            % status line
set_color("operator", $1, $2);          % +, -, etc...
set_color("number", $6, $2);            % 10, 2.71, etc..
set_color("comment", $1, $5);           % /* comment */
set_color("region", $3, $4);            % region
set_color("string", $6, $2);            % "string" or 'char'
set_color("keyword", $7, $2);           % if, while, unsigned, ...
set_color("keyword1", $7, $2);          % malloc, exit, etc...
set_color("delimiter", "red", $2);      % {}[](),.;...
set_color("preprocess", "magenta", $2); % #ifdef etc...
set_color("message", $6, $2);
set_color("error", "red", $2);
set_color("dollar", "red", $2);
set_color("...", "red", $2);            % folding indicator

set_color ("menu_char", "red", $3);
set_color ("menu", $1, "white");
set_color ("menu_popup", $1, $3);
set_color ("menu_shadow", $1, $4);
set_color ("menu_selection", $1, "cyan");
set_color ("menu_selection_char", "red", $3);

set_color ("mouse", "blue", "blue");
set_color ("cursor", $1, "red");
set_color ("cursorovr", $1, "red");
