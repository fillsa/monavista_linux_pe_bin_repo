/*
 * A module that serves /dev/delay.  mknod /dev/delay c 241 0, for now.
 * When written, it busy-loops for the specified number of usecs.
 *
 * Copyright (C) 2001 MontaVista Software Inc.
 * Author: Jun Sun, jsun@mvista.com or jsun@junsun.net
 *
 * This program is free software; you can redistribute  it and/or modify it
 * under  the terms of  the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the  License, or (at your
 * option) any later version.
 *
 */

/*
 * TODO :
 * . extend to suport multiple delay's.  Use an array of priv_data structs.
 * . Make it SMP safe.
 */

#define		__KERNEL__
#define		MODULE

#include <linux/types.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/sched.h>
#include <linux/spinlock.h>
#include <linux/tqueue.h>
#include <linux/init.h>
#include <linux/delay.h>

#include <asm/uaccess.h>

/*
 * CONFIGURE
 */
#define			DELAY_MAJOR		241
#define			DELAY_DEV_NAME		"delay"

static int busy=0;

static int 
delay_open(struct inode * inode, struct file * file)
{
	if (busy) return -EBUSY;
	busy = 1;
	return 0;
}

static int
delay_release(struct inode * inode, struct file * file)
{
	busy = 0;
	return 0;
}

static ssize_t
delay_write(struct file * file, const char * buf, size_t count, loff_t *x)
{
	int usecs;

	if (count != sizeof(int)) return -EINVAL;

	get_user(usecs, (int*)buf);
	if (usecs > 1024) return -EINVAL;	/* only delay less than 1ms */
	if (usecs < 0) return -EINVAL;

	udelay(usecs);

	return sizeof(int);
}

static struct file_operations delay_fops = {
	write:	delay_write,
	open:	delay_open,
	release: delay_release
};


static int __init 
delay_module_init(void)
{
	if (register_chrdev(DELAY_MAJOR, DELAY_DEV_NAME, &delay_fops)) {
		printk(KERN_ERR "delay: register_chrdev failed, MAJOR = %d.\n",
				DELAY_MAJOR);
		return -EIO;
	}

	return 0;
}

static void __exit 
delay_module_exit(void)
{
	unregister_chrdev(DELAY_MAJOR, DELAY_DEV_NAME);
}

module_init(delay_module_init);
module_exit(delay_module_exit);

