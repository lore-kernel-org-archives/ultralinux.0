From: Ward Deng <wdeng@KachinaTech.COM>
Date: Fri, 30 Oct 1998 14:09:02 +0000
Subject: Re: some UltraPenguin experience
Message-Id: <marc-linux-ultrasparc-90975708221325@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90971268005380@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90971268005380@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > We installed several systems during last week or so. Something we
> > discovered could be useful for our UltraLinux team and all users:
> > 
> > 1. We have a Symbios 22801 dual-channel SCSI controller, we tested
> >    it on an UltraAX. It worked fine under Solaris 2.6 but had some
> >    problems with UltraLinux. Kernel 2.1.99 simple hangs there during
> >    the installation after detecting it as two 53c875 based SCSI
> >    instead of one while under kernel 2.1.125, it emited the following
> >    error message:
> 
> If this is a dual channel controller it should be detected as two
> controllers. Is the 22801 53c875 compatible? Need more knowledge about
> this first to separate out eventual hardware problems.

It is 53c876 and _is_ 53c875 compatible. Since AXi uses 53c876 too and it 
ultrapenguin supports it.

> 
> > 2. When I compiled the kernel, vmlinux was created without any problem
> >    but when I "make modules," it died somewhere with the following
> >    message (only a part):
> 
> What kernel did you try to compile? - Jakub has you updated ultrapenguin
> to contain 2.1.125 kernels, please use these. Same goes for question
> below, please get net tftpboot image from ultra.linux.cz, this should
> work properly on the Ultra30. The boot image is found under sparc/images.

2.1.125 from vger CVS.  sparc/image/tftpboot.img contains 2.1.99 while
official ultra.linux.cz contains 2.1.106.

> 
> > 3. We have an Ultra30 with OpenBoot 3.11.2. However, it says
> >    "strange OpenBoot version" when I tried to boot from a tftpboot
> >    boot image. I have the file but I just do not remember where I
> >    ftp'ed from - it is slightly bigger (2612152 bytes) than 2.1.99
> >    based version (2582793 bytes) so I guess it is newer. More
> >    interestingly, all ATI PCI cards which work perfectly on AX/AXi
> >    are not recognized by this OpenBoot. Obviously there is no support
> >    there. I know this is not an UltraLinux problem but I am curious to
> >    know if there is OpenBoot update. Do we have to say these ATI cards
> >    only work on AX/AXi but not other Sun Ultra workstations?
> 
> Once you have the new image booting the thing, please see if the kernel
> detects the card (even though OBP hasn't). For an OBP update, please
> look at Sun's web page, I know they have updates for AX / AXi on there,
> but I don't know if there are any for the 30/60.

I guess graphics drivers work differently from others. I did not see any
information from "dmsg" but "scanpci" does show ATI Mach64 VT. I think it
does not matter. AX/AXi are SME products while 30/60 are SMCC products. 

--ward
> 
> 
> Eddie.
> ecd@skynet.be
> 
