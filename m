From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 07 Jul 1998 10:46:25 +0000
Subject: Re: UltraPenguin109 + Ultra5 = Bad
Message-Id: <marc-linux-ultrasparc-90222358531006@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531001@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531001@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Quoting Jakub Jelinek (jj@sunsite.ms.mff.cuni.cz):
> [ .. ]
> > I cannot give you latest kernel from CVS, as the console stuff rewrite is
> > not finished yet.
> > 
> Any idea when we will be able to again compile a kernel from the CVS tree ?

It is possible, and it will run just fine with Creator console or PROM
console. CG6 is broken right now, mach64 and the rest of SBUS drivers are
not written yet.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.107 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
