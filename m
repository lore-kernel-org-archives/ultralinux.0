From: David Miller <davem@twiddle.net>
Date: Fri, 26 Mar 1999 21:23:43 +0000
Subject: Re: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92248355428340@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92255674631513@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92255674631513@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 26 Mar 1999 15:20:19 -0500 (EST)
   From: Peter Jones <pjones@redhat.com>

   Although, this brings up a reasonable point -- if they're all on
   the same IP subnet, then you may very well only notice one of them
   getting traffic.

The bug is in the PCI specific code in that old kernel still in the
UP-1.1.9 distribution, upgrade to the latest sparc kernels and all of
the happy meals will work just fine.  And in fact the problem was that
interrupts were not being setup properly so the other cards would
never see them.

Let's stop speculating please...

Later,
David S. Miller
davem@redhat.com
