From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 13 Aug 1998 14:52:12 +0000
Subject: [CALL FOR TESTERS] pre-release 2 of silo 0.7.3
Message-Id: <marc-linux-ultrasparc-90302532826348@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> On Wed, 12 Aug 1998, Jakub Jelinek wrote:
> 
> > BTW: In the tar ball, there are already binaries for all the images, so
> > if you want to try it, you could just cd silo; make and use whatever
> > images are already precompiled in boot/ ?  
> 
> I just finished doing this on my sun4c, and sadly, silo crashes like this:
> 
> Boot device: /sbus/esp/sd@5   File and args:
> SILO
> Decompression error: bad gzip magic numbers
> 
> Internal error
> Program terminated
> Type b (boot), c (continue), or n (new command mode)
> >
> 
> I'd be interested in results from other sun4c people, because my machine
> is of the probably-compatible-clone type.

Can you check silo-pre0.7.3-2.tgz?

Chances from -1 release:
fixed the problem some people had with compilation (both the 64K difference
and S_ISLNK)
added spec file
Fixed problems with IDE disks on Ultras (it know groks all /dev/hd[a-h]
partitions and all /dev/sda -> /dev/sddx partitions).
So I'd like to ask all people with PCI Ultras to test that if they can as
well.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.115 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
