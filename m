From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 13 May 1998 11:36:45 +0000
Subject: Re: Booting An Ultra Sparc 10
Message-Id: <marc-linux-ultrasparc-90222356531020@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531012@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531012@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
   Date: 	Wed, 13 May 1998 13:29:14 +0200 (MET DST)

   > and are these supported by the kernel ?  (can i use a 3com 3c900
   > (100mbit tcpip))

   Well, it might and might not work. The issue is that if the adapter
   needs to be initialized by the on-card BIOS, you'll be in big
   trouble: Ultra10 has no Intel emulator nor is it currently
   implemented in Linux kernel.  That's one thing. The other thing is
   that you need to hack up a bit the driver, at least check it if it
   is 64bit clean and does not use any intelisms.

It doesn't need BIOS code to run, all 3com cards work on my Cobalt
qube and we don't do any Intel emulation for PCI cards ;-)

It is just a matter of one of us getting the time to do the (perhaps)
minimal porting work to get it going.

As of right now aic7xxx, ncrxxx, and Tulip PCI cards all work just
fine on UltraPenguin.

It turns out these networking cards only need Intel BIOS code to run
when you want to netboot using one of them.

Later,
David S. Miller
davem@dm.cobaltmicro.com
