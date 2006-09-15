From: "Erik P. Ostlyngen" <erik.ostlyngen@uninett.no>
Date: Fri, 15 Sep 2006 09:43:59 +0000
Subject: Kernel Oops [#1] when playing sounds
Message-Id: <450A75DF.6020000@uninett.no>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Hi,

I'm not sure whether or not this is a kernel problem. I get the
following log messages sometimes when I play sounds on my ultra5. This
happens quite sporadically, so it is a bit difficult to reproduce. I
use ogg123 combined with esddsp to play sounds. My kernel is
linux-2.6.16.14.

Does anyone have suggestions to how I can investigate this problem
further?

Regards,
Erik =D8stlyngen


Sep 12 22:16:17 nagg kernel: [    6.760696] Unable to handle kernel
paging request at virtual address 0000000100030000
Sep 12 22:16:17 nagg kernel: [    6.770247]
tsk->{mm,active_mm}->context =3D 000000000000017c
Sep 12 22:16:17 nagg kernel: [    6.779664] tsk->{mm,active_mm}->pgd fffff8=
0015594000
Sep 12 22:16:17 nagg kernel: [    6.788980]               \|/ ____ \|/
Sep 12 22:16:17 nagg kernel: [    6.788995]               "@'/ .. \`@"
Sep 12 22:16:17 nagg kernel: [    6.789007]               /_| \__/ |_\
Sep 12 22:16:17 nagg kernel: [    6.789019]                  \__U_/
Sep 12 22:16:17 nagg kernel: [    6.789048] ogg123(28810): Oops [#1]
Sep 12 22:16:17 nagg kernel: [    6.789084] TSTATE: 0000000080009604
TPC: 00000000004fb3e0 TNPC: 00000000004fb3e4 Y: 00000000    Tainted:
GF
Sep 12 22:16:17 nagg kernel: [    6.789145] TPC: <memcpy+0x1a0/0x13c0>
Sep 12 22:16:17 nagg kernel: [    6.789173] g0: 0000000000800000 g1:
0000000100031578 g2: 0000000000000000 g3: 0000000000000038
Sep 12 22:16:17 nagg kernel: [    6.789217] g4: fffff8001164a940 g5:
0000000000000008 g6: fffff8001784c000 g7: 0000000000001580
Sep 12 22:16:17 nagg kernel: [    6.789258] o0: fffff80011c40480 o1:
0000000100030000 o2: 0000000000000008 o3: 00000000004fb3c0
Sep 12 22:16:17 nagg kernel: [    6.789303] o4: fffff80011c40000 o5:
0000000000000000 sp: fffff8001784eee1 ret_pc: 00000000004fd0a8
Sep 12 22:16:17 nagg kernel: [    6.789346] RPC:
<memcpy_user_stub+0xc/0x24>
Sep 12 22:16:17 nagg kernel: [    6.789377] l0: 000000000000000f l1:
fffff800118bf000 l2: 0000000000000001 l3: 0000000000000012
Sep 12 22:16:17 nagg kernel: [    6.789441] l4: 000000000d696910 l5:
00000000703ff2c8 l6: 0000000000000002 l7: 000000007002b90c
Sep 12 22:16:17 nagg kernel: [    6.789482] i0: fffff80011c40000 i1:
000000010002fac0 i2: 0000000000001ac0 i3: 0000000000000000
Sep 12 22:16:17 nagg kernel: [    6.789527] i4: 00000000000006b0 i5:
fffff800118bf000 i6: fffff8001784efa1 i7: 000000001004c9cc
Sep 12 22:16:17 nagg kernel: [    6.789717] I7:
<snd_pcm_lib_write_transfer+0x94/0xc8 [snd_pcm]>
Sep 12 22:16:17 nagg kernel: [    6.789744] Caller[000000001004c9cc]:
snd_pcm_lib_write_transfer+0x94/0xc8 [snd_pcm]
Sep 12 22:16:17 nagg kernel: [    6.789853] Caller[000000001004ccf8]:
snd_pcm_lib_write1+0x2f8/0x43c [snd_pcm]
Sep 12 22:16:17 nagg kernel: [    6.789961] Caller[000000001005d850]:
snd_pcm_oss_sync+0x16c/0x288 [snd_pcm_oss]
Sep 12 22:16:17 nagg kernel: [    6.790062] Caller[000000001005e470]:
snd_pcm_oss_release+0x1c/0x9c [snd_pcm_oss]
Sep 12 22:16:17 nagg kernel: [    6.790129] Caller[0000000000470888]:
__fput+0xac/0x174
Sep 12 22:16:17 nagg kernel: [    6.790167] Caller[000000000046f514]:
filp_close+0x68/0x7c
Sep 12 22:16:17 nagg kernel: [    6.790219] Caller[00000000004381a0]:
put_files_struct+0xa0/0xf0
Sep 12 22:16:17 nagg kernel: [    6.790265] Caller[00000000004389e0]:
do_exit+0x1e0/0x7e4
Sep 12 22:16:17 nagg kernel: [    6.790302] Caller[0000000000439010]:
sys_exit+0xc/0x18
Sep 12 22:16:17 nagg kernel: [    6.790337] Caller[0000000000406cd4]:
linux_sparc_syscall32+0x34/0x40
Sep 12 22:16:17 nagg kernel: [    6.790390] Caller[000000007000d34c]:
0x7000d34c
Sep 12 22:16:17 nagg kernel: [    6.790426] Instruction DUMP: b7b2890c
 bbb3090e  bfb38910 <c19a5e00> e3ba1e00  92026040  8ea1e040  02600020
 90022040
Sep 12 22:16:17 nagg kernel: [    6.790511] Fixing recursive fault but
reboot is needed!


