/*
 * Very simple (yet, for some reason, very effective) memory tester.
 * Originally by Simon Kirby <sim@stormix.com> <sim@neato.org>
 * Version 2 by Charles Cazabon <memtest@discworld.dyndns.org>
 *
 * This file contains the functions for the actual tests, called from the
 * main routine in memtest.c.  See other comments in that file.
 *
 */


/* Includes. */
#include <stdio.h>
#include <stdlib.h>
#include "memtest-tests.h"
#include "memtest.h"


/* Data. */
int silent_test;
extern FILE *logfile;
extern char msg[];


/* Function definitions. */
int
test_verify_success (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	
	if (!silent_test) OUTBOTH ("Testing...");

	for (i = 0; i < count; i++, p1++, p2++)
	{
		if (*p1 != *p2)
		{
			sprintf (msg, "\nFAILURE: 0x%08lx != 0x%08lx at offset 0x%08lx.\n",
					 *p1, *p2, i);
			OUTBOTH (msg);
			OUTBOTH ("Skipping to next test...\n");
			return (ERROR);
		}
	}
	return (OK);
}


int
test_random_value (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ = *p2++ = RAND32;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_xor_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ ^= q;
		*p2++ ^= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_sub_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ -= q;
		*p2++ -= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_mul_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ *= q;
		*p2++ *= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_div_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		if (!q)
			q++;
		*p1++ /= q;
		*p2++ /= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_or_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ |= q;
		*p2++ |= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_and_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ &= q;
		*p2++ &= q;
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_seqinc_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i;
	ui32 q = RAND32;
	
	silent_test = 0;		
	for (i = 0; i < count; i++)
	{
		*p1++ = *p2++ = (i + q);
	}
	return (test_verify_success (bp1, bp2, count));
}


int
test_solidbits_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 q, i, j;

	silent_test = 1;		
	fprintf (stderr, "    ");
	for (j = 0; j < 64; j++)
	{
		q = (j % 2) == 0 ? 0xFFFFFFFF : 0x00000000;
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		p2 = (volatile ui32 *) bp2;
		for (i = 0; i < count; i++)
		{
			*p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
		}
	
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);

		if (test_verify_success (bp1, bp2, count) == ERROR)
		{
			return (ERROR);
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_checkerboard_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 q, i, j;

	silent_test = 1;		
	fprintf (stderr, "    ");
	for (j = 0; j < 64; j++)
	{
		q = (j % 2) == 0 ? 0x55555555 : 0xAAAAAAAA;
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		p2 = (volatile ui32 *) bp2;
		for (i = 0; i < count; i++)
		{
			*p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
		}
	
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);

		if (test_verify_success (bp1, bp2, count) == ERROR)
		{
			return (ERROR);
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_blockseq_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i, j;
	
	silent_test = 1;		
	fprintf (stderr, "    ");
	for (j = 0; j < 256; j++)
	{
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		p2 = (volatile ui32 *) bp2;
		for (i = 0; i < count; i++)
		{
			*p1++ = *p2++ = MAKE32FROM8 (j);
		}
	
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);

		if (test_verify_success (bp1, bp2, count) == ERROR)
		{
			return (ERROR);
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_walkbits_comparison (ui32 *bp1, ui32 *bp2, ui32 count, int m)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i, j;

	silent_test = 1;		
	fprintf (stderr, "    ");
	for (j = 0; j < 64; j++)
	{
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		p2 = (volatile ui32 *) bp2;
		for (i = 0; i < count; i++)
		{
			if (j < 32)	/* Walk it up. */
			{
				*p1++ = *p2++ = (m == 0) ? 0x00000001 << j :
										   0xFFFFFFFF ^ (0x00000001 << j);
			}
			else		/* Walk it back down. */
			{
				*p1++ = *p2++ = (m == 0)
					? 0x00000001 << (64 - j - 1)
					: 0xFFFFFFFF ^ (0x00000001 << (64 - j - 1));
			}				
		}

		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);
		if (test_verify_success (bp1, bp2, count) == ERROR)
		{
			return (ERROR);
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_bitspread_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i, j;

	silent_test = 1;		
	fprintf (stderr, "    ");
	for (j = 0; j < 64; j++)
	{
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		p2 = (volatile ui32 *) bp2;
		for (i = 0; i < count; i++)
		{
			if (j < 32)	/* Walk it up. */
			{
				*p1++ = *p2++ = (i % 2 == 0)
					? (0x00000001 << j) | (0x00000001 << (j + 2))
					: 0xFFFFFFFF ^ ((0x00000001 << j)
									| (0x00000001 << (j + 2)));
			}
			else		/* Walk it back down. */
			{
				*p1++ = *p2++ = (i % 2 == 0)
					? (0x00000001 << (63 - j)) | (0x00000001 << (65 - j))
					: 0xFFFFFFFF ^ (0x00000001 << (63 - j) 
									| (0x00000001 << (65 - j)));
			}				
		}

		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);
		if (test_verify_success (bp1, bp2, count) == ERROR)
		{
			return (ERROR);
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_bitflip_comparison (ui32 *bp1, ui32 *bp2, ui32 count)
{
	volatile ui32 *p1 = (volatile ui32 *) bp1;
	volatile ui32 *p2 = (volatile ui32 *) bp2;
	ui32 i, j, k;
	ui32 q;
		
	silent_test = 1;		
	fprintf (stderr, "    ");
	for (k = 0; k < 32; k++)
	{
		q = 0x00000001 << k;

		for (j = 0; j < 8; j++)
		{
			q = ~q;
			fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu",
					 k * 8 + j);
			p1 = (volatile ui32 *) bp1;
			p2 = (volatile ui32 *) bp2;
			for (i = 0; i < count; i++)
			{
				*p1++ = *p2++ = (i % 2) == 0 ? q : ~q;
			}
		
			fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu",
					 k * 8 + j);
	
			if (test_verify_success (bp1, bp2, count) == ERROR)
			{
				return (ERROR);
			}
		}
		
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}


int
test_stuck_address (ui32 *bp1, ui32 *unused, ui32 count)
{
	volatile ui32 *p1;
	/* second argument is not used; just gives it a compatible signature. */
	ui32 i, j;

	count <<= 1;
	fprintf (stderr, "    ");
	for (j = 0; j < 16; j++)
	{
		p1 = (volatile ui32 *) bp1;
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bSetting... %3lu", j);
		for (i = 0; i < count; i++)
		{
			*p1++ = ((j + i) % 2) == 0 ? (ui32) p1 : ~((ui32) p1);
		}
		fprintf (stderr, "\b\b\b\b\b\b\b\b\b\b\b\b\b\bTesting... %3lu", j);
		p1 = (volatile ui32 *) bp1;
		for (i = 0; i < count; i++, p1++)
		{
			if (*p1 != (((j + i) % 2) == 0 ? (ui32) p1 : ~((ui32) p1)))
			{
				sprintf (msg, "\nFAILURE: possible bad address line at offset"
						 " 0x%08lx.\n", i);
				OUTBOTH (msg);
				OUTBOTH ("Skipping to next test...\n");
				return (ERROR);
			}
		}
	}
	fprintf (stderr, "\b\b\b\b");
	return (OK);
}
