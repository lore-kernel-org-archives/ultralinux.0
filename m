From: John Gilmore <gnu@toad.com>
Date: Wed, 06 May 1998 20:58:24 +0000
Subject: Re: Ultra 1 and Ultra 5
Message-Id: <marc-linux-ultrasparc-90222356530977@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530975@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530975@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> The PCI based Ultra machines use the Siemens SAB serial chipsets,
> which can scream.  The SBUS based machines from the first Sparc on use
> the Zilogs, which also have the potential to scream.

> Unfortunately, even on the Ultra PCI systems, they didn't hook up the
> DMA lines to the Siemens SAB serial chips at least on the Ultra/AX
> motherboards, so things don't scream and polled I/O must be used to
> transfer the bytes in/out of the chip at each interrupt.  The decently
> sized FIFO on the SAB chips helps a bit, but lack of DMA still hurts.

What has kept Linux Suns from high baud rates all along is that the
kernel frequently disables serial interrupts for more than three
character times (the size of the Zilog FIFO).

The serial ports are deliberately at very high hardware interrupt
priorities.  In SunOS, their interrupts were *never* disabled, even at
the highest SPL level.  They used a short custom assembly-language
driver which never touched anything but its own state, so it could
safely interrupt any other kernel code.  This little driver did
virtual-DMA using a kernel memory buffer, and if the hardware reported
anything notable, or the buffer needed service, it would set a flag
for waking up the Unix driver on the next timer interrupt.

Even an SS-1 could reliably take 8000 interrupts/sec to service the
sound chip, without sweating.  That's 64 kbits/sec if you did the
serial ports the same way.  Multiply that by the speedup from SS-1 to
Ultra 2.  There "should be" no problem with Sun serial port speed,
it's all a "simple matter of software".

Running Sun serial ports at consistent high speed is a great way to
diagnose where your kernel is spending large blocks of time with
interrupts disabled.  I think nobody has ever gotten to debugging that
in S/Linux, though; too many other things to do.

	John
