From: "David S. Miller" <davem@redhat.com>
Date: Sat, 18 Sep 1999 01:41:51 +0000
Subject: Re: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93762033815547@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93761559712738@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93761559712738@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Fri, 17 Sep 1999 20:44:54 -0400
   From: "David A. Cooley" <n5xmt@bellsouth.net>

   Anyone know where I can get a firmware upgrade for the Qlogic SBUS
   cards that will flash them under Linux??? (or how to do it from the
   boot prompt on an Ultra II?????)

It needs to be loaded by the driver, so you'd need to update the
firmware in the drivers/scsi/qlogicpti_asm.h source file in the
kernel, then rebuild the kernel with the new driver and reboot.

Matt Jacob has newer firmware in his ISP driver collection, but I have
not tried nor tested it on any of my SBUS isp cards so I cannot say if
it works or not.  In the past, my attempts to load newer firmware or
allow firmware loading on newer cards has resulted in one problem or
another and this is why it is not updated in the latest drivers, so
be forwarned.

Later,
David S. Miller
davem@redhat.com
