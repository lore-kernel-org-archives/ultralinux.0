From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 14 May 1998 08:22:43 +0000
Subject: Re: Wrong 'w' and 'ps' (bug in procps?)
Message-Id: <marc-linux-ultrasparc-90222356531033@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531022@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531022@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 13 May 1998 19:10:41 +0200 (CEST)
   From: Stephan van Hienen <ddx@cable.a2000.nl>

   hi just installed 1.0.9
   and now this 'bug' ?

Thanks for pointing it out, it is fixed now.  If impatient, unpack the
procps SRPM from the UP-1.0.9 distribution, and perform the following
tasks to get fixed binaries:

1) Add the patch at the end of this mail to your procps tree
2) Rebuild
3) Install
4) Remove /etc/psdevtab
5) Run w, ps, or one of those procps programs once, this will
   rebuild /etc/psdevtab as a side effect

Once done, all the bugs you reported should be gone.

--- proc/devname.c.~1~	Wed May 13 23:26:07 1998
+++ proc/devname.c	Thu May 14 00:11:29 1998
@@ -12,9 +12,9 @@
 #include <unistd.h>
 #include <fcntl.h>
 
-#define __KERNEL__
+/* #define __KERNEL__ */
 #include <linux/kdev_t.h>
-#undef __KERNEL__
+/* #undef __KERNEL__ */
 
 #define DEVDIR		"/dev"
 #define DEVTAB		"psdevtab"
--- w.c.~1~	Fri Feb 13 08:42:38 1998
+++ w.c	Wed May 13 23:46:22 1998
@@ -83,7 +83,7 @@
     if (maxcmd < 3)
 	fprintf(stderr, "warning: screen width %d suboptimal.\n", win.ws_col);
 
-    procs = readproctab(PROC_FILLCMD|PROC_FILLTTY);
+    procs = readproctab(PROC_FILLCMD|PROC_FILLTTY|PROC_FILLUSR);
 
     if (header) {				/* print uptime and headers */
 	print_uptime();
