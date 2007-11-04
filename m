From: "Richard Mortimer" <richm@oldelvet.org.uk>
Date: Sun, 04 Nov 2007 21:34:18 +0000
Subject: RE: [Bug 9106] Sun Fire v100 dmfe driver bug
Message-Id: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

I don't think that the seprom is set on SPARC systems so there
is not MAC address in there to read.
You need to read it from the appropriate OBP properties.

Search for local-mac-address and CONFIG_SPARC in tulip_core.c

Regards

Richard=20

> -----Original Message-----
> From: ultralinux-owner@vger.kernel.org=20
> [mailto:ultralinux-owner@vger.kernel.org] On Behalf Of Grant Grundler
> Sent: 04 November 2007 19:03
> To: ultralinux@vger.kernel.org
> Cc: grundler@parisc-linux.org; kovedi@gmail.com
> Subject: fwd: [Bug 9106] Sun Fire v100 dmfe driver bug
>=20
> http://bugzilla.kernel.org/show_bug.cgi?id=9106
>=20
> I have two possible reasons why dmfe driver is reading zeros=20
> from the seprom for the MAC address.
> 1) IO port space routing is fu-bar - ie we are only able to=20
> talk to the chip's config space.
> 2) outl() is implemented as a postable MMIO write (semantics=20
> demand outl be non-postable).
>=20
> Pursueing (2) for a bit, I looked at=20
> linux-2.6.22.9/include/asm-sparc64/io.h:
> ...
>  74 static __inline__ void _outl(u32 l, unsigned long addr)
>  75 {
>  76         __asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_outl */"
>  77                              : /* no outputs */
>  78                              : "Jr" (l), "r" (addr), "i"=20
> (ASI_PHYS_BYPASS_EC    _E_L));
>  79 }
> ...
>  86 #define outl(__l, __addr)       (_outl((u32)(__l),=20
> (unsigned long)(__addr)))
> ...
>=20
>=20
> Is "stwa" a posted write?
> I'm also open to ideas of what else might be wrong in dmfe.c driver.
>=20
>=20
> The initial symptom seems related to=20
> linux-2.6.22.9/drivers/net/tulip/dmfe.c:
> ...
> 1576 static u16 read_srom_word(long ioaddr, int offset)
> 1577 {
> 1578         int i;
> 1579         u16 srom_data =3D 0;
> 1580         long cr9_ioaddr =3D ioaddr + DCR9;
> 1581=20
> 1582         outl(CR9_SROM_READ, cr9_ioaddr);
> 1583         outl(CR9_SROM_READ | CR9_SRCS, cr9_ioaddr);
> 1584=20
> 1585         /* Send the Read Command 110b */
> 1586         SROM_CLK_WRITE(SROM_DATA_1, cr9_ioaddr);
> 1587         SROM_CLK_WRITE(SROM_DATA_1, cr9_ioaddr);
> 1588         SROM_CLK_WRITE(SROM_DATA_0, cr9_ioaddr);
> ...
>=20
> where SROM_CLK_WRITE is defined as:
> ...
>  175 #define SROM_CLK_WRITE(data, ioaddr) \
>  176         outl(data|CR9_SROM_READ|CR9_SRCS,ioaddr); \
>  177         udelay(5); \
>  178         outl(data|CR9_SROM_READ|CR9_SRCS|CR9_SRCLK,ioaddr); \
>  179         udelay(5); \
>  180         outl(data|CR9_SROM_READ|CR9_SRCS,ioaddr); \
>  181         udelay(5);
>=20
> obviously, if outl() is posted, the udelay() won't be respected
> and there are already two writes in flight when the CPU gets=20
> to line 1586.
>=20
>=20
> thanks,
> grant
>=20
> ----- Forwarded message from bugme-daemon@bugzilla.kernel.org -----
>=20
> X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on=20
> colo.lackof.org
> X-Spam-Level:=20
> X-Spam-Status: No, score=3D0.9 required=3D5.5=20
> tests=BAYES_40,FORGED_RCVD_HELO,
> 	NO_REAL_NAME autolearn=3Dno version=3D3.1.4
> Subject: [Bug 9106] Sun Fire v100 dmfe driver bug
> X-Bugzilla-Product: Drivers
> X-Bugzilla-Severity: high
> X-Bugzilla-Keywords:=20
> X-Bugzilla-Reason: CC AssignedTo
> X-Bugzilla-Component: Network
> To: grundler@parisc-linux.org
> From: bugme-daemon@bugzilla.kernel.org
> X-MIMEDefang-Filter: lf$Revision: 1.188 $
> X-Scanned-By: MIMEDefang 2.53 on 207.189.120.14
> X-Virus-Scanned: by amavisd-new-20030616-p10 (Debian) at lackof.org
>=20
> http://bugzilla.kernel.org/show_bug.cgi?id=9106
>=20
>=20
>=20
>=20
>=20
> ------- Comment #4 from kovedi@gmail.com  2007-10-08 00:29 -------
> I try to use the udelay(5) after line 1583 and 1596 but the error
> coming again after reboot.
>=20
> the devices not have mac adresses
>=20
> [   69.450854] eth0: Davicom DM9102 at pci0000:00:0c.0,
> 00:00:00:00:00:00, irq 9.
> [   69.477577] eth1: Davicom DM9102 at pci0000:00:05.0,
> 00:00:00:00:00:00, irq 10.
>=20
> and always resetting the network devices.
>=20
> [   84.923730] eth0: Tx timeout - resetting
> [   86.923705] eth0: Tx timeout - resetting
> [   88.923650] eth0: Tx timeout - resetting
> [   90.923636] eth0: Tx timeout - resetting
> [   92.923587] eth0: Tx timeout - resetting
>=20
>=20
> --=20
> Configure bugmail: http://bugzilla.kernel.org/userprefs.cgi?tab=3Demail
> ------- You are receiving this mail because: -------
> You are on the CC list for the bug, or are watching someone who is.
> You are the assignee for the bug, or are watching the assignee.
>=20
> ----- End forwarded message -----
> -
> To unsubscribe from this list: send the line "unsubscribe=20
> ultralinux" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>=20

