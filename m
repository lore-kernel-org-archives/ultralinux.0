From: Eric <ebrower@usa.net>
Date: Fri, 08 Feb 2002 10:44:56 +0000
Subject: Re: [Re: [RNDGETENTCNT ioctl]]
Message-Id: <marc-linux-ultrasparc-101319395211743@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Marco Colombo <marco@esi.it> wrote:

> I'm pretty willing to grab another tree and compile it, 
> but I'd like to know which one in advance instead of going 
> on by trial & error. The system is Red Hat 6.2 so I need a 
> 2.2.x kernel.

As DaveM mentioned, that was a patch against the 2.4.x series
but the patch is remarkably similar for the 2.2.x kernels.  
This is against the linux_2_2 branch of CVS at vger.samba.org.
If this does not patch cleanly into your RedHat sources, I am
certain a little initiative will get you the rest of the way:

--- ioctl32.c	Thu Jun  7 18:34:11 2001
+++ ioctl32.c.new	Fri Feb  8 10:30:24 2002
@@ -44,6 +44,7 @@
 #include <linux/in6.h>
 #include <linux/ipv6_route.h>
 #include <linux/pci.h>
+#include <linux/random.h>
 #include <net/sock.h>
 
 #include <scsi/scsi.h>
@@ -3147,6 +3148,9 @@
 	case DRM_IOCTL_UNLOCK:
 	case DRM_IOCTL_FINISH:
 #endif /* DRM */
+
+	/* Big R */
+	case RNDGETENTCNT:
 
 	/* Misc. */
 	case 0x41545900:		/* ATYIO_CLKR */

Happy patching, 
E

