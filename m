From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 13 May 1998 11:29:14 +0000
Subject: Re: Booting An Ultra Sparc 10
Message-Id: <marc-linux-ultrasparc-90222356531019@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531012@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531012@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> On Wed, 13 May 1998, Eddie C. Dost wrote:
> 
> > > yep :)
> > > 
> > > took it out and it installed ok
> > 
> > You need to reinstall newer kernels once available before you put the
> > card back in...

> i'll look at that this evening
> ps can i normally use the stnd  linux kernel  (2.1.101?)

No
> 
> or where to get patches (as with the alpha i have)
> or ....

ftp://vger.rutgers.edu/pub/linux/README.CVS

> (sun ultra sparc 10)
> 
> can i just plugin a pc scsi card /ethernet (ncr/adaptec/3com)
> pci card ?
> 
> and are these supported by the kernel ?
> (can i use a 3com 3c900 (100mbit tcpip))

Well, it might and might not work. The issue is that if the adapter needs to
be initialized by the on-card BIOS, you'll be in big trouble: Ultra10 has no 
Intel emulator nor is it currently implemented in Linux kernel.
That's one thing. The other thing is that you need to hack up a bit the
driver, at least check it if it is 64bit clean and does not use any
intelisms.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.101 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
