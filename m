From: Florian Lohoff <flo@rfc822.org>
Date: Wed, 22 Sep 1999 01:02:19 +0000
Subject: Re: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93799324406052@msgid-missing>
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

I just had a quick look. The Driver Firmware in the Kernel source
seems to be 1.31 (For non-PTI and 1.24 for PTI)... In one of the latest
Sun patches i found a 1.32 (Reverse *ng*n**r*ng). Ill try to make a
qlogicpti_asm.c compatible file (Without knowing what i am doing).

As my cards dont state "Performance Technologies" i think the 1.31 gets
loaded currently (dmesg states Firmware 1.21 but per design the firmware
gets loaded on initialization)

So long ...

Flo
-- 
Florian Lohoff		flo@rfc822.org		      	+49-5241-470566
  ...  The failure can be random; however, when it does occur, it is
  catastrophic and is repeatable  ...             Cisco Field Notice
