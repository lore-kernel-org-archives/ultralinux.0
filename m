From: David Cooley <n5xmt@bellsouth.net>
Date: Sun, 19 Sep 1999 23:40:59 +0000
Subject: Re: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93778451004968@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93761559712738@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93761559712738@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 11:02 PM 9/19/1999 +0200, Florian Lohoff wrote:

>As i understand Dave and the Source on every initializing of the Cards
>the firmware gets loaded into the chips ... So you will always
>end up with the firmware in the driver ...

Yep... Looking at the code in qlogicpti.c that's what it does... The 
firmware is in qlogicpti_asm.c



>Flo
>PS: I have got problems with the QlogicPTI SBUS too. I have problems
>     under high raid load where the SCSI bus seems to freeze (The drivers
>     does ongoing resets of the single targets which does not stop until
>     i switch the machine off)


Mine started doing that on the second PTI card I installed... Got looking 
at the boot messages where it first detects the cards... My old one 
(working fine) is detected as ultra scsi... the "new one" is detected as 
fast scsi...  Both cards have the same SUN part number on them, but the 
"new" one has ver 1.71 on the sticker on the prom on the board, and the 
"old" one (the one that works all the time) has 1.73 on it.  The code read 
by the kernel driver in the boards is 1.21 for the one that fails and 1.25 
on the good one.

=============================David Cooley N5XMT Internet: N5XMT@bellsouth.net
Packet: N5XMT@KQ4LO.#INT.NC.USA.NA T.A.P.R. Member #7068
We are Borg... Prepare to be assimilated!
=============================
