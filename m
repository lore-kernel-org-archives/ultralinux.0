From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 06 May 1998 18:27:16 +0000
Subject: Re: Ultra 1 and Ultra 5
Message-Id: <marc-linux-ultrasparc-90222356530976@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530975@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530975@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 06 May 1998 11:26:04 -0700
   From: "Derek R. Pizzagoni" <drp@interlink.com>

   Have there been any modifications to the serial ports in the Ultra
   1's and/or Ultra 5's?

   The older Sparcs had a max of 38400 on the serial ports.  Is it the
   same in the Ultra 1 and in the Ultra 5?

The PCI based Ultra machines use the Siemens SAB serial chipsets,
which can scream.  The SBUS based machines from the first Sparc on use
the Zilogs, which also have the potential to scream.

Both can scream, when they can use DMA.

Unfortunately, even on the Ultra PCI systems, they didn't hook up the
DMA lines to the Siemens SAB serial chips at least on the Ultra/AX
motherboards, so things don't scream and polled I/O must be used to
transfer the bytes in/out of the chip at each interrupt.  The decently
sized FIFO on the SAB chips helps a bit, but lack of DMA still hurts.

Later,
David S. Miller
davem@dm.cobaltmicro.com
