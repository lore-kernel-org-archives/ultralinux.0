From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Jun 1998 22:22:46 +0000
Subject: Re: Boot of 1.0.9 fails on Sun Ultra 1 (actually, Ultra 30)
Message-Id: <marc-linux-ultrasparc-90222357631038@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631036@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631036@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Hmm.  The silence on this problem is, well, scary.  Maybe
> nobody is actually working on UltraPenguin anymore?

No, the issue is:
the problem is already solved in the CVS kernel, at least I think it is one
of the bugs that were fixed.
Those kernels are already in 2.1.106 rpms, but not yet in tftpboot.img, as a
couple of problems arised with rpm 2.5 and so some things in the installer
should be fixed first.
As 2.1.107 merged fbcon, we have to get that working first (as currently CVS
tree does not even compile for SPARC), after that we'll make new
tftpboot.img...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.106 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
