From: Clint Adams <schizo@debian.org>
Date: Wed, 24 Dec 2003 17:04:35 +0000
Subject: Re: [Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107228562828004@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107225664808375@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107225664808375@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

lspci output from a 200

0000:00:00.0 Host bridge: Sun Microsystems Computer Corp. Ultra IIe
0000:00:01.0 PCI bridge: Sun Microsystems Computer Corp. Simba Advanced PCI Bridge (rev 13)
0000:00:01.1 PCI bridge: Sun Microsystems Computer Corp. Simba Advanced PCI Bridge (rev 13)
0000:00:01.2 Non-VGA unclassified device: Unknown device 0042:0042
0000:01:03.0 Non-VGA unclassified device: ALi Corporation M7101 PMU
0000:01:05.1 Ethernet controller: Sun Microsystems Computer Corp. RIO GEM (rev 01)
0000:01:05.3 USB Controller: Sun Microsystems Computer Corp. RIO USB (rev 01)
0000:01:07.0 ISA bridge: ALi Corporation M1533 PCI to ISA Bridge [Aladdin IV]
0000:01:0c.0 Bridge: Sun Microsystems Computer Corp. RIO EBUS (rev 01)
0000:01:0c.1 Ethernet controller: Sun Microsystems Computer Corp. RIO GEM (rev 01)
0000:01:0c.3 USB Controller: Sun Microsystems Computer Corp. RIO USB (rev 01)
0000:01:0d.0 IDE interface: ALi Corporation M5229 IDE (rev c3)
0000:02:08.0 SCSI storage controller: LSI Logic / Symbios Logic 53c896 (rev 07)
0000:02:08.1 SCSI storage controller: LSI Logic / Symbios Logic 53c896 (rev 07)

I note plenty of references to the ALi M7101 in the kernel source.
