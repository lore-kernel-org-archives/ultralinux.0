From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sat, 09 Jan 1999 17:12:22 +0000
Subject: Re: raid on ultra1
Message-Id: <marc-linux-ultrasparc-91598996812128@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91582280718719@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91582280718719@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hello all,
> 
> I compiled and booted with new kernel 2.2.0pre4
> Is seems all ok, but I have a complete failure with mkraid, either
> 0.50beta10 either 0.90 version.
> RAID support is loaded as module.

The problem is that you have applied the raid patch which is definitely
broken for sparc64. I'll look into it in the next few days and send fixes to
the patch to the maintainers. If it were part of standard kernel, such
problem would not exist.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre6 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
