From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 26 Jul 1998 00:54:12 +0000
Subject: Re: problems booting an Ultra5...
Message-Id: <marc-linux-ultrasparc-90222358531080@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531074@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531074@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 24 Jul 1998 19:43:18 +0200 (CEST)
   From: Stephan van Hienen <ddx@cable.a2000.nl>

   try to disconnect your cdrom 

   here my cdrom also does not work (ultra 10)

   just gives on boot :

These boot problems should not show up with the latest CVS kernel.

   mount /dev/hdc /mnt/cdrom 

   ATAPI device hdc:
     Unknown Error Type: No sense data -- (Sense key=0x00)
     Medium not present -- (asc=0x3a, ascq=0x00)
     The failed "Test Unit Ready" packet command was:
     "00 00 00 00 00 00 00 00 00 00 00 00 "
   cdrom: open failed.                   

   (this is kernel 2.1.106)

   2.1.109 just dies on booting (bad video i think, cause i see big letter
   for about 2sec)

Here I get a total lockup and as mentioned I am looking into this.

I would also suggest trying the latest CVS on sparc64 to see if the
video problem goes away, it should no longer be present but if it is
we want to know about it and get the information necessary from you to
begin working on a fix.

Later,
David S. Miller
davem@dm.cobaltmicro.com
