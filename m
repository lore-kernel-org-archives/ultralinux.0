From: Svante Sormark <svinto@ita.chalmers.se>
Date: Mon, 16 Nov 1998 17:15:27 +0000
Subject: Re: ultra 30 again ...
Message-Id: <marc-linux-ultrasparc-91127038123515@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91126985723327@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91126985723327@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


never mind this, i must have screwed something up when messing with
initrd or something. i works like a charm now!

On Mon, 16 Nov 1998, Svante Sormark wrote:

>hi all,
>
>now i've got the silo/initrd problem fixed (thanks again jakub) so here's
>the next one.=20
>
><cut from boot-messages>
>VFS: Mounted root (ext2 filesystem) readonly.
>change_root: old root has d_count=3D1
>Trying to unmount old root ... okay
>INIT: version 2.71 booting
>Unable to handle kernel NULL pointer dereference<1>tsk->mm->context >00000=
00000000403
>tsk->mm->pgd =3D fffff80000003000
>              \|/ ____ \|/
>              "@'/ .. \`@"
>              /_| \__/ |_\
>                 \__U_/                                                =20
>init(1): Oops                                                          =20
>TSTATE: 0000000080009606 TPC: 000000000045b780 TNPC: 000000000045b784 Y:
>00000000
>g0: fffff800009c6ac0 g1: 0000000000000000 g2: 0000000000000000 g3:
>0000000000000000
>g4: fffff80000000000 g5: 0000000000000000 g6: fffff80027ef8000 g7:
>0000000000000020
>o0: 0000000000000000 o1: 000000000045b1a0 o2: 000000000045b6fc o3:
>00000000000000f1
>o4: 00000000000000f0 o5: 0000000000000000 sp: fffff80027efb3f1 ret_pc:
>000000000045b6b4
>l0: 0000000000000000 l1: 8000000027d64eb0 l2: fffff80000904d30 l3:
>fffff80000904d60
>l4: fffff80027cb2000 l5: fffff80027d64000 l6: 000000000056fc00 l7:
>0000000000000008
>i0: fffff800009ce440 i1: 0000000000000009 i2: fffffffffffffff7 i3:
>0000000000000000
>i4: 000000000056b2f8 i5: 0000000000000107 i6: fffff80027efb541 i7:
>0000000000459a2c
>Caller[0000000000459a2c]                                               =20
>Caller[00000000004217fc]                                               =20
>Caller[000000000040fe74]                                               =20
>Caller[00000000700a4910]                                               =20
>Instruction DUMP: 10680014  b4103fea  d05e2018 <d65a2070> 02c2c009
>933e6000  90100018  9fc2c000  9407a77f=20
>
></cut>
>
>
>
>--------------------------------------------------------------------------=
 =20
>|  Svante S=F6rmark  |  Chalmers IT -avdelning  | utvecklare | 0707 538336=
 |=20
>--------------------------------------------------------------------------=
 =20
>
>
>

-------------------------------------------------------------------------- =
=20
|  Svante S=F6rmark  |  Chalmers IT -avdelning  | utvecklare | 0707 538336 =
|=20
-------------------------------------------------------------------------- =
=20
