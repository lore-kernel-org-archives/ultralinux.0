From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Mar 1999 07:32:59 +0000
Subject: Re: /usr/lib64
Message-Id: <marc-linux-ultrasparc-92243384727364@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92239744703556@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92239744703556@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> It isn't.  There's no 64-bit userland, and no 64-bit libraries.  The
> kernel is all that runs in 64-bit mode.  
> 
> Now, having no 64-bit libraries, you don't really need a directory for
> them... ;)

Well, to be honest, there is such a 64bit glibc, but it is quite old and you
need to downgrade your kernel to something as of Sep/Oct 97 to be able to
run it. (see ftp://ultra.linux.cz/OS/Linux/Sparc/local/sparc64/).

But /usr/lib64 is prepared in spec files, so that once we support it (I'm
not going to say a date here, as it depends on many things), current
binutils/gcc will work with it.

The general layout we plan is to put 64bit shared libraries into
/lib64
/usr/lib64
/usr/local/lib64
/usr/X11R6/lib64

and have gcc/binutils take libraries from there first. Include files should
be solved in the same way we do solve /usr/include/asm right now, ie. it is
a directory full of header stubs, which for 64bit compilation goes to
/usr/include/asm-sparc64 and for 32bit compilation goes into
/usr/include/asm-sparc. AFAIK in glibc there is just a couple of
sparc32/sparc64 specific headers, plus a couple of wordsize-32/wordsize-64
headers. All those will have to be stubbed (the sparc64 headers in an
obvious way and probably create wordsize-3264 directory with combined
wordsize headers). Then you can use /usr/include just fine for both kinds of
compilation.

The remaining issue is how to teach rpm new things which will be desirable
in such an environment, as you should be able to install the same package
twice (once for 32bit, once for 64bit), provided one of these installations
installs only libraries (both shared and static). Then you could choose e.g.
if you want binaries of that program 32 or 64bit but allow development to be
done with that package for both 32 and 64bit target.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
