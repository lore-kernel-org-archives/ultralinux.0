From: Li Shu <lshu@whomping.ne.mediaone.net>
Date: Wed, 07 Mar 2001 22:27:18 +0000
Subject: parport_bpp on ultra 1...
Message-Id: <marc-linux-ultrasparc-98400403806958@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

I just upgraded the kernel to 2.4.2 on my ultra 1 with Redhat 6.2 --
for trying to put HP laserjet 4L on the sbus parallel port (on the mother
board chasis).  The modules parport, parport_bpp and lp (in that order)
are loaded without problem.  And the control-panel was used to configure
the printer in identical ways as it was configured on a x86 machine 
running redhat 5.1 before.  But it does not print out anything legible

It seems that data are being sent to the printer (as confirmed by the
LEDs on the printer)-- and that the problem is most likely that what's
written to /dev/lp0 is not what the printer receives.  I wonder (forgive
my boldness) if there are conversion issues because this is a 64-bit
machine.

Has anyone tried the parport-sunbpp on an ultra 1?

-- Li


-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
