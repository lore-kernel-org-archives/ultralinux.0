From: "Eddie C. Dost" <ecd@skynet.be>
Date: Wed, 13 May 1998 21:02:41 +0000
Subject: Re: Booting An Ultra Sparc 10 (fwd)
Message-Id: <marc-linux-ultrasparc-90222356531024@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531012@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531012@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Which PCI SCSI cards are supported in the UltraPenguin?  In case you did not
> know, the internal SCSI in the Ultra30 and 60, 450 and Enterprise systems (all
> but U5 & U10) uses the Symbios SCSI chip.  This chip is also used in the addon
> Sun SCSI PCI cards, as well as the IntraServer Technologies SCSI cards, which
> are cheaper (both work with the Solaris SCSI drivers).  

All these are then supported. I was wondering about the hme + scsi card,
PROM says it has hme, ebus, and isptwo on it. I was wondering what isptwo
could be...

> The Adaptec 2940/OF and its kin are also supported (the OF means it has
> OpenFirmware/F-code in its PROM).  The non-OF cards do not work with the Sun
> OBP. At least you cannot boot from them.

This one is known to work as well.


Eddie.
ecd@skynet.be
