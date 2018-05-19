#ifndef BISON_Y_TAB_H
# define BISON_Y_TAB_H

#ifndef YYSTYPE
typedef union {
	opt_t 			optval;
	char 		       *string;
	struct subcmd 	       *subcmd;
	struct namelist        *namel;
} yystype;
# define YYSTYPE yystype
#endif
# define	ARROW	1
# define	COLON	2
# define	DCOLON	3
# define	NAME	4
# define	STRING	5
# define	INSTALL	6
# define	NOTIFY	7
# define	EXCEPT	8
# define	PATTERN	9
# define	SPECIAL	10
# define	CMDSPECIAL	11
# define	OPTION	12


extern YYSTYPE yylval;

#endif /* not BISON_Y_TAB_H */
