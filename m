From: =?ISO-8859-2?Q?Tomasz_K=B3oczko?= <kloczek@rudy.mif.pg.gda.pl>
Date: Tue, 08 Dec 1998 08:07:03 +0000
Subject: Re: egcs 1.1.1 and ultrasparc .. possible ?
Message-Id: <marc-linux-ultrasparc-91313362000041@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91308610811901@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91308610811901@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

On Mon, 7 Dec 1998, David S. Miller wrote:

>    Date: 	Mon, 7 Dec 1998 18:23:15 +0100 (EET)
>    From: =3D?ISO-8859-2?Q?Tomasz_K=B3oczko?=3D <kloczek@rudy.mif.pg.gda.p=
l>
>=20
>    I try use egcs on ultra. After building binutils 2.9.1.0.17 and
>    egcs 1.1.1 with using UP 1.1 gcc/binutils I try rebuild binutils
>    ones more and this fails. What is wrong in above procedure ? What I
>    need (patches ?) for making this ? If anyone know please .. :)
>=20
> You need to build these things in "sparc32 mode".  ie. run:
>=20
> sparc32 bash
>=20
> Then the configure scripts of those packages will configure and build
> properly.

Works :)
Thanks.

Dave .. is this possible to build egcs for crosscompile sparc64 binaries ?
If yes .. simple how to do this ? How to prepare binutils and egcs ?

kloczek
PS. If any one want .. ready to use rpm with binutils 2.9.1.0.17 is
avalaible on ftp://cenzor.zie.pg.gda.pl/pub/PLD-stable/sparc/.
--=20
-----------------------------------------------------------
*Ludzie nie maj=B1 problem=F3w, tylko sobie sami je stwarzaj=B1*
-----------------------------------------------------------
Tomasz K=B3oczko, sys adm @zie.pg.gda.pl|*e-mail: kloczek@rudy.mif.pg.gda.p=
l*
