From: David Miller <davem@twiddle.net>
Date: Fri, 26 Mar 1999 21:50:17 +0000
Subject: Re: Am I just crazy...?
Message-Id: <marc-linux-ultrasparc-92248503529823@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92246168210534@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92246168210534@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 26 Mar 1999 10:14:10 -0500 (EST)
   From: Peter Jones <pjones@redhat.com>

   Somebody let me know if I've read something wrong someplace, or if
   I'm just nuts (and if I am, I'd like to learn something from this,
   so give me a good explaination of why I'm nuts ;)

Jakub gave a response, but I'll respond too to try and maybe clarify a
few issues.

Ideally, the driver author reads the pci_dev struct and gets the
32-bit irq number from there and just passes it into request_irq() and
all is fine.

This 32-bit irq number has no bearing at all with the IRQ "level" at
which the interrupt is serviced on the processor, this is the PIL that
Jakub referred to.

The 32-bit number actually is a pointer to an ino_bucket structure
which is all the information we need to manipulate that interrupt on
sparc64.

INO's are UltraSparc (actually "sun5 architecture") interrupt numbers,
it is composed of two parts, one part (the higher bits) says who the
interrupt is coming from (PCI controller 1, CPU 3, Creator Graphics
card, SBUS controller 2, etc.) the lower bits say which device (or
more generally: which interrupt source) within that top level
controller generated the interrupt.

INO's are sent as packets to cpus, the cpu receives the interrupt,
reads the INO in the packet, and uses this to lookup the appropriate
ino_bucket entry in a table so it knows what PIL to service the
interrupt at.  It then sends itself a local software PIL interrupt at
that level and returns from the INO packet trap.

The next time the cpu's interrupt listening level is such that the PIL
posted will be heard, it will service the interrupt and call the
handler in the device driver.

More details available upon request.  The above is just for the
curious who want to know how the guts work, a PCI driver author should
not need to know any of it :-)

Later,
David S. Miller
davem@redhat.com
