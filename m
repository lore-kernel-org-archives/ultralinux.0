From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 17 Dec 1998 01:29:16 +0000
Subject: Changes in UltraPenguin 1.1.9 area
Message-Id: <marc-linux-ultrasparc-91386114230666@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've updated the 1.1.9 distribution (it is updated in place, as it is beta
still), so point your wget(1), mirror.pl(1) or cml(1) or whatever you use 
for mirroring to ftp://ultra.penguin.cz/pub/ultrapenguin-1.1.9/
or later on to mirrors. Most of the files have not been touched, so you'd
really better use some mirroring software.

Changes in packages:

XFree86-ISO8859-2	- Prereq Xfontreg, so it should not fail during
			fresh install with script error.
XFree86-ISO8859-9	- Prereq Xfontreg, so it should not fail during
			fresh install with script error.
dev			- People wanted more tty devices, so this one
			adds /dev/tty13 - /dev/tty24
initscripts		- relink /boot/System.map (if it is a link)
			if SMP/UP changes (like it is done with
			/lib/modules/`uname -r` link)
			- document sysconfig changes in sysconfig.txt
kernel			- update to CVS as of Dec, 15th
			(includes e.g. a fix for large initial ramdisks,
			ksymoops fix, some starfire changes, etc.)
net-tools		- update to 1.49, which fixes problems with 
			netstat -t
silo			- update to 1.8.5, which fixes problems with stale
			symlinks in /dev, adds a -t option to install SILO
			boot block into the same partition as second stage
			loader is (e.g. if you have Solaris on /dev/hda1
			and Linux root on /dev/hda4 (including
			/boot/second.b), then running silo without -t
			will update bootblock on /dev/hda1 (probably, if
			/dev/hda1 starts at cylinder 0), while with -t
			will update it in /dev/hda4. In the former case,
			one boots Linux with boot disk or boot disk:a,
			while in the latter one has to specify :d, ie.
			boot disk:d) and does not try to detect PROM
			version if it is run on the Ultra. Also, it adds
			a new first stage loader, /boot/fd.b, which is
			basically the cd.b loader, but loads the whole
			second stage in one read, so should be much
			faster and could fix some problems people
			are seeing with floppy booting (although my
			fdthree is just fine and used to be like that).
			Please test.
urw-fonts		- Prereq Xfontreg, so it should not fail during
			fresh install with script error.

Changes in the installer:
- I hope to have fixed the /linuxrc script which caused CD booting to fail
  (please test if you can).
- Added sunbmac driver (Big Mac Ethernet)
- Ask the user during SILO installation if he wants to install it into
  Masterboot or within the partition (see above the new -t option to SILO)
- Run kernel %post script, so that e.g. /boot/System.map is created after
  installation.
- Fix problems if one has more than 255 heads/tracks in the sun disklabel.
and probably a couple of other issues I forgot to mention.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
