From: "David.Andrew" <David.Andrew@East.Sun.COM>
Date: Tue, 07 Jul 1998 03:04:02 +0000
Subject: Re: UltraPenguin109 + Ultra5 = Bad
Message-Id: <marc-linux-ultrasparc-90222358531002@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531001@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531001@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Hi Ken,

The latest open boot prom version is 3.11.9.  Send me a note if you would l=
ike
to update your OBP to the latest version.  I'll let the Linux technical guys
address the rest of the message.

David Andrew  =20
---------------
> Hi,
>=20
> I'm trying to get Ultra Penguin 1.0.9 to work on a Ultra 5.  The prom says
> it's a UltraSPARC-IIi 270MHz.  OpenBoot version 3.11.6.  (What other info=
 do
> you guys need?)
>=20
> I have rarp and tftp setup up and it's booting the latest image from
> ultra.linux.cz.  Here's what it prints out:
>=20
> PROMLIB: Sun IEEE Boot Prom 3.11.6 1997/12/08 10:42
> Linux version 2.1.99 (root@manka) (gcc driver version 2.7.2 snapshot 9706=
21
> executing gcc version 2.7.2) #1 Sat may 2 18:35:38 1998 ARCH: SUN4U
> Ethernet address: 08:00:20:90:c4:ea
> Found CPU 0 <node=F006ca38,mid=3D0>
> Found 1 CPU prom device tree node(s).
> CENTRAL: no central found.
> Memory 60224k available (1574k kernel code, 1624k data, 152k init)
> [fffff80000000000,fffff80013f26000] SBUS: No SBUS's found.
> Console: Colour SUNPCI 128x64, 16 point font, 864 scans
> PCI: Probing for controllers.
> PCI: Found SABRE, main regs at fffff9fe00000000
> SABRE: PCI config space at fffff9fe01000000
> SABRE: DVMA at c0000000 [20000000]
> PCI: Probing PCI hardware.
> ebus0: fffff9ff00000000[1000000] fffff9ff00000000[800000]
> ebus1: fffff9fff0000000[1000000] fffff9fff1000000[800000]
> mach64_init: IOBASE[fffff9fe02c00100] MEMBASE[fffff9ffe1000000]
> mach64_init: chip_type[4754], total_vram[00200000]
>=20
> And it just stops there.
>=20
> Anybody have a hunch as to what's wrong?
>=20
> Thanks,
>=20
> Ken Preslan
> kpreslan@lcse.umn.edu
>=20
>=20
