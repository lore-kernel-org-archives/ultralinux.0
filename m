From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 13 Nov 1998 16:16:27 +0000
Subject: Re: bootable CD image
Message-Id: <marc-linux-ultrasparc-91097815220055@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91097603618920@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91097603618920@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> A friend and I were talking and came to the conclusion that someone
> should make available an ISO9660 image file online.  Therefore making
> a CD would be very easy no matter which platform you were currently
> using.  You could even make it in Windows [9N][58T].  Also you
> wouldn't have to go through so many steps, including making the /dev
> directory and the files in it.

The image is online already
(ftp://1000e.ms.mff.cuni.cz/private/local/jj/UltraLinux/up11cd/)
but it won't run on Ultra30, 60 and others which have the CD-ROM connected
to NCR, Adaptec or Qlogic SCSI adapters. SBUS Ultras should be fine (you'll
probably have the CD-ROM on ESP), IDE Ultras are as well. I'm working on a
fix for this and will release updates soon (but I'd like to fix multiple
bugs at once, together with TILO support for older sun4c and fixed SILO for
initrd (as someone reported on Ultra30)).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
