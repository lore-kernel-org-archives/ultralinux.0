From: Svante Sormark <svinto@ita.chalmers.se>
Date: Thu, 05 Nov 1998 16:12:37 +0000
Subject: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91029286902028@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

hi!

i'm having a few problems with the new ultrapenguin stuff.=20

1 - the install works flawlessly, but there seems to be something wrong
with initrd... when i reboot after installing i get:

initrd overwritten ([some address] > [some other address]) - disabling it

and after this it of course can't mount root. is there a way to tell silo
to load a module?

2 - tftprescue.img fails horribly:=20

<paste>
2f9000 TILO
copy 31A000 1538F0 1726398
copy 260000 9A276 759418
Memory Address not Aligned
</paste>


any hints?

TIA
-------------------------------------------------------------------------- =
=20
|  Svante S=F6rmark  |  Chalmers IT -avdelning  | utvecklare | 0707 538336 =
|=20
-------------------------------------------------------------------------- =
=20
