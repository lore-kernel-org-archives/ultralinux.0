From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 18 Nov 1998 10:06:10 +0000
Subject: Re: ultrapenguin 1.1
Message-Id: <marc-linux-ultrasparc-91143441814975@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91138236309955@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91138236309955@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Does ultrapenguin 1.1 run on a UltraSparc 10 Creator 3D ?
> The uprocessor is a UltraSparc-IIi - 300MHz.
> I succeeded in running rarp and tftp, but when the machine finishes loading
> a box appears in the upper left corner of the screen (sometimes it's a cross,
> sometimes an arrow) and the machine gets stuck with the message
> root child is f002ca28.
> Do I need to put other files under the /tftpboot directory ?

This is getting a FAQ, I'll probably put it on WWW pages.
You should add video=atyfb:off command line option, otherwise Linux chooses
your mach64 as the primary display. Alternatively do video=map:1
It is fixed in recent kernels.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
