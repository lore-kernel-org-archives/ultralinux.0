From: Fausto Saporito <qeifasa@armonia.tei.ericsson.se>
Date: Thu, 07 Jan 1999 15:31:35 +0000
Subject: raid on ultra1
Message-Id: <marc-linux-ultrasparc-91582280718719@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello all,

I compiled and booted with new kernel 2.2.0pre4
Is seems all ok, but I have a complete failure with mkraid, either
0.50beta10 either 0.90 version.
RAID support is loaded as module.

My /etc/raid5.conf is

# Sample raid-5 configuration
raiddev                 /dev/md0
raid-level              5
nr-raid-disks           3
chunk-size              32

# Parity placement algorithm

#parity-algorithm       left-asymmetric
parity-algorithm        left-symmetric
#parity-algorithm       right-asymmetric
#parity-algorithm       right-symmetric

# Spare disks for hot reconstruction
#nr-spare-disks         0

device                  /dev/sdd4
raid-disk               0

device                  /dev/sde4
raid-disk               1

device                  /dev/sdf4
raid-disk               2

when I run mkraid /dev/md0 I have

handling MD device /dev/md0
analyzing super-block
disk 0: /dev/sdd4, 2077080kB, raid superblock at 2076992kB
mkraid: aborted

sys32_ioctl: Unknown cmd fd(3) cmd(400c0910) arg(000275f0)
sys32_ioctl: Unknown cmd fd(4) cmd(400c0910) arg(effffc30)
Unimplemented SPARC system call 140
TSTATE: 0000004400008a02 TPC: 0000000000012e08 TNPC: 0000000000012e0c Y:
00000000
g0: 0000000000000000 g1: 000000000000008c g2: 0000000000000660 g3:
0000000000027a10
g4: 0000000000000018 g5: 0000000000000000 g6: 0000000000000000 g7:
0000000000000000
o0: 0000000000000004 o1: 0000000000000000 o2: 0000000000000400 o3:
00000000efffe7b0
o4: 0000000000000000 o5: 000000000a0a0a0a sp: 00000000efffe6e8 ret_pc:
00000000700647f8
l0: 700ccc40 l1: 00000000 l2: effff820 l3: 00000000 l4: effff8e8 l5:
0000003b l6: 00000000 l7: 700d3e5c
i0: 00000004 i1: 00000000 i2: 00000400 i3: efffe7b0 i4: 00000000 i5:
00000400 i6: efffe750 i7: 00012e7c
