From: Edwin Kremer <edwin@cs.uu.nl>
Date: Mon, 12 Apr 1999 14:54:30 +0000
Subject: dual-boot Ultra 5 after Solaris JumpStart ?
Message-Id: <marc-linux-ultrasparc-92395702128895@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

I'm having a fight getting both Linux and Solaris to boot on a Ultra 5.

I first install Solaris using network custom JumpStart leaving partitions
5-7 (or 6-8 in Linux, or f-h in bootprom) un-used.
Next I boot the latest UP 1.1.9 (says 1.2 at boot) from the network and
install Linux in the free partitions:

  6 = /dev/hda6 = /
  7 = /dev/hda7 = /usr
  8 = /dev/hda8 = swap

SILO installs in block 0 of /dev/hda6 at the end of the installation
procedure.

In the OpenBoot prom I specify:

	nvalias linux /pci@1f,0/pci@1,1/ide@3,0/disk@0,0:f

and do a:

	boot linux

Next I get:

	SILO
	fatal error: Unable to open filesystem
	Couldn't load /etc/silo.conf
	....
	....
	....

	boot:


Any idea what is going on here? Am I missing something?


Best regards,

-- 
Edwin H. Kremer, senior systems- and network administrator.   <edwin@cs.uu.nl>
Dept. of Computer Science,  Utrecht University, The Netherlands  [WHOIS: ehk3]
-------------------- http://www.cs.uu.nl/people/edwin/ -----------------------
