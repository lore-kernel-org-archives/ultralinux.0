From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 17 Sep 1998 09:41:08 +0000
Subject: Floppy on some UltraAX/UltraAXi boxes
Message-Id: <marc-linux-ultrasparc-90602615026064@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

Just to let you know, on some UltraAX/AXi boxes the single floppy drive you
have is unit 1 and not 0 (B: and not A: in DOS terms). To get that working,
you have to use recent kernel (e.g. from CVS), plus it will be accessible
through /dev/fd1 and not /dev/fd0 as you might expect.
If you have a recent kernel, the boot messages will tell you correctly
Floppy drive(s): fd1 is 1.44M
So if that is your case (if your floppy does not work and prtconf -pv shows
you something like:

....
            Node 0x????????
                manual:
                unit:  00000001
                address:  ????????.????????.????????
                device_type: 'block'
                interrupts:  ????????
                reg: ????????.????????.????????.????????.????????.????????.????????.????????.????????
                name: 'fdthree'
....

(the unit: 1 is important), then upgrade your kernel.
I'll be making kernel RPMS really soon, once some bug is fixed.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.121 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
