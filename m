From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Tue, 08 Dec 1998 05:01:13 +0000
Subject: Re: egcs 1.1.1 and ultrasparc .. possible ?
Message-Id: <marc-linux-ultrasparc-91314493107476@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91308610811901@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91308610811901@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

   Date: 	Mon, 7 Dec 1998 18:23:15 +0100 (EET)
   From: =3D?ISO-8859-2?Q?Tomasz_K=B3oczko?=3D <kloczek@rudy.mif.pg.gda.pl>

   I try use egcs on ultra. After building binutils 2.9.1.0.17 and
   egcs 1.1.1 with using UP 1.1 gcc/binutils I try rebuild binutils
   ones more and this fails. What is wrong in above procedure ? What I
   need (patches ?) for making this ? If anyone know please .. :)

You need to build these things in "sparc32 mode".  ie. run:

sparc32 bash

Then the configure scripts of those packages will configure and build
properly.

Later,
David S. Miller
davem@dm.cobaltmicro.com
