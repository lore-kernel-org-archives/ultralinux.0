From: Lennert Buytenhek <buytenh@gnu.org>
Date: Wed, 16 Jan 2002 17:46:46 +0000
Subject: Re: [buytenh@gnu.org: [cry for advice] sparc64 bridging troubles]
Message-Id: <marc-linux-ultrasparc-101120329132208@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101068859405697@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101068859405697@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Fri, Jan 11, 2002 at 12:15:54AM -0800, David S. Miller wrote:

>    This copy_from_user invocation hangs the box solid, every single time.  The
>    arguments it's called with are fffff8001395f910, 00000000effff9f8, 32.  I
>    would think these look OK (and even if they wouldn't I guess they shouldn't
>    hang the box).
> 
> If set_fs(KERNEL_DS) this will hang the box because that means that
> both pointers need to be kernel points.

Whoops, missed that! (I knew it, but didn't realise this could mess
things up)


> The real solution is to move away from SIOCDEVPRIVATE since those
> are deprecated anyways, but you appear to understand this already.
> :-)

Yup.  The attached patch (plus some userspace changes) is what makes
things tick again, but it's not exactly a marvel of beauty.. :(


Thanks a lot!
Lennert


--- linux-2.4.17-br-sparc64/net/bridge/br_device.c.orig	Wed Jan 16 12:36:28 2002
+++ linux-2.4.17-br-sparc64/net/bridge/br_device.c	Wed Jan 16 12:40:22 2002
@@ -23,15 +23,26 @@
 {
 	unsigned long args[4];
 	unsigned long *data;
+	mm_segment_t oldfs = get_fs();
+	int ret;
+	int retval;
 
-	if (cmd != SIOCDEVPRIVATE)
+	if (cmd != SIOCDEVPRIVATE && cmd != SIOCDEVPRIVATE + 3)
 		return -EOPNOTSUPP;
 
 	data = (unsigned long *)rq->ifr_data;
-	if (copy_from_user(args, data, 4*sizeof(unsigned long)))
-		return -EFAULT;
+	set_fs(USER_DS);
+	ret = copy_from_user(args, data, 4*sizeof(unsigned long));
 
-	return br_ioctl(dev->priv, args[0], args[1], args[2], args[3]);
+	retval = -EFAULT;
+	if (ret)
+		goto out;
+
+	retval = br_ioctl(dev->priv, args[0], args[1], args[2], args[3]);
+
+out:
+	set_fs(oldfs);
+	return retval;
 }
 
 static struct net_device_stats *br_dev_get_stats(struct net_device *dev)
--- linux-2.4.17-br-sparc64/arch/sparc64/kernel/ioctl32.c.orig	Wed Jan 16 12:36:05 2002
+++ linux-2.4.17-br-sparc64/arch/sparc64/kernel/ioctl32.c	Wed Jan 16 12:38:07 2002
@@ -472,6 +472,7 @@
 		return -ENODEV;
 
 	strcpy(ifr32.ifr_name, dev->name);
+	dev_put(dev);
 
 	err = copy_to_user((struct ifreq32 *)arg, &ifr32, sizeof(struct ifreq32));
 	return (err ? -EFAULT : 0);
@@ -4605,6 +4606,7 @@
 HANDLE_IOCTL(SIOCGPPPSTATS, dev_ifsioc)
 HANDLE_IOCTL(SIOCGPPPCSTATS, dev_ifsioc)
 HANDLE_IOCTL(SIOCGPPPVER, dev_ifsioc)
+HANDLE_IOCTL(SIOCDEVPRIVATE + 3, dev_ifsioc)
 HANDLE_IOCTL(SIOCGIFTXQLEN, dev_ifsioc)
 HANDLE_IOCTL(SIOCSIFTXQLEN, dev_ifsioc)
 HANDLE_IOCTL(SIOCETHTOOL, ethtool_ioctl)
