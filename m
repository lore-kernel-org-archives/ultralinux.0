From: David Cooley <n5xmt@bellsouth.net>
Date: Tue, 05 Oct 1999 15:04:34 +0000
Subject: Re: tulip under linux sparc?
Message-Id: <marc-linux-ultrasparc-93913690906872@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93909789806109@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93909789806109@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 06:22 AM 10/5/1999 -0700, David S. Miller wrote:
>    Date:   Tue, 05 Oct 1999 09:10:32 -0400
>    From: David Cooley <n5xmt@bellsouth.net>
>
>    It's not possible because the netgear card has a bios/microcode
>    setup for a PC architecture.  The Sun has to have a card that is
>    designed for the OBP architecture.
>
>_Please_ don't spread around misinformation like this, it simply isn't
>true.
>
>The issue is that these NetGEAR cards are LiteON Tulip based, and not
>supported by the de4x5 driver, but the tulip.c one which I haven't
>done the "endianness/64-bit" portability fixes to.
>
>I use all sorts of Tulip based cards, even quad-tulip Adaptec ones,
>all the time in my Ultra/PCI machines.  All of them have x86 bios's,
>which mean you just can't boot from them under OBP, nothing more.


Hmm... Didn't know that...
Someone had asked on one of Newsgroups I frequent a while back about using 
PCI cards from a PC because they were less expensive, and I said to try it, 
they may work... PCI is PCI.  I got blasted by about 6 people with the OBP 
compliant thing...  Other than a SCSI card used for the boot disk or a net 
card used for booting on a diskless client, would there be any restrictions 
on using PC based PCI cards of any type?

=============================David Cooley N5XMT Internet: N5XMT@bellsouth.net
Packet: N5XMT@KQ4LO.#INT.NC.USA.NA T.A.P.R. Member #7068
We are Borg... Prepare to be assimilated!
=============================
