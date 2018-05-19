/*
 * Written by J.T. Conklin <jtc@netbsd.org>.
 * Changed to return -1 for -Inf by Ulrich Drepper <drepper@cygnus.com>.
 * Public domain.
 */

#if defined(LIBM_SCCS) && !defined(lint)
static char rcsid[] = "$NetBSD: s_isinf.c,v 1.3 1995/05/11 23:20:14 jtc Exp $";
#endif

/*
 * isinf(x) returns 1 is x is inf, -1 if x is -inf, else 0;
 * no branching!
 */

#include "math.h"
#include "math_private.h"

int __isinf_work_around_bug_7941(int i) {
  /* wsj doing the not in a function causes the ICE to go away -- remove
         once Bugz #7941 is fixed */
  return ~i;
}

int
__isinf (double x)
{
	int32_t hx,lx;
	EXTRACT_WORDS(hx,lx,x);
	lx |= (hx & 0x7fffffff) ^ 0x7ff00000;
	lx |= -lx;
	return __isinf_work_around_bug_7941(lx >> 31) & (hx >> 30);
}
hidden_def (__isinf)
weak_alias (__isinf, isinf)
#ifdef NO_LONG_DOUBLE
strong_alias (__isinf, __isinfl)
weak_alias (__isinf, isinfl)
#endif
