From: David Miller <davem@twiddle.net>
Date: Mon, 12 Apr 1999 04:58:37 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92389365707796@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Mon, 12 Apr 1999 00:50:47 -0400 (EDT)
   From: Peter Jones <pjones@redhat.com>

   > This bug would explain some problems I had with the gnome mixer applet
   > and some other sound programs on sparc64...

   Hrm.  Odd.   When aumix calls that, its sending 0x20044dfe, which is what
   kernelspace is _expecting_ to get.  somewhere in the middle its becoming
   0x40044dfe , which is falling through the case.  Any ideas?

Maybe rebuild aumix with more recent kernel header files.  I saw this
too with xcdplay, so it might be the same problem.

Actually, I couldn't completely parse your recollection of the
debugging printk output, can you show me exactly what the kernel said
with your debugging statements?  (even better yet, tell me the machine
where you did this poking so I can go on and snoop around :-)

Later,
David S. Miller
davem@redhat.com
