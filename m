From: sc843@bard.edu
Date: Wed, 14 Nov 2001 17:15:59 +0000
Subject: Re: libstdc++ bus errors
Message-Id: <marc-linux-ultrasparc-100575809507289@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100562646118090@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100562646118090@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > Upgrading binutils to 2.11.2 doesn't solve the problem, because ld.so
> > doesn't understand R_SPARC_UA32 relocations...
> Upgrade glibc, then binutils :-)  Current glibc understands
> the UA32 relocs properly.

I don't think this is the sole cause of the problem. I have glibc 2.2.4, which 
(according to my hand-checking) includes the fix for R_SPARC_UA32 
mentioned in an earlier message:

> Ah yes, I found the requisite patch... thanks.
> http://sources.redhat.com/ml/libc-alpha/2001-07/msg00021.html

...but still C++ programs have bus errors.

Perhaps a related issue could be that I overrode the default behavior of 
the 32->64 cross compiler to copy all the system headers into 
$PREFIX/sparc64-linux/sys-includes 
and instead symlinked that directory to 
$PREFIX/include
I don't know what else the problem might be. Must I upgrade to a CVS 
version of binutils? (I have 2.11)

Would it help if I build gdb and tried to figure out the source of the error 
more precisely, or is this well-known?

Sincerely,
Sean Callanan
