From: Xavier Beaudouin <kiwi@oav.net>
Date: Mon, 13 Jul 1998 12:09:29 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531023@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> If Sun can fill up the DIMMS with good price, then I don't need
> to worry about mem upgrade. But from my last experience, it
> will cost you 3-4 times higher than a PC (Intel or Alpha).

This is really a problem... I use 2 alpha and 5 sun sparc boxes... The
main problem is the cost of these memory upgrades since thoses boxes are
second hand...

Seems that some alpha motherboard are now compatible with those cheap PC
memory... That's good, but sun boxes not... This is really a pain I think,
for example in France for a 64Mb upgrade for SS10 I must pay 1000FF 
without the VAT (about $200 !!) a this price I've got about 256 Mb of ram
(okay, in 4 DIMMS) and this price is with the VAT.

Since today, the main problem with Sparc and Alpha boxes is not the CPU (I
don't care, if I need some more CPU power for one usage I add a new Alpha
or Sparc), but the RAM... 

> I am not sure what other PC PCI card that I can put there.
> We have SGI O2s with PCI slots. But I almost cannot put
> any PCI card from retail store, since it is not compatible
> with O2 or there is simply no driver for it (you may develop
> your own, if you really want.). The problem is that these
> SUN and SGI PCI systems are not open-architecture. And there
> market is so small, compare with PC quantity, There are
> almost no third party vendors are interested in develop a
> driver for them. We saw the same the same problem for Apple,
> too.

?? Hugh ? For Apple, I currently use PC video card and some capture card
without any problems, on Linux PPC (this maybe why I don't have any
problems ?). About PCI under non x86 boxes, seems that all my PCI card I
have tested on an Alpha (AlphaStation 4/266) are really working without
any problems : Video (S3, Cirrus, Matrox), Networking (3C900 / 3C590 /
Tulip), Some BUSLOGICS PCI (I don't use them for boot !) and the NCR
compatible PCI SCSI for ASUS...

I think the main problem for PCI card is :

 1- OS drivers for specific hardware... This is the problem
    of the manufacturer _and_ the OS (for example OpenBSD and Linux!)
 2- Some of PCI card use some ROM on it... Good, but allmost time
    this is x86 code... ;-( 
    -> Alpha Box have an x86 bios emulator... What about SGI and SUN ?
       

/Xavier

--
 Cybernet Consulting Associates - I.S.P. & Network Design and Consulting
 Xavier Beaudouin   -   Network Designer & Consultant   -   kiwi@oav.net
 Phone/Fax : +33 (0)1 4734 3366     -      Cellular : +33 (0)6 6026 5108
 Web sites : http://oav.net/  - http://cybernet.fr/  - http://kazar.com/
 [---------------------------------------------------------------------]
There's been no top authority saying what marijuana does to you.  I
really don't know that much about it.  I tried it once but it didn't do
anything to me.
		-- John Wayne
