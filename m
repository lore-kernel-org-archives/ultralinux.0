From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 13 Apr 1999 14:26:32 +0000
Subject: SILO test prerelease
Message-Id: <marc-linux-ultrasparc-92402173411992@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I'm looking for testers for new beta release of SILO (if it turns out to be
ok then it will become 0.8.6). Look at
ftp://ultra.linux.cz/OS/Linux/Sparc/local/silo/testing/silo-pre0.8.6-1.tgz

Here is what has changed:

intelsilo fixed (patch by Steve Dunham <dunham@cse.msu.edu>)

fix for initrd loading on sun4m and sun4d with lots of ram (you will need
latest CVS kernel for that as well) - tell me if it works for you, works for
me here.

If /platform/SUNW,Ultra5 or whatever is your syspkg directory in Solaris
does not contain ufsboot, try /platform/sun4u or whatever your arch is.

Take care about 64bit ELF ufsboot (for Solaris 2.7).

On sun4u, if one tries to boot other without a bootblock option
(e.g.
other=4
	label=4thpartition
), then SILO issues a PROM boot command to it.

Booting Solaris via /boot/old.b on sun4u box is not yet supposed to work (I
don't have any machines I could investigate this on currently).

So, if you want to try dual-boot Solaris/Linux, you should be able to do
following:

If Solaris is on sda1, Linux on some sdaX X != 1:

either 
/sbin/silo -t
then in PROM
nvalias solaris disk:a
nvalias linux disk:L
							(L is 'a' + X - 1)
boot solaris						to boot solaris
boot linux						to boot linux

or
/sbin/silo
add
image=1/kernel/unix
	label=solaris
	solaris
to /etc/silo.conf

boot disk
SILO: solaris						to boot solaris
SILO: linux						to boot linux

(limitation: on sun4u, you won't be able to pass arguments to Solaris this
way - please tell me if this works at all for you)

If Solaris is on sdb1, Linux on sda1:

either
/sbin/silo
nvalias solaris disk2
nvalias linux disk

boot solaris
boot linux

or
/sbin/silo
in /etc/silo.conf
other=/sbus/espdma/esp/sd@2,0;1
	label=solaris

boot disk
SILO: solaris
SILO: linux

on sun4cdm you should be able to do it in other ways too.
The major problems on sun4u are that there is no easy way to change
arguments stored in PROM and the boot device stored there as well.
The only way how to change boot device I'm aware off is to issue a PROM boot
command, the only way how to change arguments I'm aware off is to issue
prom_chain call, which I haven't tested yet.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
