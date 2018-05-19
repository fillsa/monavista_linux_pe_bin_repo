/*
 * Copyright (c) 1992-1998 Michael A. Cooper.
 * This software may be freely used and distributed provided it is not
 * sold for profit or used in part or in whole for commercial gain
 * without prior written agreement, and the author is credited
 * appropriately.
 */

#ifndef lint
static char RCSid[] = 
"$Id: distopt.c,v 6.12 1998/11/10 04:09:11 mcooper Exp $";

static char sccsid[] = "@(#)distopt.c";

static char copyright[] =
"Copyright (c) 1992-1998 Michael A. Cooper.\n";
#endif /* !lint */

/*
 * Dist Option functions
 */

#include "defs.h"

/*
 * Distfile Option Information
 */
DISTOPTINFO distoptinfo[] = {
	{ DO_CHKNFS,		"chknfs" },
	{ DO_CHKREADONLY,	"chkreadonly" },
	{ DO_CHKSYM,		"chksym" },
	{ DO_COMPARE,		"compare" },
	{ DO_FOLLOW,		"follow" },
	{ DO_IGNLNKS,		"ignlnks" },
	{ DO_NOCHKGROUP,	"nochkgroup" },
	{ DO_NOCHKMODE,		"nochkmode" },
	{ DO_NOCHKOWNER,	"nochkowner" },
	{ DO_NODESCEND,		"nodescend" },
	{ DO_NOEXEC,		"noexec" },
	{ DO_NUMCHKGROUP,	"numchkgroup" },
	{ DO_NUMCHKOWNER,	"numchkowner" },
	{ DO_QUIET,		"quiet" },
	{ DO_REMOVE,		"remove" },
	{ DO_SAVETARGETS,	"savetargets" },
	{ DO_SPARSE,            "sparse" },
	{ DO_VERIFY,		"verify" },
	{ DO_WHOLE,		"whole" },
	{ DO_YOUNGER,		"younger" },
	{ 0 },
};

/*
 * Get a Distfile Option entry named "name".
 */
extern DISTOPTINFO *getdistopt(name)
	char *name;
{
	register int i;

	for (i = 0; distoptinfo[i].do_name; ++i)
		if (strcasecmp(name, distoptinfo[i].do_name) == 0)
			return(&distoptinfo[i]);

	return((DISTOPTINFO *) NULL);
}

/*
 * Parse a dist option string.  Set option flags to optptr.
 * If doerrs is true, print out own error message.  Returns
 * 0 on success.
 */
extern int parsedistopts(str, optptr, doerrs)
	char *str;
	opt_t *optptr;
	int doerrs;
{
	register char *string, *optstr;
	DISTOPTINFO *distopt;
	int negate;

	/* strtok() is harmful */
	string = strdup(str);

	for (optstr = strtok(string, ","); optstr;
	     optstr = strtok((char *) NULL, ",")) {
		if (strncasecmp(optstr, "no", 2) == 0)
			negate = TRUE;
		else
			negate = FALSE;

		/*
		 * Try looking up option name.  If that fails
		 * and the option starts with "no", strip "no"
		 * from option and retry lookup.
		 */
		if (distopt = getdistopt(optstr)) {
			FLAG_ON(*optptr, distopt->do_value);
			continue;
		}
		if (negate && (distopt = getdistopt(optstr+2))) {
			FLAG_OFF(*optptr, distopt->do_value);
			continue;
		}
		if (doerrs)
			error("Dist option \"%s\" is not valid.", optstr);
	}

	if (string)
		(void) free(string);

	return(nerrs);
}

/*
 * Get a list of the Distfile Option Entries.
 */
extern char *getdistoptlist()
{
	register int i;
	static char buf[1024];

	for (i = 0, buf[0] = CNULL; distoptinfo[i].do_name; ++i) {
		if (buf[0] == CNULL)
			(void) strcpy(buf, distoptinfo[i].do_name);
		else {
			(void) strcat(buf, ",");
			(void) strcat(buf, distoptinfo[i].do_name);
		}
	}

	return(buf);
}

/*
 * Get a list of the Distfile Option Entries for each enabled 
 * value in "opts".
 */
extern char *getondistoptlist(opts)
	opt_t opts;
{
	register int i;
	static char buf[1024];

	for (i = 0, buf[0] = CNULL; distoptinfo[i].do_name; ++i) {
		if (!IS_ON(opts, distoptinfo[i].do_value))
			continue;

		if (buf[0] == CNULL)
			(void) strcpy(buf, distoptinfo[i].do_name);
		else {
			(void) strcat(buf, ",");
			(void) strcat(buf, distoptinfo[i].do_name);
		}
	}

	return(buf);
}

