From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 25 Mar 1999 08:38:49 +0000
Subject: Re: SCSI cards for sparc64 kernel 2.2.4
Message-Id: <marc-linux-ultrasparc-92236007229522@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
> I've got some UltraSparc machines with Qlogic PCI SCSI cards:
> 
> $ cat /proc/pci
> .....
> SCSI storage controller: Q Logic ISP1020 (rev 5).
> .....
> 
> but it looks like there is no support for them in the Sparc architecture.
> 
> Is it hard to port the Intel driver to Sparc? Any hints? Anybody working
> on it?

David Miller has one such card and told me he'll be working on it tonight.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
