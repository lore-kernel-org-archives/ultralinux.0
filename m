From: "David S. Miller" <davem@redhat.com>
Date: Tue, 13 Jan 2004 23:42:30 +0000
Subject: Re: wireless ioctl compat
Message-Id: <20040113154230.20294eae.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
References: <20040108052542.GA2049@scowler.net>
In-Reply-To: <20040108052542.GA2049@scowler.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 8 Jan 2004 09:12:49 -0500
Clint Adams <schizo@debian.org> wrote:

> > 32-bit wireless tools don't currently work on sparc64.  With the
> > following patch, some of the ioctls work.
> > SIOCSIWESSID and SIOCGIWESSID do not; the latter results in a buffer
> > size error.
> 
> This is my second attempt; it has the same problem.  Can anyone help?

Give this a try.

=== fs/compat_ioctl.c 1.13 vs edited ==--- 1.13/fs/compat_ioctl.c	Mon Dec 29 13:37:42 2003
+++ edited/fs/compat_ioctl.c	Tue Jan 13 15:44:23 2004
@@ -65,6 +65,7 @@
 #include <linux/ncp_fs.h>
 #include <linux/i2c.h>
 #include <linux/i2c-dev.h>
+#include <linux/wireless.h>
 
 #include <net/sock.h>          /* siocdevprivate_ioctl */
 #include <net/bluetooth/bluetooth.h>
@@ -2970,6 +2971,48 @@
 	return sys_ioctl(fd, cmd, (unsigned long)tdata);
 }
 
+struct compat_iw_point {
+	compat_caddr_t pointer;
+	__u16 length;
+	__u16 flags;
+};
+
+static int do_wireless_ioctl(unsigned int fd, unsigned int cmd, unsigned long arg)
+{
+	struct iwreq *iwr, *iwr_u;
+	struct iw_point *iwp;
+	struct compat_iw_point *iwp_u;
+	compat_caddr_t pointer;
+	__u16 length, flags;
+
+	iwr_u = (struct iwreq *) compat_ptr(arg);
+	iwp_u = (struct compat_iw_point *) &iwr_u->u.data;
+	iwr = compat_alloc_user_space(sizeof(*iwr));
+	if (iwr = NULL)
+		return -ENOMEM;
+
+	iwp = &iwr->u.data;
+
+	if (verify_area(VERIFY_WRITE, iwr, sizeof(*iwr)))
+		return -EFAULT;
+
+	if (__copy_in_user(&iwr->ifr_ifrn.ifrn_name[0],
+			   &iwr_u->ifr_ifrn.ifrn_name[0],
+			   sizeof(iwr->ifr_ifrn.ifrn_name)))
+		return -EFAULT;
+
+	if (__get_user(pointer, &iwp_u->pointer) ||
+	    __get_user(length, &iwp_u->length) ||
+	    __get_user(flags, &iwp_u->flags))
+		return -EFAULT;
+
+	if (__put_user(compat_ptr(pointer), &iwp->pointer) ||
+	    __put_user(length, &iwp->length) ||
+	    __put_user(flags, &iwp->flags))
+		return -EFAULT;
+
+	return sys_ioctl(fd, cmd, (unsigned long) iwr);
+}
 
 #undef CODE
 #endif
@@ -3133,6 +3176,20 @@
 HANDLE_IOCTL(I2C_FUNCS, w_long)
 HANDLE_IOCTL(I2C_RDWR, do_i2c_rdwr_ioctl)
 HANDLE_IOCTL(I2C_SMBUS, do_i2c_smbus_ioctl)
+/* wireless */
+HANDLE_IOCTL(SIOCGIWRANGE, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCSIWSPY, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWSPY, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCSIWTHRSPY, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWTHRSPY, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWAPLIST, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWSCAN, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCSIWESSID, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWESSID, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCSIWNICKN, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWNICKN, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCSIWENCODE, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWENCODE, do_wireless_ioctl)
 
 #undef DECLARES
 #endif
=== include/linux/compat_ioctl.h 1.12 vs edited ==--- 1.12/include/linux/compat_ioctl.h	Tue Jan 13 15:04:20 2004
+++ edited/include/linux/compat_ioctl.h	Tue Jan 13 15:44:46 2004
@@ -686,3 +686,34 @@
 COMPATIBLE_IOCTL(I2C_PEC)
 COMPATIBLE_IOCTL(I2C_RETRIES)
 COMPATIBLE_IOCTL(I2C_TIMEOUT)
+/* wireless */
+COMPATIBLE_IOCTL(SIOCSIWCOMMIT)
+COMPATIBLE_IOCTL(SIOCGIWNAME)
+COMPATIBLE_IOCTL(SIOCSIWNWID)
+COMPATIBLE_IOCTL(SIOCGIWNWID)
+COMPATIBLE_IOCTL(SIOCSIWFREQ)
+COMPATIBLE_IOCTL(SIOCGIWFREQ)
+COMPATIBLE_IOCTL(SIOCSIWMODE)
+COMPATIBLE_IOCTL(SIOCGIWMODE)
+COMPATIBLE_IOCTL(SIOCSIWSENS)
+COMPATIBLE_IOCTL(SIOCGIWSENS)
+COMPATIBLE_IOCTL(SIOCSIWRANGE)
+COMPATIBLE_IOCTL(SIOCSIWPRIV)
+COMPATIBLE_IOCTL(SIOCGIWPRIV)
+COMPATIBLE_IOCTL(SIOCSIWSTATS)
+COMPATIBLE_IOCTL(SIOCGIWSTATS)
+COMPATIBLE_IOCTL(SIOCSIWAP)
+COMPATIBLE_IOCTL(SIOCGIWAP)
+COMPATIBLE_IOCTL(SIOCSIWSCAN)
+COMPATIBLE_IOCTL(SIOCSIWRATE)
+COMPATIBLE_IOCTL(SIOCGIWRATE)
+COMPATIBLE_IOCTL(SIOCSIWRTS)
+COMPATIBLE_IOCTL(SIOCGIWRTS)
+COMPATIBLE_IOCTL(SIOCSIWFRAG)
+COMPATIBLE_IOCTL(SIOCGIWFRAG)
+COMPATIBLE_IOCTL(SIOCSIWTXPOW)
+COMPATIBLE_IOCTL(SIOCGIWTXPOW)
+COMPATIBLE_IOCTL(SIOCSIWRETRY)
+COMPATIBLE_IOCTL(SIOCGIWRETRY)
+COMPATIBLE_IOCTL(SIOCSIWPOWER)
+COMPATIBLE_IOCTL(SIOCGIWPOWER)
