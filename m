From: David Miller <davem@twiddle.net>
Date: Sun, 28 Mar 1999 00:53:55 +0000
Subject: Re: Post 1.2 development
Message-Id: <marc-linux-ultrasparc-92258215211526@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92258097010860@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92258097010860@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Sat, 27 Mar 1999 16:22:09 -0800
   From: David Van Beveren <dvb@eis.com>

   1. What can we expect in the way of a time frame for a peek at
   64-bit userland? Are we talking about 1-2 months, 6 months or a
   year? This is a really critical piece of information for ISVs
   contemplating porting to UltraPenguin.

I believe I told you in private email a few weeks ago that we are
currently shooting for some time near mid-summer.  But as usual, no
promises.

That being said, I believe people who are porting applications which
have no real need for 64-bits are making a mistake by making a 64-bit
sparc version of their application.  This is simply because if they
make a 32-bit version then the whole sparc line of systems can run
that application.

The 64-bit userland will be slightly slower for most applications, and
this is just a fact of life not anything to do with how our
implementation will work (pointers and types are bigger, thus the
memory references of the application, even for common tasks, will be
larger).

   2. What is the outlook for Solaris emulation? Will this always
   require Solaris shared libs, and a corresponding Solaris license?

We have no incentive to work very hard on this, sorry.  I really don't
want Linux to become a "emulation system" anyways.

   3. Has anyone considered tackling the Sun PCi card, the one with
   the AMD CPU onboard, and scoping out the task of running Win95 on
   this card under Linux, like Sun does under Solaris?

No hardware docs, no access to cards, no chance at support.

Actually what would be even more interesting about this piece of
hardware would be running Intel Linux binaries on it so one could run
x86 Linux applications on such a machine.

Later,
David S. Miller
davem@redhat.com
