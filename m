From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 04 Nov 1998 14:07:12 +0000
Subject: Updated RPMS in UltraPenguin
Message-Id: <marc-linux-ultrasparc-91019001119992@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've updated following rpms:

setconsole (so that serial install will not blow /dev/console away)
initscripts (so that UP/SMP is automagically detected and
	    /lib/modules/`uname -r` symlink is made (provided it is
	    a symlink to one of `uname -r`-up or `uname -r`-smp and
	    those dirs exist))
mkbootdisk (build with proper required packages)

plus in contrib there is ssh-1.2.26-3i

Enjoy

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
