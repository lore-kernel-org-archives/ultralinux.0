From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 02 Jun 1998 20:49:05 +0000
Subject: Re: Floppy install image?
Message-Id: <marc-linux-ultrasparc-90222357630977@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357630976@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357630976@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I've got a Sun SS2 at home that I'd like to try running Ultrapenguin on. 
> I can't use the tftpboot image because I don't have any machines that can
> respond to the Sun's rarp requests at boot (unless you know of a Mac based
> rarpd...); unfortunately, the Ultrapenguin mirror at ftp.cobaltmicro.com
> doesn't have a floppy boot image. 
> 
> Does such a beast exist?

Not yet. I got my floppy drive for Ultra about two weeks ago, and still need
to fix some bugs in the driver. Once the driver is fixed, I will make floppy
images, without that I could make some, but could not test it at all...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.103 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
