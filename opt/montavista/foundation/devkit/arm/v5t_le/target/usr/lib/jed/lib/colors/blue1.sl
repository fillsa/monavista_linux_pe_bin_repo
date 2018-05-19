$1 = "yellow"; $2 = "blue";
set_color("normal", $1, $2);	                % default fg/bg
set_color("status", "black", "white");	  	% status or mode line
set_color("region", "black", "white");	  	% for marking regions
set_color("operator", "white", $2);  	  	% +, -, etc..  
set_color("number", "brightmagenta", $2);	% 10, 2.71,... TeX formulas
set_color("comment", "brightcyan", $2);		% /* comment */  
set_color("string", "brightcyan", $2);	  	% "string" or 'char'  
set_color("keyword", "white", $2);	        % if, while, unsigned, ...  
set_color("keyword1", "yellow", $2);	        % malloc, exit, etc...
set_color("delimiter", "white", $2);    	% {}[](),.;...  
set_color("preprocess", "brightgreen", $2);	% #ifdef ....  
set_color("message", "brown", $2);         % color for messages
set_color("error", "brightred", $2);            % color for errors
set_color("dollar", "white", $2);               % color dollar sign continuation
set_color("...", "red", $2);			% folding indicator

set_color ("menu_char", "black", "white");
set_color ("menu", "blue", "white");
set_color ("menu_popup", "blue", "white");
set_color ("menu_shadow", "blue", "black");
set_color ("menu_selection", "green", "red");
set_color ("menu_selection_char", "black", "red");

set_color ("cursor", "black", "red");
set_color ("cursorovr", "black", "red");
