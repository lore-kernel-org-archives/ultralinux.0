From: David Miller <davem@davemloft.net>
Date: Sun, 04 Nov 2007 21:49:58 +0000
Subject: Re: [Bug 9106] Sun Fire v100 dmfe driver bug
Message-Id: <20071104.134958.99519724.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
In-Reply-To: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

From: Grant Grundler <grundler@parisc-linux.org>
Date: Sun, 4 Nov 2007 12:02:30 -0700

> http://bugzilla.kernel.org/show_bug.cgi?id=9106
>=20
> I have two possible reasons why dmfe driver is reading zeros from the sep=
rom for the MAC address.
> 1) IO port space routing is fu-bar - ie we are only able to talk to the c=
hip's config space.
> 2) outl() is implemented as a postable MMIO write (semantics demand outl =
be non-postable).

The SROM reads aren't failing, think out of the box, the more likely
problem is:

3) Sun doesn't initialize the SROM for the onboard network devices.
   You have to obtain the MAC address and other settings by fetching
   them from the openfirmware device properties.

   So use something like:

#ifdef CONFIG_OF
	struct device_node *dp =3D pci_device_to_OF_node(pdev);
	const char *addr;

	addr =3D of_get_property(dp, "local-mac-address", NULL);
	if (addr) {
		memcpy(dev->dev_addr, addr, ETH_ALEN);
		return 1;
	}
	return 0;
#endif
