From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sat, 26 Sep 1998 15:05:33 +0000
Subject: sparc32 2.1.121 problems
Message-Id: <marc-linux-ultrasparc-90682217607462@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I mention these here since it's at least possible some are generic, i.e.
not sparc32 specific.

[root@magnetbox ~]# uname -a
Linux magnetbox.dementia.org 2.1.121 #3 Thu Sep 24 20:36:50 EDT 1998 sparc
unknown
[root@magnetbox ~]# clock -u
Sat Sep 26 11:00:18 1998
[root@magnetbox ~]# clock -a -u
Killed

stuff from log file at bottom, it's dying in ___is_page_none; i haven't
yet tracked it.

also, i saw someone complaining of it about their PC on linux-kernel, so
this may not be any of us, but Brent complained when he was testing that
the dbri module usage went negative, and that it appeared the release
function was called a few times when it shouldn't have been, apparently
when the fd referring to the audio device was dup'd and then the parent
closed it's copy. i've observed that, but haven't yet been able to come up
with a recipe to reproduce, but i can make release *not* get closed when
it should; i just modprobe amd7930, lsmod (to see normal usage), dd an au
file to /dev/audio, and then lose. the device claims to still be open,
e.g. release never called, and hence subsequent open attempts lose.

mostly just an fyi; i'm still working on tracking further.

-D



f01ab090 D ___is_page_none
f01ab0ac D ___ss_pmd_shift

Sep 26 11:00:12 magnetbox kernel: clock(348): Kernel illegal instruction
Sep 26 11:00:12 magnetbox kernel: PSR: 418010c0 PC: f01ab104 NPC: f01ab108
Y: 00c00000
Sep 26 11:00:12 magnetbox kernel: g0: 00000001 g1: 00000008 g2: 00000000
g3: 00000000 g4: 00000000 g5: 00000000 g6: f19bc000 g7: 00000000
Sep 26 11:00:12 magnetbox kernel: o0: f19bdf60 o1: 00021e94 o2: 00000003
o3: 500cd020 o4: 500cd034 o5: 0000000c sp: f19bde28 o7: f001c88c
Sep 26 11:00:12 magnetbox kernel: l0: 41401081 l1: 5007cbc0 l2: 5007b38c
l3: 00000008 l4: 41001b01 l5: 00000000 l6: 5002c478 l7: 500d3ce4
Sep 26 11:00:12 magnetbox kernel: i0: f19bdf60 i1: 00000000 i2: f0178000
i3: f0178000 i4: ffffffff i5: 00000107 fp: f19bde90 i7: f0034470
Sep 26 11:00:12 magnetbox kernel: Instruction DUMP: 00000000  00000051
00000024 <00000018> 00000050  00000010  00000000  0000004a  00000057 
