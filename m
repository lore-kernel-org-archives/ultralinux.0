From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 06 May 1998 14:05:29 +0000
Subject: oops booting ultrapenguin-1.0.9 on an Ultra5
Message-Id: <marc-linux-ultrasparc-90222356530973@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

I've only just come across UltraPenguin 1.0.9 and have tried it on
an Ultra5 here. I tried UltraPenguin 1.0 a few weeks ago and got a
"Strange OBP version" error before it even tried booting so I thought
I'd try 1.0.9. The good news is gets a little way into the boot
process (I at least get the pretty penguin logo) but it then oopses.
Here's some of what I hope are the relevant lines, written out
longhand and then retyped in: apologies for typos.

Found CPU0 <node=F006cbb4,mid=3D0>
CENTRAL: no central found
Memory: 254712k available (1576k kernel code, 3736k data, 152k init)
	[fffff80000000000, fffff8001ff26000]
PCI: Found SABRE, main regs at fffff9fe01000000
SABRE: PCI config space at fffff9fe01000000
SABRE: DVMA at c0000000 [20000000]
ebus0: fffff9ff00000000 [1000000] fffff9ff00000000 [800000]
ebus1: fffff9fff0000000 [1000000] fffff9fff1000000 [800000]
mach64_init IOBASE[fffff9fe02c00100] MEMBASE[fffff9ffe1000000]
mach64_init chip_type[4754], total_vram[00200000]
Unable to handle kernel NULL pointer dereference <1>tsk->mm->context =3D 0
tsk->mm->pgd =3D fffff80010002000
             (BUAG :-)
swapper(0): Oops
TSTATE: 0000004480d01604 TPC 000000000057d140 TNPC 000000000057d144 Y: 0

I only wrote down some of the many registers: I hope I guessed the
important ones.

g0: 4
g1: fffffc00
g2: 1
g3: ea60
ret_pc: 5eb880
l2: 58a648
i5: 5bb368
i6: 4133b1
i7: 5ef8cc

Instruction DUMP: 01000000 01000000 01000000 <c60a0000> c40a4000 94200002
852aa018 80a0a000 12400005
Kernel panic: Attempted to kill the idle task

The Ultra5 had a SCSI+ethernet card in it connected to an external
box of 4 x 9GB disks. If necessary I can find out more from the owner
of the box.

I've only just subscribed to this list so I'm sorry if this is known
about: I've only got until next week before this box gets Solaris on
it and goes into service so I'm in a hurry to see whether Linux works
on it. I've run Linux on Intel, Alpha and Sparc32 boxes and I'd love
to try it on Ultras.

--Malcolm

--=20
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
