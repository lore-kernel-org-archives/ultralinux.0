From: Clint Adams <schizo@debian.org>
Date: Wed, 24 Dec 2003 18:57:57 +0000
Subject: Re: environmental monitoring]
Message-Id: <marc-linux-ultrasparc-107229244700606@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107228794529859@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107228794529859@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> If you are motivated, compile the i2c-ali15x3.o module and probe the i2c bus
> to see if it is hooked-up to the max1617.  

Loading the module gives me this.

ali15x3 smbus 0000:01:03.0: ALI15X3_smb region uninitialized - upgrade BIOS or use force_addr=0xaddr
ali15x3 smbus 0000:01:03.0: ALI15X3 not detected, module not inserted.

Does this have anything to do with fixup_obp_assignments in
arch/sparc64/kernel/pci_common.c ?
