From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 27 May 1998 10:07:35 +0000
Subject: Re: Install of silo fails on ultra-2
Message-Id: <marc-linux-ultrasparc-90222356531085@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531081@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531081@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 27 May 1998 11:45:53 +0200
   From: Kris Boulez <kris@belbone.be>

   Quoting David S. Miller (davem@dm.cobaltmicro.com):
   > I've seen this problem.  You can still salvage the installation by
   > booting the tftpboot image with root=/dev/xxx where xxx is the root
   > partition device.  Then once it is up, login as root and run
   > "/sbin/silo" then you can reboot from the disk just fine.
   > 
   Booting with "boot net linux root=/dev/sda1" hangs at 

Sorry, my fault.  Usually I also have a vmlinux.aout image in my
netboot install area too, and _this_ is what I use to recover from
failed silo invocations during an install.

I've built such an image that should hopefully work just fine for this
purpose.  Get it from:

ftp.cobaltmicro.com:/pub/users/davem/images/vmlinux.aout

Good luck.

Later,
David S. Miller
davem@dm.cobaltmicro.com
