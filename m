From: Andrew Mansfield <andrzejm@netnet.net>
Date: Wed, 14 Apr 1999 03:48:01 +0000
Subject: kswapd eating CPU cycles after upgrade to 2.2.5
Message-Id: <marc-linux-ultrasparc-92406838615128@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I've been having troubles with the new 2.2.5 kernel on my Sparc 10.
I recently installed RH 5.2 and updates after I somehow corrupted the
boot area on my hard disk and wiped out my older 5.1 install forcing
me to wipe the disk and start from scratch..

I'm using the stock 2.0.35 kernel and downloaded the 2.2.5 kernel srpm
from the UP 1.1.9 distribution along with the UP mod-utils, net-cfg
and util-linux rpms from the UP ftp site mirror at rpmfind.net. I want
to upgrade to a 2.2.x kernel as it seemed to solve a number of
problems for me and run better when I upgraded to a 2.2.3 version
before my aforementioned disk troubles.

I configured and compiled the kernel and booted into it. It seemed to
be much slower causing the console to hesitate during keyboard entry
when I logged in and started X (which crashed..)

I noticed that kswapd was the most active process, eating up somewhere
between 20%-50% CPU time.. This seemed to be the cause of the trouble
as it is hardly noticeable when running the stock kernel. I tried to
upgrade to a newer net-tools (1.51) from the Rawhide directory but it
dumped core and fouled up all the network processes (eg hostname
didn't work, etc..) which I believe was caused by using a different
compiler version? The net-tools-1.51 srpm didn't want to rebuild as it
got hung up on the man pages (the last thing in the rebuild
process..!) so I ended up using the UP one but I still get the same
kswapd problem..

I noticed ipchains and some other things weren't in the UP directory,
as well as the newer recommended versions of the utility packages
which were required to upgrade to 2.2.x.. The UP ones seem to be
slightly older

Can I use the UP 1.1.9 rpms with my RH 5.2 install like I have done?

Any ideas on what might be causing the kswapd process to eat up CPU?

What packages do I need to compile and run a new kernel?

Thanks,

Andrew Mansfield

-- 
			E Pluribus Unix.

"The hope that springs eternal, springs right up your behind."
		Ian Dury and the Blockheads
