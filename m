From: David Miller <davem@twiddle.net>
Date: Mon, 22 Mar 1999 04:06:36 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92207824601147@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
   Date: 	Sun, 21 Mar 1999 22:43:35 -0500 (EST)

   The speed increase is incredible, however the lock ups are a pain.
   If there is some information you need just let me know.  I will
   help if I can.  Oh yeah, I have an Ultra2 w/Creator 3D.

Please grab the latest kernel and try to reproduce.  I can almost
guarentee that you will not be able to as I have been doing an
enormous amount of stress testing of things.

There are two ways to get the latest at the moment:

1) http://cvs.on.openprojects.net/

   Follow the instructions for the vger kernel mirror repository
   and checkout the cvs module named "linux"

2) Grab the latest 2.2.3 linux sources and apply the latest
   2.2.4 pre-patch on top, this will be essentially the same
   thing as what you'd get from method #1.

   ftp://ftp.xx.kernel.org/pub/linux/kernel/v2.2/linux-2.2.3.tar.bz2
   ftp://ftp.xx.kernel.org/pub/linux/kernel/testing/pre-patch-2.2.4-6.gz

   Replace "xx" with your country code, it may take a little while for
   the pre-patch to reach the mirrors.

Please report back to me asap as Linus is going to release the real
2.2.4 some time tomorrow and if this is a kernel bug I need to fix it
before tomorrow morning.

Thanks.

Later,
David S. Miller
davem@redhat.com
