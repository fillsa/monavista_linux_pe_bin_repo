#include <stdio.h>
#include <sys/time.h> 
#include <time.h> 
#include <sched.h>
#include <sys/mman.h> 
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <string.h>
#include "utils.h"

#define __NR_timer_create	259
#define __NR_timer_settime	(__NR_timer_create+1)
#define __NR_timer_gettime	(__NR_timer_create+2)
#define __NR_timer_getoverrun	(__NR_timer_create+3)
#define __NR_timer_delete	(__NR_timer_create+4)
#define __NR_clock_settime	(__NR_timer_create+5)
#define __NR_clock_gettime	(__NR_timer_create+6)
#define __NR_clock_getres	(__NR_timer_create+7)
#define __NR_clock_nanosleep	(__NR_timer_create+8)
//#include "high-res-timers/lib/posix_time.h"
//#include "high-res-timers/lib/syscall_timer.c"
#include "posix_time.h"
#define INNER_LOOP 1000
int num_iterations = 10000;
struct timespec sleep_time = { 0, 500 * 1000}; 
	
int main(int argc, char** argv) {
	int i = 0;
	int j;
	struct timeval start, end; 
	struct timespec nano_time[INNER_LOOP + 1];
	unsigned long diff[num_iterations]; 
	double min_ary[num_iterations], max_ary[num_iterations], max, min;
	double ndiff;
	static int bla=0;
	
//	ioperm(0x378,3,1);
	
	if (geteuid() == 0) { 
		/* super user -- switch to real-time mode and lock memory pages */ 
		struct sched_param sp;
		memset(&sp, 0, sizeof(sp));
		sp.sched_priority = sched_get_priority_max(SCHED_FIFO); 
		Try(sched_setscheduler(0, SCHED_FIFO, &sp));
		Try(mlockall(MCL_CURRENT | MCL_FUTURE)); {
			fprintf(stderr, "Error locking memory\n");
			exit(1);
		}
	} else { 
		fprintf(stderr, " Not running with realtime priortiy\n") ; 
	}
	if (argc > 1) { 
		num_iterations = atoi(argv[1]); 
	}
	if (argc > 2) {
		sleep_time.tv_nsec = atoi(argv[2]) * 1000;
	}
	printf("Doing %d iterations of sleeping for %ld"
	       " micro seconds %d times\n"
	       "Total time for each iteration should be %f seconds.\n",
	       num_iterations, sleep_time.tv_nsec / 1000, INNER_LOOP,
	      ((double)INNER_LOOP * (double)sleep_time.tv_nsec)/1000000000.0 );
	
		
	for (i= -1;  i < num_iterations; i++) { 

		Try(gettimeofday(&start, NULL));
		for(j=0;j < INNER_LOOP; j++) 
		{
			Try(clock_gettime(CLOCK_REALTIME_HR, &nano_time[j])); 
			Try(clock_nanosleep(CLOCK_REALTIME_HR, 0, 
					    &sleep_time, NULL));

			if(bla) {
//				outb(0x1,0x378);
				bla = 0;
			} else { 
//				outb(0x0,0x378);
				bla = 1;
			}
		
//			clock_nanosleep( CLOCK_REALTIME , 0, &sleep_time, NULL);
//			nanosleep(&sleep_time, NULL);
		}
		Try(clock_gettime(CLOCK_REALTIME_HR, &nano_time[INNER_LOOP])); 
		Try(gettimeofday(&end, NULL)); 
		
		/* skip the first iteration through the loop */ 
		if (i >= 0)  {
		        diff[i] = (end.tv_sec - start.tv_sec) * 1000 * 1000 + 
				(end.tv_usec - start.tv_usec);
		} 
		min = 10.0;
		max = 0.0;
		for(j=0; j < INNER_LOOP; j++) {
			ndiff = timerdiff(&nano_time[j + 1], &nano_time[j]);
			min = min > ndiff ? ndiff : min; 
			max = max < ndiff ? ndiff : max;
		}
		min_ary[i] = min;
		max_ary[i] = max;
	}

	printf("Iteration iter time (secs) min sleep max sleep\n");
	for (i= 0;  i < num_iterations; i++) { 
	  printf("  %d        %f  %f    %f\n", i, (double)diff[i] / 1000000.0,
		 min_ary[i], max_ary[i]) ;
	}

	return 0;
}
