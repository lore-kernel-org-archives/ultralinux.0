From: "David S. Miller" <davem@redhat.com>
Date: Fri, 12 Nov 1999 11:13:44 +0000
Subject: Re: dhcpd on sparc64
Message-Id: <marc-linux-ultrasparc-94240881202917@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94240279630121@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94240279630121@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Pete Zaitcev <zaitcev@metabyte.com>
   Date:   Thu, 11 Nov 1999 17:11:13 -0800 (PST)

   How do you cope with a userland pointer being of different size?

The same way we handle any other type size difference
in system call interfaces.  Please try this patch, it
is against 2.2.x but it should be easy to integrate it
into a 2.3.x tree as well:

--- arch/sparc64/kernel/sys_sparc32.c.~1~	Wed Oct  6 02:42:51 1999
+++ arch/sparc64/kernel/sys_sparc32.c	Fri Nov 12 03:08:19 1999
@@ -44,6 +44,7 @@
 #include <linux/personality.h>
 #include <linux/stat.h>
 #include <linux/timex.h>
+#include <linux/filter.h>
 
 #include <asm/types.h>
 #include <asm/ipc.h>
@@ -2656,6 +2657,48 @@
 	return len;
 }
 
+extern asmlinkage int sys_setsockopt(int fd, int level, int optname,
+				     char *optval, int optlen);
+
+asmlinkage int sys32_setsockopt(int fd, int level, int optname,
+				char *optval, int optlen)
+{
+	if (optname = SO_ATTACH_FILTER) {
+		struct sock_fprog32 {
+			__u16 len;
+			__u32 filter;
+		} *fprog32 = (struct sock_fprog32 *)optval;
+		struct sock_fprog kfprog;
+		struct sock_filter *kfilter;
+		unsigned int fsize;
+		mm_segment_t old_fs;
+		__u32 uptr;
+		int ret;
+
+		if (get_user(kfprog.len, &fprog32->len) ||
+		    __get_user(uptr, &fprog32->filter))
+			return -EFAULT;
+		kfprog.filter = (struct sock_filter *)A(uptr);
+		fsize = kfprog.len * sizeof(struct sock_filter);
+		kfilter = (struct sock_filter *)kmalloc(fsize, GFP_KERNEL);
+		if (kfilter = NULL)
+			return -ENOMEM;
+		if (copy_from_user(kfilter, kfprog.filter, fsize)) {
+			kfree(kfilter);
+			return -EFAULT;
+		}
+		kfprog.filter = kfilter;
+		old_fs = get_fs();
+		set_fs(KERNEL_DS);
+		ret = sys_setsockopt(fd, level, optname,
+				     (char *)&kfprog, sizeof(kfprog));
+		set_fs(old_fs);
+		kfree(kfilter);
+		return ret;
+	}
+	return sys_setsockopt(fd, level, optname, optval, optlen);
+}
+
 /* Argument list sizes for sys_socketcall */
 #define AL(x) ((x) * sizeof(u32))
 static unsigned char nargs[18]={AL(0),AL(3),AL(3),AL(3),AL(2),AL(3),
@@ -2674,8 +2717,6 @@
 extern asmlinkage int sys_recv(int fd, void *ubuf, size_t size, unsigned flags);
 extern asmlinkage int sys32_recvfrom(int fd, u32 ubuf, __kernel_size_t32 size,
 				     unsigned flags, u32 addr, u32 addr_len);
-extern asmlinkage int sys_setsockopt(int fd, int level, int optname,
-				     char *optval, int optlen);
 extern asmlinkage int sys32_getsockopt(int fd, int level, int optname,
 				       u32 optval, u32 optlen);
 
@@ -2726,7 +2767,7 @@
 		case SYS_SHUTDOWN:
 			return sys_shutdown(a0,a1);
 		case SYS_SETSOCKOPT:
-			return sys_setsockopt(a0, a1, a[2], (char *)A(a[3]), a[4]);
+			return sys32_setsockopt(a0, a1, a[2], (char *)A(a[3]), a[4]);
 		case SYS_GETSOCKOPT:
 			return sys32_getsockopt(a0, a1, a[2], a[3], a[4]);
 		case SYS_SENDMSG:
