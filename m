From: Kris Boulez <kris@belbone.be>
Date: Thu, 28 May 1998 10:16:32 +0000
Subject: Re: Install of silo fails on ultra-2
Message-Id: <marc-linux-ultrasparc-90222356531087@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531081@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531081@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Sorry, my fault.  Usually I also have a vmlinux.aout image in my
> netboot install area too, and _this_ is what I use to recover from
> failed silo invocations during an install.
> 
> I've built such an image that should hopefully work just fine for this
> purpose.  Get it from:
> 
Got it and installed. Works only partially though :-( I get the following 
error

 zs_open cua0, tty overwrite.
 zs_open cua0, tty overwrite.
 zs_open cua0, tty overwrite.
 zs_open cua0, tty overwrite.
 zs_open cua0, tty overwrite.
 zs_open cua0, tty overwrite.

(I have a console attached to cua0). When I detach the console and attach 
it later I get the following oops

 
Unable to handle kernel NULL pointer dereference<1>tsk->mm->context = 0000000000000000
tsk->mm->pgd = fffff80000002000
              \|/ ____ \|/
              "@'/ .. \`@"
              /_| \__/ |_\
                 \__U_/
swapper(0): Oops
TSTATE: 0000009980f09600 TPC: 00000000005714a8 TNPC: 00000000005714ac Y: 01200000
g0: 0000000000413850 g1: 00000000ffffec00 g2: 0000000000000000 g3: 0000000000434e3c
g4: fffff80000000000 g5: 0000000000000000 g6: 0000000000410000 g7: 0000000000000000
o0: 0000000000000001 o1: 0000000000000000 o2: 00000000000000ff o3: 000000000000000d
o4: 0000000000000000 o5: 00000000000010c6 sp: 0000000000413111 ret_pc: 0000000000571480
l0: fffff8000fd78000 l1: 00000000005d7158 l2: 00000000000010c6 l3: 00000000005b77b0
l4: 00000000005d7158 l5: 0000000000000001 l6: 00000000005bb140 l7: 0000000000000008
i0: 000000000000000d i1: 0000000000662038 i2: 0000000000413ad0 i3: 00000000005712a0
i4: 00000000005b8af8 i5: 0000000000000000 i6: 00000000004131b1 i7: 00000000004176dc
Instruction DUMP: 90022001  d25c2238  d0242240 <c02a4000> 92026001  d05c2230  d2742238  f02a0000  90022001 
Aiee, killing interrupt handler
Kernel panic: Attempted to kill the idle task!
In swapper task - not syncing
Press L1-A to return to the boot prom


I got the machine booted one time cleanly and have silo installed now

Kris,
-- 
Kris Boulez				kris@belbone.be
