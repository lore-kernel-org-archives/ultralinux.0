From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 03 Nov 1998 15:27:36 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-91010737315115@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I've just tried the new floppy and tftpboot images Jakub uploaded last night
> (02/11).
> 
> I had exactly the same problems as above with the floppy install, but
> the tftpboot install worked. No problems with any of the installation
> steps, except making a recovery disk, put in the blank floppy, and
> it just sat there. I'm beginning to suspect a floppy drive problem.
> Just a guess but, when I boot using the floppy drive, it says:
> Boot device: /sbus/SUNW,fdtwo
> could it be an fd0/fd1 problem?

Aha, I forgot to mention that SBUS fdtwo is not in healthy state in the
kernel yet, what works perfectly is PCI fdthree (both fd0 and fd1 whichever
it happens), plus maybe sun4m fdtwo, but I'm not sure about it. In fact, I'd
be graceful if someone with a sun4m fdtwo could acknowledge if it works in
recent kernels (2.1.120+) or not. If yes, then we have some Ultra/SBUS
floppy related bug, otherwise it is a problem common to fdtwo.

> 
> Although the tftpboot installation routine worked, the machine does not boot
> properly.
> SILO works, the kernel uncompresses, then goes through until i get:
> tty_io.c: process 1 (swapper) used obsolete /dev/cua1 - update software to
> use /dev/ttyS1
> tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
> /dev/ttyS1
> tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
> /dev/ttyS1
> tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
> /dev/ttyS1
> tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
> /dev/ttyS1

Ok, this is my bug (well, laziness on my part) in that I have not fixed the
setserial package to omit overwriting /dev/console device, so that serial
installs do the above. I'll do that in a couple of minutes.
I've nearly finished with merging the remaining rh5.2 installer changes, so
it is time to have soon a decent distribution.
Thanks guys for all the testing.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
