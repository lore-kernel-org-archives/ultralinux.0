From: Grant Grundler <grundler@parisc-linux.org>
Date: Sun, 06 Jan 2008 08:35:32 +0000
Subject: Re: [Bug 9106] Sun Fire v100 dmfe driver bug
Message-Id: <20080106083532.GA30102@colo.lackof.org>
List-Id: <ultralinux.vger.kernel.org>
References: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
In-Reply-To: <001301c81f2a$74ae0bf0$6b01a8c0@Jive>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

On Sun, Nov 04, 2007 at 01:49:58PM -0800, David Miller wrote:
...
> The SROM reads aren't failing, think out of the box, the more likely
> problem is:
>=20
> 3) Sun doesn't initialize the SROM for the onboard network devices.
>    You have to obtain the MAC address and other settings by fetching
>    them from the openfirmware device properties.

Dave,
Thanks! This was the case with the dmfe driver on SPARC.
I've attached a patch as comment #6 on:
	http://bugzilla.kernel.org/show_bug.cgi?id=9106

User confirmed dmfe driver (with patch) finds the MAC addresses.
I'll ask Kyle McMartin to push this.

Unfortunately, the device still doesn't work.
Any SPARC volunteers interested in working on this bug?

I don't have the HW or interest to work on this further.
It's possible recent changes to dmfe might have also fixed some
of the issues (IIRC, phy reset patch was pushed in Decemeber).
I'd be happy to advise/review changes for anyone who works on it.

thanks,
grant

>=20
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
