From: Shannon <shendrix@escape.widomaker.com>
Date: Tue, 14 Jul 1998 01:44:51 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531036@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


In message <199807130638.XAA09243@dm.cobaltmicro.com>, "David S. Miller" writes
:

>    Date: 	Mon, 13 Jul 1998 02:27:27 -0400
>    From: Qiru Zhou <qzhou@research.bell-labs.com>
> 
>    I am not sure what other PC PCI card that I can put there.  We have
>    SGI O2s with PCI slots. But I almost cannot put any PCI card from
>    retail store, since it is not compatible with O2 or there is simply
>    no driver for it (you may develop your own, if you really want.).
> 
> As far as I've seen, any PCI card I've thrown into one of my Ultra's
> was found on the bus and would work just fine once I did the driver
> porting work.  The only part where anything is problematic is where a
> card has complex x86 firmware, and this matters really only for a
> device which you'd like to boot off of.  But all the Ultra/PCI systems
> have on board bootable devices with open-firmware on them so it's a
> non-issue.


On this note, does Sun have anything that will emulate x86 BIOS?

My Alphastation runs the BIOS for all my PCI cards via emulation
in the ROM during bootup.

--
csh - shendrix@widomaker.com - http://www.widomaker.com/~shendrix/myresume.html
----------------------------------------------------------------------
"Meddle not in the affairs of Wizards, for thou art crunchy, and
taste good with ketchup."
