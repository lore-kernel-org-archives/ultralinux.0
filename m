From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 05 Jun 1998 10:19:48 +0000
Subject: Re: Solaris and Linux on one disk?
Message-Id: <marc-linux-ultrasparc-90222357630988@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357630987@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357630987@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi all,
> 
> Is it possible to have Solaris and Linux reside on the same disk and
> multiboot?

Yes, SILO supports it, but due to missing features in IEEE1275 PROM one
cannot pass arguments to Solaris kernel that way. So one might also want to
install Solaris on a different partition and put it's bootblocks there, then 
boot disk:d or whatever.
> 
> Also, does Ultralinux support the UFS file system? Would be nice if
> both OS's could share a partition, eg. /export.

Current CVS kernel (see ftp://vger.rutgers.edu/pub/linux/README.CVS) has
read-write support for UFS, although it is still experimental. So, don't use
it for data you would not like to loose. On the other side, bug
reports/comments are welcome and may improve UFS support, so that it moves
from EXPERIMENTAL to stable...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.103 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
