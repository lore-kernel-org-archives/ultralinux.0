From: "Hine,C" <cph@oce.co.uk>
Date: Tue, 03 Nov 1998 14:52:54 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-91010584214271@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> [cut]
> > Good news: it boots fine and gets a long way through
> > installation. All the necessary RPMs were installed and I manually
> > answered the X questions. Then it failed with
> >     Error during "Configure timezone"
> > with the log on VC3 saying
> >     running /usr/sbin/timeconfig
> >       tool failed
> > So I did the next steps manually from the installation menu. The
> > "Install bootloader" step failed with
> >     cannot run /bin/rmmod: No such file or directory
> > so I made a symlink to install2 just as /usr/bin/rmmod has. However,
> > even after sorting out rmmos/insmod of loop.o the boot loader still
> > fails to install.
> [cut]
> 
> I've had a very similar experience here. Different hardware though,
> Netra i (which is basically an Ultra 1 AFAIK) UltraSPARC 143MHz, 64MB
> OpenBoot 3.5, 2.1Gb IBM SCSI disk, NCR53C9XF SCSI controller, Toshiba
> SCSI CD-ROM, on-board (LANCE ??) ethernet.
> 
> I also first tried to install using the floppy disk method. 
> The boot disk
> works until after just the partition check it says:
> 
>    floppy0: WARNING disk change called early
> 
> then asks for the root disk. After inserting the root disk 
> nothing happens.
> 
> I then tried the network boot method, and got results as above.

I've just tried the new floppy and tftpboot images Jakub uploaded last night
(02/11).

I had exactly the same problems as above with the floppy install, but
the tftpboot install worked. No problems with any of the installation
steps, except making a recovery disk, put in the blank floppy, and
it just sat there. I'm beginning to suspect a floppy drive problem.
Just a guess but, when I boot using the floppy drive, it says:
Boot device: /sbus/SUNW,fdtwo
could it be an fd0/fd1 problem?

Although the tftpboot installation routine worked, the machine does not boot
properly.
SILO works, the kernel uncompresses, then goes through until i get:
tty_io.c: process 1 (swapper) used obsolete /dev/cua1 - update software to
use /dev/ttyS1
tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
/dev/ttyS1
tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
/dev/ttyS1
tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
/dev/ttyS1
tty_io.c: process 1 (init) used obsolete /dev/cua1 - update software to use
/dev/ttyS1
Which seems like it probably shouldn't cause any problems. The next step is
adding
swap (82072k), at which point it waits for approx. 1 min., before displaying
the
IPX 0.38 stuff followed by:
eth0: Carrier Lost, trying TPE
and that's it, it just sits there.
I tried pinging the machine whilst it boots and and it starts responding
when the
carrier lost message appears.
I can telnet into the machine OK, so I would guess that it a framebuffer
console
problem.
Copied from the linux boot:
Console: switching to colour frame buffer device 128x54
fb0: cgsix at 0000000020000000 TEC Rev 4 CPU sparc Rev b
Any ideas anyone?

If anyone wants anymore information just ask.

Regards,
Chris Hine
---
Internet/Intranet Development
Oce (UK) Ltd.
Email: cph@oce.co.uk
