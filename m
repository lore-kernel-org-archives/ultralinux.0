From: sc843@bard.edu
Date: Mon, 01 Oct 2001 01:36:07 +0000
Subject: Re: More sparc64-libc questions
Message-Id: <marc-linux-ultrasparc-100190023621389@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100187097332030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100187097332030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Thanks Ben!

Indeed it _is_ ld-linux.so.2 which segfaults (I'm using a recent CVS.)

I'm seriously considering creating a pure 64-bit Sparc distribution of Linux. 
Everyting that can be would be native 64-bit (init, shells, X, etc...). Having 
the compiler working is a good thing, and I'll test glibc 2.2.4 and see whether 
that fixes my segfault problem.

I understand that this will provide only marginal performance benefits, and 
that Debian has a solid distro out with 64-bit support, but I'm doing this as 
much for the adventure as for the performance benefits. How is a distribution 
usually begun? I'd take the next release of GCC (3.0.2) and the latest release 
of libc.

This would probably be a personal project; I don't want to spend the kind of 
time required to keep packages up-to-date, etc. Would there any interest at all 
out there in a Sparc-bootable ISO with some tarballs that unpack to a bare-
bones distro that could be used as a base to compile everything else? I'd 
probably use http://www.linuxfromscratch.org as a guide.

Sincerely,

Sean Callanan
