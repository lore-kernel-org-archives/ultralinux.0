From: Stephan van Hienen <ultra@a2000.nu>
Date: Mon, 04 Mar 2002 21:51:11 +0000
Subject: Re: updated util-linux for ultrasparc redhat 6.2
Message-Id: <marc-linux-ultrasparc-101527869109091@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101519362401241@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101519362401241@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 4 Mar 2002, Kaj-Michael Lang wrote:

> > it goes wrong on the following, does someone know how to fix this/what i'm
> > missing :
>
> Your kernel and/or glibc is old or compiled against an old kernel that does
> not know about pivot_root on sparc (I think, correct me if I'm wrong). You
> really don't need it so just remove it from the makefile and compile, it
> should work.

Ok,

compiles ok now, removed this from util-linux-2.11n-miscfixes.patch :

--- util-linux-2.11n/mount/pivot_root.c.miscfixes       Fri Nov  9
11:49:57 2001
+++ util-linux-2.11n/mount/pivot_root.c Wed Dec 26 16:57:52 2001
@@ -4,16 +4,9 @@


 #include <stdio.h>
-
-#ifdef __ia64__
-# include <sys/syscall.h>
-# define pivot_root(new_root,put_old)
syscall(SYS_pivot_root,new_root,put_old)
-#else
-# include <linux/unistd.h>
-
-static
-_syscall2(int,pivot_root,const char *,new_root,const char *,put_old)
-#endif
+#include <sys/syscall.h>
+#include <unistd.h>
+#define pivot_root(new_root,put_old)
syscall(SYS_pivot_root,new_root,put_old)

 int main(int argc,const char **argv)
 {


