From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 08 Jan 1999 18:34:26 +0000
Subject: kernel*2.2.0.pre5.*.rpm
Message-Id: <marc-linux-ultrasparc-91592376123141@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

kernel 2.2.0.pre5-2 rpms are out in the UP 1.1.9 area, it was a bad idea to
call pre4 2.2.0-pre4-1, as rpm womits on it. 2.2.0.pre5 has some serious
changes in memory management, quite some SPARC bugfixes, e.g. TCX users
should be more happy as the cursor should not be recolored twice a second...

Also, I have been hacking the installer for SCSI Tape install, so that it
eats any blocksize up to 64k. So it should work fine even on ExaBYTE, etc.,
and should be much faster. But I have noticed that in some package
configurations rpm library sorts packages differently than they are on tape.
I'll be looking into it once I cure myself a little bit (I'm feeling sick
right now). So, at the moment for tape installs I can guarantee just full
installations, although many other configurations should work as well.
Other install method do not suffer from this.

The CD has not been updated yet, I'll do it in the evening...

Enjoy.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
