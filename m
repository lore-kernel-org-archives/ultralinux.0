From: "David S. Miller" <davem@redhat.com>
Date: Sat, 11 Sep 1999 23:41:56 +0000
Subject: Re: kernel 2.2.x and eth cards (Sun hme and Sun quad)
Message-Id: <marc-linux-ultrasparc-93709404416173@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93708356410708@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93708356410708@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

   Date:   Sat, 11 Sep 1999 22:56:21 +0200 (CEST)
   From: =3D?ISO-8859-2?Q?Tomasz_K=B3oczko?=3D <kloczek@rudy.mif.pg.gda.pl>

   Hmm .. seems that Sun Quad has name "qfe" .. not "qe" and second .. this
   not one device "qec" and four chann "qe" devices but only four "qfe" on
   the same level.

That's right, you don't have a card driven by the sunqe.c driver.
You have a quad-fast-ethernet, which is composed of 4 happy meal fast
ethernet interfaces.  Thus the sunhme.o driver is what would drive
them.

There were a few bugs in the sunhme driver for SBUS qfe cards, like
yours, they are now fixed as of 2.2.13pre6

   Looking on above prink outptu I see that my hme have "SUNW,hme" name and
   seems that (partialy) above loop is correctly .. but why (the hell) on
   initializing hme is probed qfe/SUNW,qfe (?) which is name for Quad
   interfaces ?

Becuase SUNW,qfe is "quad happy meal", whereas SUNW,qec is "quad
10baseT ethernet" and a totally different card/chipset.

Later,
David S. Miller
davem@redhat.com
