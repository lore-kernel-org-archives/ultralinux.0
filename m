From: Peter Jones <pjones@redhat.com>
Date: Wed, 01 Sep 1999 14:45:57 +0000
Subject: Re: X still crashing
Message-Id: <marc-linux-ultrasparc-93619706920994@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93619297513663@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93619297513663@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 1 Sep 1999, David S. Miller wrote:

> Ok, first thing, double check the server rpm you have installed
> by running "rpm -qvf /usr/X11R6/bin/Xsun24", it should print out
> "XFree86-Sun24-3.3.3.1-52"

For what its worth, I've got XFree86-Sun24-3.3.3.1-52 on a u10 creator,
and I manage to get this when I replace /etc/X11/X with the LD_PRELOAD
and such:

*** Segmentation fault
Register dump:

 PSR: ff801085 PC: 00027bcc NPC: 00027bd0   Y: 00000000
 g0: 00000000 g1: ffffffc0  g2: 00464940  g3: 00000009
 g4: ffcf4780  g5: 00000000  g6: 00000000  g7: 00000020
 o0: 00000000  o1: 004647c0  o2: 00464780  o3: 004647c0
 o4: 00000030  o5: ffffff60  sp: effff690  o7: 00000001
 l0: 00027480  l1: ffffffe4  l2: 00027d10  l3: 0000073c
 l4: 00000038  l5: 00000030  l6: 00464778  l7: 00000030
 i0: 00770000  i1: 71d73a40  i2: 00000028  i3: 00000009
 i4: 00000028  i5: 00002000  fp: effff730  i7: 000213e0

 Old mask: 00000000 XFSR: 0000000000000820 GSR: 00 FPRS: 7
  f0: 007f0000007f0000   f2: 0000000a00000000   f4: 0000000000000000
  f6: 0000000000000000   f8: 0000000000000000  f10: 0000000000000000
 f12: 0000000000000000  f14: 0000000000000000  f16: 007f0000007f0000
 f18: 007f0000007f0000  f20: 007f0000007f0000  f22: 007f0000007f0000
 f24: 007f0000007f0000  f26: 007f0000007f0000  f28: 007f0000007f0000
 f30: 007f0000007f0000  f32: 007f0000007f0000  f34: 007f0000007f0000
 f36: 007f0000007f0000  f38: 007f0000007f0000 f40: 007f0000007f0000
 f42: 007f0000007f0000  f44: 007f0000007f0000  f46: 007f0000007f0000
 f48: 007f0000007f0000  f50: 007f0000007f0000  f52: 007f0000007f0000
 f54: 007f0000007f0000  f56: 007f0000007f0000  f58: 007f0000007f0000
 f60: 007f0000007f0000  f62: 007f0000007f0000

Backtrace:
[0x27bcc]
[0x213e0]
[0x1017dc]
[0x217d4]
[0x3f44c]
[0x3ced8]
[0x4ec00]
/lib/libc.so.6(__libc_start_main+0x128)[0x7009d8c8]
[0x11f2c]

 -- Peter

Old MacDonald had an agricultural real-estate tax abatement.
