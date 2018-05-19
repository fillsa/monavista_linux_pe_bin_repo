/*	$NetBSD: error.h,v 1.15 2002/11/24 22:35:39 christos Exp $	*/

/*-
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Kenneth Almquist.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by the University of
 *	California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)error.h	8.2 (Berkeley) 5/4/95
 */

#include <setjmp.h>
#include <signal.h>

/*
 * Types of operations (passed to the errmsg routine).
 */

#define E_OPEN 01	/* opening a file */
#define E_CREAT 02	/* creating a file */
#define E_EXEC 04	/* executing a program */


/*
 * We enclose jmp_buf in a structure so that we can declare pointers to
 * jump locations.  The global variable handler contains the location to
 * jump to when an exception occurs, and the global variable exception
 * contains a code identifying the exeception.  To implement nested
 * exception handlers, the user should save the value of handler on entry
 * to an inner scope, set handler to point to a jmploc structure for the
 * inner scope, and restore handler on exit from the scope.
 */

struct jmploc {
	jmp_buf loc;
};

extern struct jmploc *handler;
extern int exception;
extern int exerrno;	/* error for EXEXEC */

/* exceptions */
#define EXINT 0		/* SIGINT received */
#define EXERROR 1	/* a generic error */
#define EXSHELLPROC 2	/* execute a shell procedure */
#define EXEXEC 3	/* command execution failed */
#define EXEXIT 4	/* exit the shell */
#define EXSIG 5		/* trapped signal in wait(1) */


/*
 * These macros allow the user to suspend the handling of interrupt signals
 * over a period of time.  This is similar to SIGHOLD to or sigblock, but
 * much more efficient and portable.  (But hacking the kernel is so much
 * more fun than worrying about efficiency and portability. :-))
 */

extern int suppressint;
extern volatile sig_atomic_t intpending;
extern int exsig;

#define barrier() ({ __asm__ __volatile__ ("": : :"memory"); })
#define INTOFF \
	({ \
		suppressint++; \
		barrier(); \
		0; \
	})
#ifdef REALLY_SMALL
void __inton __P((void));
#define INTON __inton()
#else
#define INTON \
	({ \
		barrier(); \
		if (--suppressint == 0 && intpending) onint(); \
		0; \
	})
#endif
#define FORCEINTON \
	({ \
		barrier(); \
		suppressint = 0; \
		if (intpending) onint(); \
		0; \
	})
#define SAVEINT(v) ((v) = suppressint)
#define RESTOREINT(v) \
	({ \
		barrier(); \
		if ((suppressint = (v)) == 0 && intpending) onint(); \
		0; \
	})
#define CLEAR_PENDING_INT intpending = 0
#define int_pending() intpending
#define EXSIGON() \
	({ \
		exsig++; \
		barrier(); \
		if (pendingsigs) \
			exraise(EXSIG); \
		0; \
	})
/* EXSIG is turned off by evalbltin(). */

void exraise(int) __attribute__((__noreturn__));
#ifdef USE_NORETURN
void onint(void) __attribute__((__noreturn__));
#else
void onint(void);
#endif
void error(const char *, ...) __attribute__((__noreturn__));
void exerror(int, const char *, ...) __attribute__((__noreturn__));
const char *errmsg(int, int);

void sh_warnx(const char *, ...);
