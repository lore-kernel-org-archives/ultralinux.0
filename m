From: Eric <ebrower@usa.net>
Date: Thu, 07 Feb 2002 12:41:21 +0000
Subject: Re: [RNDGETENTCNT ioctl]
Message-Id: <marc-linux-ultrasparc-101311460402385@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Add a COMPATIBLE_IOCTL entry for RNDGETENTCNT into ioctl32.c
and you may wish to modify the type of avail_entropy to one
that is explicitly sized (int32_t or somesuch) for cross-platform
friendliness.

Probably something similar to the following as a starting point:

--- ioctl32.c	Fri Feb  1 18:18:21 2002
+++ ioctl32.c.new	Thu Feb  7 12:33:56 2002
@@ -96,6 +96,7 @@
 #include <linux/usb.h>
 #include <linux/usbdevice_fs.h>
 #include <linux/nbd.h>
+#include <linux/random.h>
 
 /* Use this to get at 32-bit user passed pointers. 
    See sys_sparc32.c for description about these. */
@@ -4529,6 +4530,8 @@
 COMPATIBLE_IOCTL(WIOCSTART)
 COMPATIBLE_IOCTL(WIOCSTOP)
 COMPATIBLE_IOCTL(WIOCGSTAT)
+/* Big R */
+COMPATIBLE_IOCTL(RNDGETENTCNT)
 /* Bluetooth ioctls */
 COMPATIBLE_IOCTL(HCIDEVUP)
 COMPATIBLE_IOCTL(HCIDEVDOWN)

E

Marco Colombo <marco@esi.it> wrote:
> Hi, I'd like to read the entropy count via the RNDGETENTCNT
> ioctl, as in the following code:
> 
> 	int     rfd, res;
> 	int     avail_entropy;
> 
> 	...
> 	rfd = open("/dev/random", O_RDONLY);
> 	...
> 	res = ioctl(rfd, RNDGETENTCNT, &avail_entropy);
> 
> this happens to work on ix86, but fails on sparc64, with EINVAL.
> I think I've tracked this down to:
> 
> arch/sparc64/kernel/ioctl32.c
> 
> where RNDGETENTCNT isn't even mentioned. Is there a patch to add support
> for these "big R" ioctls to ioctl32.c?  Can RNDGETENTCNT simply be 
> added to the list of those that get passed to sys_ioctl() without any
> 32->64bit translation? (I'm sorry but I can only vaguely understand the
> issues behind than, so if some hacking is needed, more than just adding
> #includes and case RNDGETENTCNT:, I won't be able to do it myself)
> 
> I'm currently running RH 2.2.19-6.2.12 (sparc64) kernel, please flame me
> if I need to switch to the latest vanilla 2.2.x before further reporting.
> 
> The HW is Ultra 1 145Mhz.
> 
> TIA,
> .TM.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe ultralinux" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

