From: David Miller <davem@twiddle.net>
Date: Wed, 28 Apr 1999 15:15:25 +0000
Subject: Re: RedHat 6.0 runs on UltraSPARC?
Message-Id: <marc-linux-ultrasparc-92531296404684@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92530848032119@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92530848032119@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: mc@ainsystems.com
   Date: Wed, 28 Apr 1999 08:06:16 -0700

   So the previous issues concerning the memory limitations on the
   AXmp

There are no memory limitation on AXmp, we support the maximum
configuration of 2GB and 4 processors, I've had it running here
myself.

   Also has RedHat done any work on peripheral support for the Ultra
   line? I do not believe it would be effective to release 6.0 without
   supporting the newer Sparc Linux peripherals.

There is nothing "newer" than what was shipped in RH6.0, up until the
very last moment fixes were constantly being made up to date in the
release, I made sure of this.

I cannot parse what you are saying though, anything which is supported
in _any_ Sparc/Linux kernel available is supported in RH6.0, what
exactly are you particularly after?

Jakub and myself are still the two people doing any of the work, so if
we've added support for the peripheral, the distributions will have it
as well.

Later,
David S. Miller
davem@redhat.com
