From: =?ISO-8859-2?Q?Tomasz_K=B3oczko?= <kloczek@rudy.mif.pg.gda.pl>
Date: Sun, 12 Sep 1999 02:07:20 +0000
Subject: Re: kernel 2.2.x and eth cards (Sun hme and Sun quad)
Message-Id: <marc-linux-ultrasparc-93710227820075@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93708356410708@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93708356410708@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

On Sat, 11 Sep 1999, David S. Miller wrote:

>    Date:   Sat, 11 Sep 1999 22:56:21 +0200 (CEST)
>    From: =3D?ISO-8859-2?Q?Tomasz_K=B3oczko?=3D <kloczek@rudy.mif.pg.gda.p=
l>
>=20
>    Hmm .. seems that Sun Quad has name "qfe" .. not "qe" and second .. th=
is
>    not one device "qec" and four chann "qe" devices but only four "qfe" on
>    the same level.
>=20
> That's right, you don't have a card driven by the sunqe.c driver.
> You have a quad-fast-ethernet, which is composed of 4 happy meal fast
> ethernet interfaces.  Thus the sunhme.o driver is what would drive
> them.
>=20
> There were a few bugs in the sunhme driver for SBUS qfe cards, like
> yours, they are now fixed as of 2.2.13pre6

Hmm .. but need rather 2.2.x. Is it possible to backport this ?
Quad can wait but hme is neccessary for me ..

>    Looking on above prink outptu I see that my hme have "SUNW,hme" name a=
nd
>    seems that (partialy) above loop is correctly .. but why (the hell) on
>    initializing hme is probed qfe/SUNW,qfe (?) which is name for Quad
>    interfaces ?
>=20
> Becuase SUNW,qfe is "quad happy meal", whereas SUNW,qec is "quad
> 10baseT ethernet" and a totally different card/chipset.

(sht* &#@!) I'm determined to try write this .. I need this card under
Linux (now .. max in month) in other way I must back to Sol (sht*^2) :->

I understand that basing on handling happy meal fast ethernet is possible
to write driver for fast quad ? and/or this modyfications can be
integrated into sunhme.c ? Is avalaible any other doc for this card which
can help write this and/or what I must know additionaly before starting
this job ?

(thanks)

kloczek
--=20
-----------------------------------------------------------
*Ludzie nie maj=B1 problem=F3w, tylko sobie sami je stwarzaj=B1*
-----------------------------------------------------------
Tomasz K=B3oczko, sys adm @zie.pg.gda.pl|*e-mail: kloczek@rudy.mif.pg.gda.p=
l*
