From: Jeff Sturm <jsturm@one-point.com>
Date: Tue, 13 Nov 2001 05:20:38 +0000
Subject: Re: libstdc++ bus errors
Message-Id: <marc-linux-ultrasparc-100562883822802@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100562646118090@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100562646118090@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Mon, 12 Nov 2001, Sean Callanan wrote:
> I am currently rebuilding my system from scratch (using the instructions at 
> www.linuxfromscratch.org) with GCC 3.0.2 and glibc 2.2.4.
> I have simply compiled GCC 3.0.2 for sparc-linux (32-bit) with dynamic 
> linking against the new libc. However, even a test program:
> --
> #include <iostream.h>
> 
> void main()
> {
> 	cout << "Hello C++!\n";
> 	exit(0);
> }
> --
> has a bus error. Are there known issues with sparc and libstdc++ 3.0.2? 
> (Incidentally, I try to run the library itself, and get a segmentation 
> fault, but I suspect that isn't such a big issue since the c++ library on 
> my original SuSE install does the exact same thing.

I've seen this too, using slackware-current on sparc.  The cause is
twofold: GNU ld incorrectly generates a R_SPARC_32 reloc for an unaligned
word, which ld.so cannot fix because unaligned stores cause a trap on
sparc.

Upgrading binutils to 2.11.2 doesn't solve the problem, because ld.so
doesn't understand R_SPARC_UA32 relocations:

./a.out: error while loading shared libraries: /home/jsturm/junk.so:
unexpected reloc type 0x17

Before I tackle it, anyone know if there is a fixed libc for sparc-linux?

(Meanwhile, configuring gcc with --enable-sjlj-exceptions might be an
effective workaround.)

Jeff

