From: "James B. Huber" <jbh@gencon.com>
Date: Thu, 01 Oct 1998 12:47:16 +0000
Subject: RE: SILO 0.8 released
Message-Id: <marc-linux-ultrasparc-90724692902066@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Yes,
  The timeout actually works on my IPX now ! Thanks !

FYI, it wouldn't compile from source......is there magic required ?
(Complained about a missing prom-fs include file ?????

Jim
===================================
James B. Huber                                          jbh@gencon.com
Genesis Controls, Inc.                            (V/O) (407) 671-0820
===================================

> -----Original Message-----
> From: owner-sparclinux@vger.rutgers.edu
> [mailto:owner-sparclinux@vger.rutgers.edu]On Behalf Of Jakub Jelinek
> Sent: Wednesday, September 30, 1998 10:10 AM
> To: sparclinux@vger.rutgers.edu
> Cc: ultralinux@vger.rutgers.edu
> Subject: SILO 0.8 released
>
>
> Hi!
>
> The bug when sun4[cdm] machines saw Bad gzip magic numbers is gone,
> so I'm releasing a hopefully stable version of SILO - 0.8.
> You can get it at
> ftp://sunsite.mff.cuni.cz/OS/Linux/Sparc/local/silo/silo-0.8.tgz
> and enjoy.
> It should allow you to make bootable CD-ROMs again, and a
> whole lot of new
> things and should fix a lot of bugs. See some of my pre-release
> announcements for details.
> And as always, please report any bugs to me.
> (BTW: I'm aware of the sparc64 problem with booting Solaris
> from the same
> disk, so you don't need to report that - I'll look at it soon).
>
> Cheers,
>     Jakub
> ___________________________________________________________________
> Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
> Administrator of SunSITE Czech Republic, MFF, Charles University
> ___________________________________________________________________
> Ultralinux - first 64bit OS to take full power of the UltraSparc
> Linux version 2.1.121 on a sparc64 machine (498.80 BogoMips).
> ___________________________________________________________________
> -
> To unsubscribe from this list: send the line "unsubscribe
> sparclinux" in
> the body of the message to majordomo@vger.rutgers.edu
>
