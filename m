From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 14 Dec 1998 23:19:01 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91369195812181@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I grabbed up-1.1.9.iso from ultra.penguin.cz this weekend to give a try.
> I burned a CD from the iso image.  I tried installing on my Ultra-1
> today, and ran into a problem.  The kernel boots ok, but there appears
> to be a problem in the initial ram disk image.  The kernel finds all of
> the hardware on the system, then emits this error:
> 
> /linuxrc: 51:syntax error: "done" unexpected (expecting "fi")
> sr0: disc change detected
> kernel panic: VFS: unable to mount root fs on 0b:00
> 
> I don't have my Linux system available at the moment to poke around in the 
> ram disk image.  Anyone else seen it?

Thanks for report, I have fixed it in my copy and will put it up tomorrow
with other changes. In the mean time, you might want to boot net with the
included tftpboot.img and choose Local CD-ROM, that should work.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
