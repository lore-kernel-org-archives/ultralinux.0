From: Florian Lohoff <flo@rfc822.org>
Date: Tue, 21 Sep 1999 12:27:06 +0000
Subject: Re: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93791704716273@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93761559712738@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93761559712738@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, Sep 19, 1999 at 07:40:59PM -0400, David Cooley wrote:
> 
> Mine started doing that on the second PTI card I installed... Got looking 
> at the boot messages where it first detects the cards... My old one 
> (working fine) is detected as ultra scsi... the "new one" is detected as 
> fast scsi...  Both cards have the same SUN part number on them, but the 
> "new" one has ver 1.71 on the sticker on the prom on the board, and the 
> "old" one (the one that works all the time) has 1.73 on it.  The code read 
> by the kernel driver in the boards is 1.21 for the one that fails and 1.25 
> on the good one.

All 3 cards i have build into my SparcServer 5 are Version 1.21 (by label
on the chips and also on detection)

Probably this all is an Firmware problem. BTW: Mine are all detected as
Fast-Wide controllers

Sep 12 15:37:00 puke kernel: qpti0: IRQ 53 SCSI ID 7 (Firmware 1.21
			95/05/18) [Fast Wide, using single ended interface]

Sep 12 15:37:00 puke kernel: qpti1: IRQ 53 SCSI ID 7 (Firmware 1.21
			95/05/18) [Fast Wide, using single ended interface]

Sep 12 15:37:00 puke kernel: qpti2: IRQ 53 SCSI ID 7 (Firmware 1.21
			95/05/18) [Fast Wide, using single ended interface]

Sep 12 15:37:00 puke kernel: QPTI: Total of 3 PTI Qlogic/ISP hosts found,
			3 actually in use.

So - Which way to go for new Firmware ?

Flo
-- 
Florian Lohoff		flo@rfc822.org		      	+49-5241-470566
  ...  The failure can be random; however, when it does occur, it is
  catastrophic and is repeatable  ...             Cisco Field Notice
