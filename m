From: Grant Grundler <grundler@parisc-linux.org>
Date: Tue, 06 Nov 2007 06:53:22 +0000
Subject: Re: [Bug 9106] Sun Fire v100 dmfe driver bug
Message-Id: <20071106065322.GA25501@colo.lackof.org>
List-Id: <ultralinux.vger.kernel.org>
References: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
In-Reply-To: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

On Sun, Nov 04, 2007 at 01:49:58PM -0800, David Miller wrote:
> From: Grant Grundler <grundler@parisc-linux.org>
> Date: Sun, 4 Nov 2007 12:02:30 -0700
>=20
> > http://bugzilla.kernel.org/show_bug.cgi?id=9106
> >=20
> > I have two possible reasons why dmfe driver is reading zeros from the s=
eprom for the MAC address.
> > 1) IO port space routing is fu-bar - ie we are only able to talk to the=
 chip's config space.
> > 2) outl() is implemented as a postable MMIO write (semantics demand out=
l be non-postable).
>=20
> The SROM reads aren't failing, think out of the box, the more likely
> problem is:
>
> 3) Sun doesn't initialize the SROM for the onboard network devices.
>    You have to obtain the MAC address and other settings by fetching
>    them from the openfirmware device properties.

Dave,
Indeed - I wasn't thinking "outside the box". I didn't realize
firmware set up resources needed for bit-banging. I thought
the seprom was accessed via I/O Port space registers.


>    So use something like:
>=20
> #ifdef CONFIG_OF
> 	struct device_node *dp =3D pci_device_to_OF_node(pdev);
> 	const char *addr;
>=20
> 	addr =3D of_get_property(dp, "local-mac-address", NULL);
> 	if (addr) {
> 		memcpy(dev->dev_addr, addr, ETH_ALEN);
> 		return 1;
> 	}
> 	return 0;
> #endif

Ok - will hack something up and ask the user to try that.
I'll also look for CONFIG_OF/CONFIG_SPARC in tulip_core.c as
suggested by Richard Mortimer.

Thanks!
grant
