From: Peter Jones <pjones@redhat.com>
Date: Fri, 26 Mar 1999 15:14:10 +0000
Subject: Am I just crazy...?
Message-Id: <marc-linux-ultrasparc-92246168210534@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Either I'm absolutly nuts (a possibility), or something ain't right in the
PCI stuff on sparc64... Here's why I'm leaning away from me being nuts.

If I look at /proc/pci (yeah, i know, its depricated), I see that a
device, lets pick the IDE controller for this one, Is on Bus 1, device 3,
function 0.  So I go to look at the data there, and I get

[pjones@bart 01]$ od -tx1 -Ax 03.0 
000000 95 10 46 06 05 00 80 02 03 8f 01 01 00 40 00 00
000010 01 00 c0 00 09 00 c0 00 11 00 c0 00 19 00 c0 00
000020 21 00 c0 00 00 00 00 00 00 00 00 00 95 10 46 06
000030 00 00 00 00 00 00 00 00 00 00 00 00 00 01 02 04
000040

That says its on IRQ 4, right?  (I'm actually somewhat unsure that its not
saying IRQ of 02, becuase there appears to be some byte order wierdness
here) 

I also notice that in /proc/interrupts, ide0 (this device) isn't quite
on irq 4 (or am i not byteswapping sanely, and should it be saying 2?)
either way, unless I've missed something, it should be 2 or 4, not...
 
[pjones@bart 02]$ cat /proc/interrupts |grep ide
  3:     881905   ide0

3?

Somebody let me know if I've read something wrong someplace, or if I'm
just nuts (and if I am, I'd like to learn something from this, so give me
a good explaination of why I'm nuts ;)

 -- Peter

I'm not one of those who think Bill Gates is the devel.  I simply
suspect that if Microsoft ever met up with the devel, it wouldn't
need an interpreter.
		-- Nick Petreley
