From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 17 Sep 1999 22:32:39 +0000
Subject: Re: Install options on AXi
Message-Id: <marc-linux-ultrasparc-93761557212524@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93760525605213@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93760525605213@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, Sep 17, 1999 at 03:43:22PM -0400, Brent Jay Thorpe wrote:
> All,
> 
> I have to make a customer presentation about install options with Linux
> on AXi (CDROM, Floppy, Network.)  I have been doing some homework in
> making the "slideware" and found that you could get the initial boot
> loader from a floppy device (as well as tftp.)  In following the
> instructions on creating the floppy, I found that my system does not
> recognize the floppy device as a valid block device.  In other words, it
> cannot see the floppy device at all.  

Have you tried /dev/fd0 or /dev/fd1 as the device? Some AX and AXi boxes
have these swapped, so even if you only have one floppy, it might be
/dev/fd1. See bootup dmesg which one do you have. (It is a hardware issue).

> I also found out that it does not
> recognize the printer port (lp0) either.  Anyone know what is the
> correct device for both the floppy and printer on an AXi?

Have you loaded all the required modules for the parallel port?
You need probably parport_ax, parport and lp modules.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
