From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Sat, 14 Nov 1998 08:38:28 +0000
Subject: Re: bootable CD image
Message-Id: <marc-linux-ultrasparc-91108324521083@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91097603618920@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91097603618920@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Jakub et al,
> 
> Would it not be possible to create a partitioned bootable CD image
> similar to SunOS/Solaris install CDs which could contain a bootable
> partition for sun4c/m/u and a second partition for sun4?

It would be possible to have there just the 40k of the installer on the
other partition. SILO already handles multiple kernels (sun4u uses a
different one to sun4c/m/d). The problem is that noone wrote sun4 support
for SILO, and I don't have any sun4 machines nor access to them, so I cannot
write it. I was already asking on the list if anyone wants to write it, but
noone answered.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
