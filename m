From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Mar 1999 15:28:18 +0000
Subject: Re: Am I just crazy...?
Message-Id: <marc-linux-ultrasparc-92246269211509@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92246168210534@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92246168210534@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Either I'm absolutly nuts (a possibility), or something ain't right in the
> PCI stuff on sparc64... Here's why I'm leaning away from me being nuts.
> 
> If I look at /proc/pci (yeah, i know, its depricated), I see that a
> device, lets pick the IDE controller for this one, Is on Bus 1, device 3,
> function 0.  So I go to look at the data there, and I get
> 
> [pjones@bart 01]$ od -tx1 -Ax 03.0 
> 000000 95 10 46 06 05 00 80 02 03 8f 01 01 00 40 00 00
> 000010 01 00 c0 00 09 00 c0 00 11 00 c0 00 19 00 c0 00
> 000020 21 00 c0 00 00 00 00 00 00 00 00 00 95 10 46 06
> 000030 00 00 00 00 00 00 00 00 00 00 00 00 00 01 02 04
> 000040
> 
> That says its on IRQ 4, right?  (I'm actually somewhat unsure that its not
> saying IRQ of 02, becuase there appears to be some byte order wierdness
> here) 

PCI_INTERRUPT_LINE is at offset 0x3c, AFAIK, so it is IRQ_LINE 0, IRQ_PIN 1, 
I think.
But really, interrupts are not so straightforward on sparc64.
PCI bridge sends interrupt packets with identification which
device/function/pin is pending (and btw you can disable/enable each such
pin individually), so this is the second interrupt number (called INO), then
Linux receives a IRQ trap and based on this INO finds out which interrupt to
post, thus a third and final irq number comes in, this one is called PIL
(and this is the number you see in /proc/interrupts) and queues that PIL for
delivery.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
