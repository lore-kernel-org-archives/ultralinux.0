From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Mon, 13 Jul 1998 06:38:56 +0000
Subject: Re: Ultra AXmp
Message-Id: <marc-linux-ultrasparc-90222358531021@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531013@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531013@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Mon, 13 Jul 1998 02:27:27 -0400
   From: Qiru Zhou <qzhou@research.bell-labs.com>

   I am not sure what other PC PCI card that I can put there.  We have
   SGI O2s with PCI slots. But I almost cannot put any PCI card from
   retail store, since it is not compatible with O2 or there is simply
   no driver for it (you may develop your own, if you really want.).

Whats the problem?  I have off the shelf 3com and Tulip PCI ethernet
cards, and off the shelf Adaptec and NCR scsi cards, in my UltraSPARC
PCI systems here.  (I've also played around with a Matrox M-II card in
them as well) In fact one of my PCI Ultra's is a router into a test
subnet I have, using a 4-port Tulip card.

Just about any existing Linux PCI driver can be made to work in about
15 minutes of hacking done by one of the developers who work on the
port.

All your "open architecture" claims are false as well, you can get
complete documentation on Sun's bus, cpu, and device programming
interfaces on the PCI Ultra's and timing specs are available as well.

As far as I've seen, any PCI card I've thrown into one of my Ultra's
was found on the bus and would work just fine once I did the driver
porting work.  The only part where anything is problematic is where a
card has complex x86 firmware, and this matters really only for a
device which you'd like to boot off of.  But all the Ultra/PCI systems
have on board bootable devices with open-firmware on them so it's a
non-issue.

So don't give the PCI Ultra's and the O2's a bad rap just because the
support list Solaris and IRIX have are so small for off the shelf PC
cards.  It is not an indication of a sub-standard PCI bus
implementation at all, it's just plain lack of OS support from these
vendors, no more no less.

Later,
David S. Miller
davem@dm.cobaltmicro.com
