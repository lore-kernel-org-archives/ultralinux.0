From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 16 Nov 1998 16:31:48 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91126439921350@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
> On Thu, 5 Nov 1998, Jakub Jelinek wrote:
> 
> >Can you tell me those some addresses and some other addresses? How much
> >memory do you have? What size is your /boot/initrd*.img (provided you get
> >tftprescue.img working - see below).
> 
> initrd overwritten (0xfffff800509c4000 < 0xfffff8005162a000) - disabling
> it.
> Memory: 256296k available (1304k kernel code, 3688k data, 128k init)
> [fffff80000000000,fffff80073f4c000]
> 
> initrd-2.1.126.img: 212428
> 
> is that enough?

Yep, thanks a lot for all the info.
Quick solution (requires a screwdriver): reposition your SIMMs to the other
bank (check in the PROM then if the /memory reg property is something like

	00000000.00000000.00000000.08000000
	00000000.10000000.00000000.04000000
	00000000.20000000.00000000.04000000

Slow solution: wait until I release SILO 0.8.3

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
