From: rick@dgii.com (Rick Richardson)
Date: Thu, 25 Jun 1998 23:44:36 +0000
Subject: Boot of 1.0.9 fails on Sun Ultra 1
Message-Id: <marc-linux-ultrasparc-90222357631030@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Dear UltraPenguins:

A couple of us here though we could turn the Ultra Sparc into
the worlds hottest RAS server.

We dug up an UltraSparc machine here that identifies itself on
the boot screen as:

	Sun Ultra 1 UPA/PCI (UltraSPARC-II 248 Mhz)

It has 128 MB's of RAM in it.

We downloaded the UltraPenguin 1.0.9 distribution and set up
arp, rarp, and tftpd with the boot image:

-rw-r--r--   1 rick     users     2582793 May  2 20:57 /tftpboot/up/tftpboot.img
lrwxrwxrwx   1 rick     users          15 Jun 25 17:52 /tftpboot/C75608DD -> up/tftpboot.img


At the "ok" prompt, we booted off the network using the following
command.  The machine sucked down the boot image from the tftp server,
and then ended with an error message "Couldn't get translation
property".  Here is what is on the screen:

	ok boot /pci@1f,4000/pci@4/SUNW,hme@0,1
	Boot device: /pci@1f,4000/pci@4/SUNW,hme@0,1      File and args:
	27a800 TILO

	Couldn't get translation property
	Program terminated
	ok


Does anybody know what this means and how to correct the problem?

We'd really like to be able to port the drivers for some of our
new PCI boards from linux/i386 to the UltraSparc.

-Rick

P.S. please reply to me as well as to the list, as I'm not sure my
subscription to this list has been processed yet, and I don't
know where to find an archive of this list to look at if I
miss the answer.


-- 
Rick Richardson        Sr. Techno-something   Its 1993 again, and I don't have
Digi Intl.             Email: rick@dgii.com   a Web page.
11001 Bren Rd. East    Fax:   (612) 912-4955  
Minnetonka, MN 55343   Tel:   (612) 912-3212  
