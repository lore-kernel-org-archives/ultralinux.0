From: rick@dgii.com (Rick Richardson)
Date: Sat, 21 Nov 1998 08:57:23 +0000
Subject: Re: Worth attempting an Ultra 30 install with 1.1???u
Message-Id: <marc-linux-ultrasparc-91168520928163@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91142241707303@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91142241707303@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Rick Richardson writes...
> 
> OK, here's the status of this UP1.1 install on the Ultra 30.  This
> particular box has a broken onboard ethernet controller, so we used
> the one on the SCSI/HME PCI card to TFTP boot it.
> 
> The machines internal SCSI hard drive (with Solaris on it) was also
> removed, an an external drive (with terminators enabled) was connected.
> NOTE: I sure hope that the SUN SCSI controller is smart enough to enable
> termination for the now empty internal drive slot, and disable termination
> on the now connected external SCSI bus.

<snip>

> Unfortuantely, at this point I cannot get the thing to boot from the
> PROM monitor.  It just sits there.

OK, we seemed to have found a way around this issue.  It turns out
that if I plug the internal SCSI hard drive back in and set the
external hard drive to SCSI ID 1 I can get this thing to boot UP1.1
when I type "boot disk1".  No idea why the PROM monitor won't let me
boot the external drive with "boot disk" without the internal one
installed.  But thats not an UP1.1 problem.

Then we hit the "overwritting initrd" problem.  I then moved the SIMMs
from the first set of four slots to the third set of four slots,
as suggested by Jakub.  What a weird solution to a bug.  Whatever.

So after doing that, UltraPengiun 1.1 is finally booting on the Ultra
30.  Wow, what a day!!!!

Now the only issue left is the network.  Since the onboard ethernet
controller is broken, we are using the PCI hme board.  Unfortunately,
UP1.1 sees and configures that controller OK (as eth1), and will send
packets out on it, but is absolutely deaf when it comes to hearing
replies such as ARPs.

This smacks of an interrupt problem to me.  If the hme driver
isn't seeing interrupts from the board, this would explain the
behavior.

UltraPeniguin is *so* close to usable now.  I'm psyched.

-Rick


-- 
Rick "The Hack" Richardson  rick@dgii.com http://RickRichardson.freeservers.com
