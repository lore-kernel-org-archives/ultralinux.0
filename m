From: Alessandro Rubini <rubini@gnu.org>
Date: Mon, 14 Aug 2000 21:18:45 +0000
Subject: [PATCH] __u64 in user space
Message-Id: <marc-linux-ultrasparc-96628836405720@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Disclaimer: I'm not subcribed to this list.

I'm currently looking at the data types used in the kernel/user
interface, and I think include/asm-sparc64/types.h has a problem in
how the __u64 and __s64 symbols are defined. Since user space has
32-bit-wide longs, they end out being 32 bits wide. A quick check
shows that the type is seldom use, and it may never have appeared in
sparc64 user space.

I think this patch is good, but I'm not an expert of sparc issues.
(this is taken against the current 2.4 CVS, but the same problem
applies to 2.2).

--- ./types.h.orig	Mon Aug 14 23:13:33 2000
+++ ./types.h	Mon Aug 14 23:14:37 2000
@@ -26,8 +26,13 @@
 typedef __signed__ int __s32;
 typedef unsigned int __u32;
 
+#ifdef __sparc_v9__
 typedef __signed__ long __s64;
 typedef unsigned long __u64;
+#else
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
 
 #ifdef __KERNEL__
 
