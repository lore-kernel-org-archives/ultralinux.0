From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 18 Nov 1998 13:39:52 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91145588124059@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
> Ugh, are all of your disks hung off of the fibre channel cards?

Don't worry. At least the CD is apparently on some ESP, but I think E?000
boxes don't have FC-AL internal disks, only E?500 boxes do.
I've started already looking into SOC+ manual, plus have read most of the
FC-AL, FC-PLDA and other stuff, but still don't have enough knowledge to
write the socal and fcal drivers without access to the physical hardware.
I should be getting a E3500 in 3 month, but even there I doubt it will have
any FC-AL disks in it, as it is pretty costy (7000$ to buy necessary boards
and one single FC-AL 9GB disk :( ).

> Crap... Jakub, you know why it fails if this is true.
> 
> One quick hack would be to hook up a spare SCSI disk to one of the
> normal scsi controllers on the machine, or else wait for a fix from
> either myself or Jakub.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
