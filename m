From: Clint Adams <schizo@debian.org>
Date: Thu, 08 Jan 2004 14:12:49 +0000
Subject: Re: wireless ioctl compat
Message-Id: <20040108141249.GA6002@scowler.net>
List-Id: <ultralinux.vger.kernel.org>
References: <20040108052542.GA2049@scowler.net>
In-Reply-To: <20040108052542.GA2049@scowler.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 32-bit wireless tools don't currently work on sparc64.  With the
> following patch, some of the ioctls work.
> SIOCSIWESSID and SIOCGIWESSID do not; the latter results in a buffer
> size error.

This is my second attempt; it has the same problem.  Can anyone help?

--- 2.6.1-rc2/arch/sparc64/kernel/ioctl32.c	2003-12-17 21:59:36.000000000 -0500
+++ wioctl/arch/sparc64/kernel/ioctl32.c	2004-01-08 01:44:39.956489369 -0500
@@ -20,6 +20,7 @@
 #include <asm/openpromio.h>
 #include <asm/audioio.h>
 #include <asm/watchdog.h>
+#include <linux/wireless.h>
 
 /* Use this to get at 32-bit user passed pointers. 
  * See sys_sparc32.c for description about it.
@@ -1144,6 +1145,47 @@
 COMPATIBLE_IOCTL(DM_TARGET_STATUS)
 COMPATIBLE_IOCTL(DM_TARGET_WAIT)
 #endif
+
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
+COMPATIBLE_IOCTL(SIOCGIWRANGE)
+COMPATIBLE_IOCTL(SIOCGIWPRIV)
+COMPATIBLE_IOCTL(SIOCGIWSTATS)
+COMPATIBLE_IOCTL(SIOCSIWSPY)
+COMPATIBLE_IOCTL(SIOCGIWSPY)
+COMPATIBLE_IOCTL(SIOCSIWTHRSPY)
+COMPATIBLE_IOCTL(SIOCGIWTHRSPY)
+COMPATIBLE_IOCTL(SIOCSIWAP)
+COMPATIBLE_IOCTL(SIOCGIWAP)
+COMPATIBLE_IOCTL(SIOCGIWAPLIST)
+COMPATIBLE_IOCTL(SIOCSIWSCAN)
+COMPATIBLE_IOCTL(SIOCGIWSCAN)
+COMPATIBLE_IOCTL(SIOCSIWNICKN)
+COMPATIBLE_IOCTL(SIOCGIWNICKN)
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
+COMPATIBLE_IOCTL(SIOCSIWENCODE)
+COMPATIBLE_IOCTL(SIOCGIWENCODE)
+COMPATIBLE_IOCTL(SIOCSIWPOWER)
+COMPATIBLE_IOCTL(SIOCGIWPOWER)
+
 /* And these ioctls need translation */
 /* NCPFS */
 HANDLE_IOCTL(NCP_IOC_NCPREQUEST_32, do_ncp_ncprequest)
diff -ur 2.6.1-rc2/fs/compat_ioctl.c wioctl/fs/compat_ioctl.c
--- 2.6.1-rc2/fs/compat_ioctl.c	2004-01-08 01:54:38.605875378 -0500
+++ wioctl/fs/compat_ioctl.c	2004-01-08 01:53:28.327517520 -0500
@@ -65,6 +65,7 @@
 #include <linux/ncp_fs.h>
 #include <linux/i2c.h>
 #include <linux/i2c-dev.h>
+#include <linux/wireless.h>
 
 #include <net/sock.h>          /* siocdevprivate_ioctl */
 #include <net/bluetooth/bluetooth.h>
@@ -2970,6 +2971,94 @@
 	return sys_ioctl(fd, cmd, (unsigned long)tdata);
 }
 
+struct  iw_point32
+{
+  compat_caddr_t       pointer;      /* Pointer to the data  (in user space) */
+  __u16         length;         /* number of fields or size in bytes */
+  __u16         flags;          /* Optional params */
+};
+
+union   iwreq_data32
+{
+        /* Config - generic */
+        char            name[IFNAMSIZ];
+        /* Name : used to verify the presence of  wireless extensions.
+         * Name of the protocol/provider... */
+
+        struct iw_point32 essid;          /* Extended network name */
+        struct iw_param nwid;           /* network id (or domain - the cell) */
+        struct iw_freq  freq;           /* frequency or channel :
+                                         * 0-1000 = channel
+                                         * > 1000 = frequency in Hz */
+
+        struct iw_param sens;           /* signal level threshold */
+        struct iw_param bitrate;        /* default bit rate */
+        struct iw_param txpower;        /* default transmit power */
+        struct iw_param rts;            /* RTS threshold threshold */
+        struct iw_param frag;           /* Fragmentation threshold */
+        __u32           mode;           /* Operation mode */
+        struct iw_param retry;          /* Retry limits & lifetime */
+
+        struct iw_point32 encoding;       /* Encoding stuff : tokens */
+        struct iw_param power;          /* PM duration/timeout */
+        struct iw_quality qual;         /* Quality part of statistics */
+
+        struct sockaddr ap_addr;        /* Access point address */
+        struct sockaddr addr;           /* Destination address (hw/mac) */
+
+        struct iw_param param;          /* Other small parameters */
+        struct iw_point32 data;           /* Other large parameters */
+};
+
+struct iwreq32
+{
+        union
+        {
+                char    ifrn_name[IFNAMSIZ];    /* if name, e.g. "eth0" */
+        } ifr_ifrn;
+
+        /* Data part (defined just above) */
+        union   iwreq_data32    u;
+};
+
+static int do_wireless_ioctl(unsigned int fd, unsigned int cmd, unsigned long arg)
+{
+	struct iwreq kiwr;
+	struct iwreq *uiwr;
+	struct iwreq32 *iwr32 = (struct iwreq32 *) arg;
+	mm_segment_t old_fs;
+	u32 data;
+	void *datap;
+        int err;
+
+	switch (cmd) {
+	case SIOCSIWESSID:
+		if (copy_from_user(&kiwr, iwr32, sizeof(struct iwreq32)))
+			return -EFAULT;
+
+		old_fs = get_fs();
+		set_fs (KERNEL_DS);
+		err = sys_ioctl (fd, cmd, (unsigned long)&kiwr);
+		set_fs (old_fs);
+
+		return err;
+	case SIOCGIWESSID:
+		uiwr = compat_alloc_user_space(sizeof(*uiwr));
+		if (copy_in_user(&uiwr->ifr_ifrn.ifrn_name, &iwr32->ifr_ifrn.ifrn_name, IFNAMSIZ))
+			return -EFAULT;
+
+		if (get_user(data, &iwr32->u.essid.pointer))
+			return -EFAULT;
+
+		datap = compat_ptr(data);
+		if (put_user(datap, &uiwr->u.essid.pointer))
+			return -EFAULT;
+
+		return sys_ioctl (fd, cmd, (unsigned long)uiwr);
+	default:
+		return -EINVAL;
+	}
+}
 
 #undef CODE
 #endif
@@ -3134,5 +3223,8 @@
 HANDLE_IOCTL(I2C_RDWR, do_i2c_rdwr_ioctl)
 HANDLE_IOCTL(I2C_SMBUS, do_i2c_smbus_ioctl)
 
+HANDLE_IOCTL(SIOCSIWESSID, do_wireless_ioctl)
+HANDLE_IOCTL(SIOCGIWESSID, do_wireless_ioctl)
+
 #undef DECLARES
 #endif
