From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Mon, 06 Sep 1999 14:44:26 +0000
Subject: Re: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93662879617371@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93637236300459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93637236300459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
 >    Date: Fri,  3 Sep 1999 12:11:10 -0400 (EDT)
 > 
 >    David S. Miller writes:
 >     > Have you installed the XFree86-Sun24 rpm updates for 6.0?
 > 
 >    Yes...here's a list of what's installed.
 > 
 > Ok, would you mind running your X session as root from the console for
 > just one day until you get a crash?  I believe this is the only way to
 > get the crash dump with the script hacks, due to security checks in
 > the X server wrappers.
 > 
 > Once you get a dump, send me the output and I can then finally debug
 > this problem.

OK Dave, here's the file from "/tmp".  It crashed over the weekend.
By the way, the kernel crashed also and I wrote down everything on the
screen.  It had one of those *splat* faces on it.  If you want me to
key in all that stuff to help you debug the kernel crash I will do it,
but it will probably take about 20 minutes.  Let me know if it would
be helpful and you shall have it.  I am running X as root again in
case it crashes so I can give you more information.  Happy Labor Day!


*** Segmentation fault
Register dump:

 PSR: ff801080 PC: 00027c48 NPC: 00027c4c   Y: 00000000
 g0: 00000000 g1: ffffffc0  g2: 005faf40  g3: 00000000
 g4: ff986ec0  g5: 0000000f  g6: 00000000  g7: 00000020
 o0: 00000000  o1: 005faf40  o2: 005faf00  o3: 005faf40
 o4: 00000020  o5: 718df110  sp: effff4f8  o7: 00000001
 l0: 00027480  l1: ffffffd8  l2: 00027cec  l3: 00000780
 l4: 0000002c  l5: 0000001c  l6: 005faf10  l7: 0000003c
 i0: 00c74000  i1: 71f58200  i2: 00000008  i3: 00000001
 i4: 00000008  i5: 00002000  fp: effff598  i7: 000213e0

 Old mask: 00000000 XFSR: 0000000000000820 GSR: 04 FPRS: 7
  f0: 0000000000000000   f2: 0000000200000000   f4: 0000000000000000
  f6: 0000000000000000   f8: 0000000000000000  f10: 0000000000000000
 f12: 0000000000000000  f14: 0000000000000000  f16: 0000000000000000
 f18: 0000000000000000  f20: 0000000000000000  f22: 0000000000000000
 f24: 0000000000000000  f26: 0000000000000000  f28: 0000000000000000
 f30: 0000000000000000  f32: 0000000000000000  f34: 0000000000000000
 f36: 0000000000000000  f38: 0000000000000000 f40: 0000000000000000
 f42: 0000000000000000  f44: 0000000000000000  f46: 0000000000000000
 f48: 0000000000000000  f50: 0000000000000000  f52: 0000000000000000
 f54: 0000000000000000  f56: 0000000000000000  f58: 0000000000000000
 f60: 0000000000000000  f62: 0000000000000000

Backtrace:
[0x27c48]
[0x213e0]
[0x1017dc]
[0x217d4]
[0xfda0c]
[0x40864]
[0x3ced8]
[0x4ec00]
/lib/libc.so.6(__libc_start_main+0x128)[0x7009d8c8]
[0x11f2c]

-- 
Ryan
