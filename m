From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 11 Jun 1998 21:17:35 +0000
Subject: Re: UltraPenguin 1.0.9 install problems (Ultra 2)
Message-Id: <marc-linux-ultrasparc-90222357631005@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631002@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631002@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>   If you have no disk in the system, it will ask if you want to load a
>   SCSI driver, present you with an empty list of drivers and segfault
>   when you choose OK.

Ok, I'll look into this.
> 
> Second problem: 
> 
>   It installed the wrong kernel.  It installed the 32 bit kernel
>   rather than the 64 bit one.  (It's a Symmetric Multi Penguin
>   machine.)
> 
> (I used "rpm -q --queryformat '%{NAME} %{ARCH}\n' kernel" to verify
> that the wrong package was installed.)
> 
> I tried to find some logic in the install program that selects the
> kernel, but couldn't find any.  How does UltraPenguin decide?  I can
> only assume it's leaving it up to RPM, and RPM is guessing
> incorrectly.

This is strange. Which tftpboot.img were you using? The oldest ones in April
were installing random kernel, yes (whichever came first, I think), but from
then it was fixed (I hope, at least it worked on all my sparc64 and sparc32
installs). It is decided in install2, which downloads hdlist that contains
version numbers and architecture of each package. Install then selects the
most suitable one.
> 
> 
> Steve
> dunham@cps.msu.edu
> 


Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.103 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
