From: "David S. Miller" <davem@redhat.com>
Date: Mon, 02 Feb 2004 00:12:58 +0000
Subject: Re: Problem with ioctl(fd, TUNSETIFF, ...)
Message-Id: <20040201161258.361538b2.davem@redhat.com>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 30 Jan 2004 11:21:46 -0800
Eric Brower <ebrower@usa.net> wrote:

> The definition of TUNSETIF is:
> 
>    #define TUNSETIFF     _IOW('T', 202, int)
> 
> indicating the argument is an "int" rather than a "struct ifreq*".  This 
>   trickery (as I understand it) would work on 32-bit systems, but not 
> 64-bit.

Good spotting Eric, this should fix it in 2.4.x

# This is a BitKeeper generated patch for the following project:
# Project Name: Linux kernel tree
# This patch format is intended for GNU patch command version 2.5 or higher.
# This patch includes the following deltas:
#	           ChangeSet	1.1306  -> 1.1307 
#	arch/sparc64/kernel/ioctl32.c	1.45    -> 1.46   
#
# The following is the BitKeeper ChangeSet Log
# --------------------------------------------
# 04/02/01	davem@nuts.davemloft.net	1.1307
# [SPARC64]: Fix TUNSETIFF ioctl compat, it takes an ifreq ptr not an int.
# 
# Thanks to Eric Brower for spotting this.
# --------------------------------------------
#
diff -Nru a/arch/sparc64/kernel/ioctl32.c b/arch/sparc64/kernel/ioctl32.c
--- a/arch/sparc64/kernel/ioctl32.c	Sun Feb  1 16:08:53 2004
+++ b/arch/sparc64/kernel/ioctl32.c	Sun Feb  1 16:08:53 2004
@@ -4524,7 +4524,6 @@
 /* Big T */
 COMPATIBLE_IOCTL(TUNSETNOCSUM)
 COMPATIBLE_IOCTL(TUNSETDEBUG)
-COMPATIBLE_IOCTL(TUNSETIFF)
 COMPATIBLE_IOCTL(TUNSETPERSIST)
 COMPATIBLE_IOCTL(TUNSETOWNER)
 /* Big V */
@@ -5146,6 +5145,7 @@
 HANDLE_IOCTL(SIOCGIFPFLAGS, dev_ifsioc)
 HANDLE_IOCTL(SIOCGIFTXQLEN, dev_ifsioc)
 HANDLE_IOCTL(SIOCSIFTXQLEN, dev_ifsioc)
+HANDLE_IOCTL(TUNSETIFF, dev_ifsioc)
 HANDLE_IOCTL(SIOCETHTOOL, ethtool_ioctl)
 HANDLE_IOCTL(SIOCBONDENSLAVE, bond_ioctl)
 HANDLE_IOCTL(SIOCBONDRELEASE, bond_ioctl)
