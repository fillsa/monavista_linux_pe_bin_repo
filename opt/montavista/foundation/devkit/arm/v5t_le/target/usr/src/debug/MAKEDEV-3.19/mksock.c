/*
 *  Copyright 2001 Red Hat, Inc.
 * 
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 */

#include <sys/types.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/un.h>
#include <errno.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "sel.h"

static void
usage(void)
{
	fprintf(stderr, "Usage: mksock -V\n");
	fprintf(stderr, "       mksock [-v] [-Z context] PATH [...]\n");
}

int
main(int argc, char **argv)
{
	struct sockaddr_un sun;
	int sockfd, r, i, verbose;

	verbose = 0;
	while ((r = getopt(argc, argv, "vVZ:")) != -1) {
		switch (r) {
		case 'v':
			verbose++;
			break;
		case 'Z':
			secontextset("mksock", optarg);
			break;
		case 'V':
			printf("mksock version " VERSION "\n");
			return 0;
		default:
			fprintf(stderr, "mksock version " VERSION "\n");
			usage();
			return 1;
			break;
		}
	}

	if (optind == argc) {
		usage();
		return 1;
	}

	for (i = optind; i < argc; i++) {
		memset(&sun, 0, sizeof(sun));
		sun.sun_family = AF_UNIX;
		snprintf(sun.sun_path, sizeof(sun.sun_path), "%s", argv[i]);

		sockfd = socket(PF_UNIX, SOCK_STREAM, 0);

		r = bind(sockfd, (struct sockaddr*)&sun, sizeof(sun));
		if (r != 0) {
			fprintf(stderr, "mksock: error making %s: %s\n",
				sun.sun_path, strerror(errno));
			exit(1);
		}
		if (verbose) {
			printf("%s\n", argv[i]);
		}
		close(sockfd);
	}

	return 0;
}
