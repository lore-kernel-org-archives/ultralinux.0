From: "David S. Miller" <davem@redhat.com>
Date: Wed, 01 Sep 1999 14:57:14 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93619828822637@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Wed, 1 Sep 1999 10:45:57 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   For what its worth, I've got XFree86-Sun24-3.3.3.1-52 on a u10 creator,
   and I manage to get this when I replace /etc/X11/X with the LD_PRELOAD
   and such:

   *** Segmentation fault
   Register dump:

    PSR: ff801085 PC: 00027bcc NPC: 00027bd0   Y: 00000000

And what are 0x27bcc, 0x27bd0, and 0x213e0 near in the symbol
table (nm -n /usr/X11R6/bin/Xsun24)... oh yeah, thats right, we ship
stripped binaries don't we :-(  or I suppose you built a non-stripped
image yourself for debugging purposes?  I need the symbol information
to even begin to be able to debug this.

Later,
David S. Miller
davem@redhat.com
