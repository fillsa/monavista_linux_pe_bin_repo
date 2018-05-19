/*
 * A module that serves /dev/ptimer.  mknod /dev/ptimer c 240 0, for now.
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
 * . extend to suport multiple ptimer's.  Use an array of priv_data structs.
 * . add phase support.  It should be based on the real time.
 * . add mode support.  What to do when overflow happens?  skip, do next
 *   immediately, do next immediately with phase shift.  The default
 *   is to do next immediately.
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

#include <asm/uaccess.h>

/*
 * IOCTL CMD
 */
#define		PTIMER_SET_PERIOD	0
#define		PTIMER_GET_PERIOD	1

/*
 * CONFIGURE
 */
#define		PTIMER_MAJOR		240
#define		PTIMER_DEV_NAME		"ptimer"

#define		DEFAULT_PERIOD		100000		/* really long */

extern unsigned long volatile jiffies;

#define	PANIC	printk

struct ptimer_private {
	int		init_flag;
	int 		count;
	unsigned long	next_expire;
	unsigned long 	period;
	unsigned long 	phase;
	unsigned	mode;
	struct task_struct *	client;
};

static spinlock_t ptimer_lock;
static struct ptimer_private priv_data;

static int 
ptimer_open(struct inode * inode, struct file * file)
{
	if (priv_data.init_flag)
		return -EBUSY;

	priv_data.mode = 0;
	priv_data.count = 0;
	priv_data.period = DEFAULT_PERIOD;
	priv_data.init_flag = 1;
	priv_data.client = current;
	priv_data.phase = jiffies;
	priv_data.next_expire = priv_data.phase + priv_data.period;

	file->private_data = &priv_data;

	return 0;
}

static int
ptimer_release(struct inode * inode, struct file * file)
{
	priv_data.init_flag = 0;
	return 0;
}

static int 
ptimer_ioctl(struct inode * inode, struct file * file,
		unsigned int cmd, unsigned long arg)
{
	ulong flags;
	ulong temp;
	struct ptimer_private *priv = 
		(struct ptimer_private *) file->private_data;

	switch (cmd) {
		case PTIMER_SET_PERIOD:
			spin_lock_irqsave(&ptimer_lock, flags);
			priv->period = arg;
			temp = (jiffies - priv->phase) / priv->period + 1;
			priv->next_expire = priv->phase + priv->period * temp;
			spin_unlock_irqrestore(&ptimer_lock, flags);
			return 0;

		case PTIMER_GET_PERIOD:
			return put_user(priv->period, (ulong*)arg);
	}

	return -EINVAL;
}

static ssize_t
ptimer_read(struct file * file, char * buf, size_t count, loff_t *x)
{
	struct ptimer_private *priv = 
		(struct ptimer_private *) file->private_data;
	ulong flags;
	int mycount;

	if (count != sizeof(int)) return -EINVAL;

	if (priv->count < 0) 
		PANIC("ptimer_read: Unexpected  negative count!");

	spin_lock_irqsave(&ptimer_lock, flags);
	mycount = priv->count;
	if (priv->count == 0) {
		current->state = TASK_INTERRUPTIBLE;
	} else {
		priv->count --;
	}
	spin_unlock_irqrestore(&ptimer_lock, flags);

	if (mycount == 0) {
		schedule();
	
		/* we should have some thing waiting for us */
		spin_lock_irqsave(&ptimer_lock, flags);
		mycount = priv->count--;
		spin_unlock_irqrestore(&ptimer_lock, flags);
	} 

	put_user(mycount, (ulong*)buf);
	return sizeof(int);
}

static ssize_t
ptimer_write(struct file * file, const char * buf, size_t count, loff_t *x)
{
	struct ptimer_private *priv = 
		(struct ptimer_private *) file->private_data;
	int new_count;

	if (count != sizeof(int)) return -EINVAL;

	get_user(new_count, (int*)buf);

	if (new_count < 0) return -EINVAL;

	priv->count = new_count;
	return sizeof(int);
}

static struct file_operations ptimer_fops = {
	read:	ptimer_read,
	write:	ptimer_write,
	ioctl:	ptimer_ioctl,
	open:	ptimer_open,
	release: ptimer_release
};

static struct tq_struct ptimer_bh_task;

static void ptimer_do_bh(void *data)
{
	queue_task(&ptimer_bh_task, &tq_timer);

	if (priv_data.init_flag) {
		if (jiffies > priv_data.next_expire) 
			PANIC("ptimer_do_bh: jiffies (%lu) is greater than next_expire (%lu).\n", 
					jiffies, priv_data.next_expire);
		if (jiffies >= priv_data.next_expire) {
			priv_data.next_expire += priv_data.period;
			if (priv_data.count++ == 0) 
				wake_up_process(priv_data.client);
		}
	}
}

static int __init 
ptimer_module_init(void)
{
	if (register_chrdev(PTIMER_MAJOR, PTIMER_DEV_NAME, &ptimer_fops)) {
		printk(KERN_ERR "ptimer: register_chrdev failed, MAJOR = %d.\n",
				PTIMER_MAJOR);
		return -EIO;
	}

	ptimer_bh_task.routine = ptimer_do_bh;
	ptimer_bh_task.data = 0;
	ptimer_bh_task.sync = 0;
	queue_task(&ptimer_bh_task, &tq_timer);

	return 0;
}

static void __exit 
ptimer_module_exit(void)
{
	ulong flags;

	spin_lock_irqsave(&tqueue_lock, flags);
	/* this is a safe del even if it is already removed */
	list_del(&ptimer_bh_task.list);		
	spin_unlock_irqrestore(&tqueue_lock, flags);

	unregister_chrdev(PTIMER_MAJOR, PTIMER_DEV_NAME);
}

module_init(ptimer_module_init);
module_exit(ptimer_module_exit);

