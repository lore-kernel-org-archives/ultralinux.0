From: "David S. Miller" <davem@redhat.com>
Date: Tue, 05 Oct 1999 13:22:46 +0000
Subject: Re: tulip under linux sparc?
Message-Id: <marc-linux-ultrasparc-93912976030407@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93909789806109@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93909789806109@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Tue, 05 Oct 1999 09:10:32 -0400
   From: David Cooley <n5xmt@bellsouth.net>

   It's not possible because the netgear card has a bios/microcode
   setup for a PC architecture.  The Sun has to have a card that is
   designed for the OBP architecture.

_Please_ don't spread around misinformation like this, it simply isn't
true.

The issue is that these NetGEAR cards are LiteON Tulip based, and not
supported by the de4x5 driver, but the tulip.c one which I haven't
done the "endianness/64-bit" portability fixes to.

I use all sorts of Tulip based cards, even quad-tulip Adaptec ones,
all the time in my Ultra/PCI machines.  All of them have x86 bios's,
which mean you just can't boot from them under OBP, nothing more.

Later,
David S. Miller
davem@redhat.com
