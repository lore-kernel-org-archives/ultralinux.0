From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 13 Jan 1999 09:01:26 +0000
Subject: Re: Compiling the kernel in ultralinux
Message-Id: <marc-linux-ultrasparc-91621942727750@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91621280925272@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91621280925272@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hello,
> 
> I have just installed 1.1.19 (Jan11) in a ultra1. I downloaded the kernel
> source and after config I followed the usual steps: make dep; make clean,
> but when I do "make zImage" I just got: 
> 
>   # make zImage
>   make: *** No rule to make target `zImage'.  Stop.
> 
> I have compiled exactly the same kernel (2.2.0-pre6) in a i386
> without any problem.
> 
> I know this sounds stupid, but... did I miss to install any package? Any
> hint? 

The usual steps on archs other than i386 are different:

make config; make dep; make clean; make; make modules; make modules_install

and you're done.
And, currently kernel.org kernel won't compile and/or run, as quite some
things are not merged yet from vger to Linus.
The only way how to get a kernel is anoncvs, but that's currently shut down.
But, if you install the kernel-source rpms, you should have a quite recent 
2.2.0-pre6 kernel.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre6 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
