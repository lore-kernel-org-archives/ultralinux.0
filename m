From: rick@dgii.com (Rick Richardson)
Date: Fri, 20 Nov 1998 22:04:42 +0000
Subject: Re: Worth attempting an Ultra 30 install with 1.1???u
Message-Id: <marc-linux-ultrasparc-91166117619230@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91142241707303@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91142241707303@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


OK, here's the status of this UP1.1 install on the Ultra 30.  This
particular box has a broken onboard ethernet controller, so we used
the one on the SCSI/HME PCI card to TFTP boot it.

The machines internal SCSI hard drive (with Solaris on it) was also
removed, an an external drive (with terminators enabled) was connected.
NOTE: I sure hope that the SUN SCSI controller is smart enough to enable
termination for the now empty internal drive slot, and disable termination
on the now connected external SCSI bus.

The first problem I ran into was that "fdisk" would bus error when
trying to init the hard disk.  I fixed that by going to a shell
prompt, making the /dev/sda device node by hand, and then doing a
"cat /dev/zero > /dev/sda".  After that, fdisk was happy and I could
lay down a a new disk lable and partitions.

I then had some trouble accessing the CD-ROM.  So I did a tftboot
again.  This time I couldn't get to the hard disk, but the CDROM
was there.  Various messages were coming out of the SCSI device
driver, but I didn't write them down.  After about the third
tftpboot, the SCSI driver loaded and both the hard drive and
CDROM were visable.

I then installed the software without incident from the CDROM and got
all the way thru SILO.

Unfortuantely, at this point I cannot get the thing to boot from the
PROM monitor.  It just sits there.

I was able to use the tftprescue.img to boot the machine and mount
the hard disk.  Everything is there.

So, any ideas what my next move should be????

-Rick


-- 
Rick "The Hack" Richardson  rick@dgii.com http://RickRichardson.freeservers.com
