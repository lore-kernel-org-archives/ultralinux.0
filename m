From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Wed, 14 Oct 1998 19:18:36 +0000
Subject: installation trouble
Message-Id: <marc-linux-ultrasparc-90843265407437@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have tried to install UltraLinux over the network with a "boot net"
command but have had no success.  When I type "boot net" the computer
begins to download the "tftpboot.img" and then begins to boot the
kernel, however it hangs part way through.  This is where it dies.

Sparc Zilog8530 serial driver version 1.20
Kernel panic: zilog: address property
Press L1-A to return to the boot prom

...but at this point the computer is frozen solid and a message in the 
normal console font reads...

WHOOPS: proplen for address was -1, need multiple of 4

I have an Ultra 2 Creator 3D.
Does anyone have any suggestions?

Thanks in advance,
Ryan
