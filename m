From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 20 May 1998 12:42:11 +0000
Subject: Re: Decompression error with silo and new kernel
Message-Id: <marc-linux-ultrasparc-90222356531057@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531054@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531054@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> After having installed the latest ultrapenguin release I wanted to
> compile a new kernel. I couldn't find any (ultra)sparclinux specific
> docs about this, so I used my Intel/PMac knowledge about Linux. I did 
> the following
> 
> - make kernel as usual
> - copy and gzip the resulting vmlinux file (tiens, it is not located somewhere 
>   deep down in the arch hierarchy this time) to /boot
> - edit /etc/silo.conf to add a new target
> - reboot
> 
> I get the error "Decompression error: uncompressed image too large - 
> 		 wouldn't fit into destination"

You have compiled everything in, haven't you?
Current SILO is not able to load images larger than 2.5M-16384.
So, for now, modularize your kernel a bit. I will in the mean time try to
think how to make SILO able to handle larger sizes (but there will probably
be a limitation 3M-100K even then). The problem is SILO is statically linked
to 0x280000 address, which is caused by old Suns where they guarantee only
3M of contiguous mapped memory.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.102 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
