From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 22 Jun 1998 09:26:17 +0000
Subject: Re: Global register use.
Message-Id: <marc-linux-ultrasparc-90222357631026@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
> Hi!
> 
> Does anyone knows where I can find information about global register
> use in SPARC machines? 

Ok, it depends on whether it is a 32bit or 64bit program.

g6 and g7 are reserved by OS (g6 is used as the current thread pointer).
64bit ABI says g1,g4,g5 are temporaries, volatile accross function call or
system call. g2 and g3 are supposed to be app registers, but glibc uses
them. This will have to be thought out. egcs/gcc normally uses g2,g3 as
temporaries as well, this can be disabled by using -mno-app-regs. But, as
mentioned, glibc still clobbers them. g6 is saved accross system call, other
globals are clobbered in the new system call scheme. g1 register is used
internally by gcc for a couple of things, but of course, will be used for
your tasks as well...

32bit ABI says g1 is temporary, g2-g4 are application registers, g5-g7 are
reserved by the OS (g6 is thread pointer).
> 
> In fact, I would like to know which of them are reserved for the
> kernel (g5-g7?), which are eventually reserved by the (C) libraries (or
> linker) and which can be actually safely used by the end user.
> 
> Some information about gcc register allocation would be useful too.

You can use the above app-regs, plus you can use -fcall-used-gX and
-ffixed-gX, so that resulting code suits your needs.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.105 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
