From: =?iso-8859-1?Q?Arnd_Bergmann?= <arnd@arndb.de>
Date: Tue, 25 May 2004 23:10:01 +0000
Subject: =?iso-8859-1?Q?Re:_[PATCH_3/4]_Consolidate_sys32_select?=
Message-Id: <26879984$108552555440b3ce3274ba74.46765993@config21.schlund.de>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-1?Q?Martin_Josefsson?= <gandalf@wlug.westbo.se>
Cc: =?iso-8859-1?Q? David_S=2E_Miller ?= <davem@redhat.com>, arnd@arndb.de, linux-kernel@vger.kernel.org, ultralinux@vger.kernel.org


Martin Josefsson <gandalf@wlug.westbo.se> schrieb am 26.05.2004,
00:29:13:

> You mean in compat_sys_select() ?
> compat_ptr() takes an u32 as argument, needs casting, ugly.
> But you want it done that way?

When using compat_ptr properly, you don't need any casts,
see the patch below (the patch is probably messed up by my 
broken mailer, but you get the picture).

> I see this problem when compat_sys_select() is called directly from
> syscall, not via sunos_select() which uses compat_ptr()

Which brings us to a more global question on the syscall handlers.

There are currently different strategies on how to handle argument
extension for the compat syscall handlers. s390 always goes through
assembly wrappers (arch/s390/kernel/compat_wrapper.S), ppc64 does
something similar in C (arch/ppc64/kernel/sys_ppc32.c). Since the
other architectures appear to need conversion only for potentially 
negative integer values (and sparc64 pointers), it's far less 
consistant there.

There may be some more corner cases (e.g. reporting a wrong error
value for a negative syscall arguments) where this goes bad on one
architecture or another. This makes me wonder if the s390 wrapper
mechanism should be generalized to get on the safe side here. I
already have a sed script to generate the s390 compat_wrapper.S
from the syscall prototypes, but there should be a way to do the
same in an architecture independent way.

      Arnd <><

=== fs/compat.c 1.24 vs edited ==--- 1.24/fs/compat.c	Sat May 22 06:31:47 2004
+++ edited/fs/compat.c	Wed May 26 00:57:49 2004
@@ -1300,13 +1300,15 @@
 
 asmlinkage long
 compat_sys_select(int n, compat_ulong_t __user *inp, compat_ulong_t
__user *outp,
-		compat_ulong_t __user *exp, struct compat_timeval __user *tvp)
+		compat_ulong_t __user *exp, compat_uptr_t utv)
 {
 	fd_set_bits fds;
+	struct compat_timeval __user *tvp;
 	char *bits;
 	long timeout;
 	int ret, size, max_fdset;
 
+	tvp = compat_ptr(utv);
 	timeout = MAX_SCHEDULE_TIMEOUT;
 	if (tvp) {
 		time_t sec, usec;
