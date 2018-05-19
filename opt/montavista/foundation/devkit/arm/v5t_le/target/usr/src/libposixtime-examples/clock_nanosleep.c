/* should gives effective times of a nanosleep() */

#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include <posix_time.h>
#include "utils.h"

#define USEC_PER_SEC	1000000
#define NSEC_PER_SEC	1000000000L

//#define timerdiff(a,b) (((double)((a)->tv_sec - (b)->tv_sec) * USEC_PER_SEC) + \
                         (double)((a)->tv_usec - (b)->tv_usec))
#define CLOCK CLOCK_REALTIME_HR
int main(void)
{
	struct timespec pre_time, post_time;
	struct timespec req, res;
	double diff;
	int i;
	
	req.tv_sec = 0;
	req.tv_nsec = 10;
	Try(clock_getres(CLOCK, &res));
	printf("Clock resolution %12.3f usec\n", 
	       (double)res.tv_nsec/NSEC_PER_USEC);
	printf("Requested time    difference(usec)\n");
	for (i=0; i<30; i++){
		req.tv_nsec *= 10;
		if (req.tv_nsec >= NSEC_PER_SEC) {
			req.tv_nsec = 100;
			req.tv_sec++;
		}
		Try(clock_gettime(CLOCK, &pre_time));
		Try(clock_nanosleep(CLOCK, 0, &req, NULL));
		Try(clock_gettime(CLOCK, &post_time));
		timersum(&post_time, &post_time, &req);
		
		diff = timerdiff(&post_time, &pre_time) / USEC_PER_SEC;
		printf("%12.9f\t %12.9f\n", 
		(double)req.tv_sec + ((double)req.tv_nsec/NSEC_PER_SEC), diff);
	}

	return 0;
}
