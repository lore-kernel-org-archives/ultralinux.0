From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 18 Dec 1998 18:18:11 +0000
Subject: Small UP1.1.9 update
Message-Id: <marc-linux-ultrasparc-91401012901248@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

Current updates:
ftp		- merge in RH updates
samba		- merge in RH updates
sysklogd	- merge in RH updates
ucd-snmp	- fix alignment problems, in fact, they were just
		  because someone special-cased linux and did it
		  wrong in that case, while on all other systems
		  it was done right - so, your snmpd should work
		  and not dump core on the first query. Also,
		  fixed printing of IP addresses (on bigendian
		  machines, some addresses were printed in reverse
		  dot order).

Enjoy. More to come later.
It seems like current boot.img cannot boot on SBUS floppies and maybe on
Ultra5. I'll keep investigating together with davem.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
