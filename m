From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>
Date: Thu, 14 Jan 1999 04:37:29 +0000
Subject: A problem with printk?
Message-Id: <marc-linux-ultrasparc-91628874630540@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am trying to do some programming exercice with the kernel of Linux and I want
to start by a small and simple "Hello world" module. But I have something wrong
:-(

I use the kernel 2.2.0-pre5 with module versioning enabled.
Here you have a trace what I did:

bash-2.01# ls
Makefile  hello.c
bash-2.01# cat Makefile 
SHELL = /bin/sh

CC      =/usr/local/bin/sparc64-linux-gcc

hello.o: hello.c
        $(CC) -D__KERNEL__ -DMODULE -O -Wall -I/usr/include -c $< 

bash-2.01# cat hello.c 


#include <linux/autoconf.h>
#if defined(CONFIG_MODVERSIONS) && !defined(MODVERSIONS)
#define MODVERSIONS
#endif

#ifdef MODVERSIONS
#include <linux/modversions.h>
#endif

#include <linux/module.h>

int init_module(void) {
  printk("Hello, Hello, world\n");
  return 0;
}

void cleanup_module(void) {
  printk("Goodbye cruel world\n");
}

/* It is a copy from "Linux device drivers" */

bash-2.01# make
/usr/local/bin/sparc64-linux-gcc -D__KERNEL__ -DMODULE -O -Wall -I/usr/include
-c hello.c 
In file included from /usr/include/asm/system.h:12,
                 from /usr/include/asm/atomic.h:19,
                 from /usr/include/linux/module.h:23,
                 from hello.c:12:
/usr/include/asm/page.h:31: warning: `clear_page' redefined
/usr/include/linux/modules/sparc64_ksyms.ver:120: warning: this is the location
of the previous definition

bash-2.01# /etc/rc.d/init.d/syslog stop  
Shutting down system loggers: syslogd klogd 

/* I do not want to mess with them right now. I should be able to
   get the messages with /proc/kmsg, shouldn't I? */

bash-2.01# /sbin/insmod hello.o
bash-2.01# cat /proc/kmsg 

/* I had to return with C-C */

bash-2.01# cat /proc/modules 
hello                    280   0 (unused)
bash-2.01# /sbin/rmmod hello
bash-2.01# cat /proc/kmsg 

/* like before C-C to exit */
bash-2.01# cat /proc/modules 
bash-2.01# 

A last thing 
bash-2.01# ls -l /sbin/*mod*
 (...)
lrwxrwxrwx   1 root     root            8 Jan 13 18:46 /sbin/insmod -> insmod64
-rwxr-xr-x   2 root     root        33232 May  8  1998 /sbin/insmod.old
/* It is not so old but it did the same thing that insmod64. By the way, which
is the difference between insmod64 and the insmod (now insmod.old) that was
installed with UP 1.1.9 (kernel 2.1.106) */
-rwxr-xr-x   1 root     root       243892 May  8  1998 /sbin/insmod.static
-rwxr-xr-x   1 root     root        37168 May  8  1998 /sbin/insmod64
-rwxr-xr-x   1 root     root       245324 May  8  1998 /sbin/insmod64.static
 (...)
-rwxr-xr-x   2 root     root        33232 May  8  1998 /sbin/rmmod
bash-2.01# 

/* :-( I have to change those flags */


If someone can give me a hint about what is wrong I will apreciate very much. I
really don't think printk is buggy but I hadn't no other subject.

Regards,
Marc
