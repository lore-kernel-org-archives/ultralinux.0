From: Joshua Uziel <uzi@uzix.org>
Date: Sat, 30 Mar 2002 21:32:13 +0000
Subject: Re: PC-in-a-slot supported?
Message-Id: <marc-linux-ultrasparc-101752397805450@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101752010702665@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101752010702665@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

* Sandy Harris <pashley@storm.ca> [020330 12:28]:
> A friend has an Ultra 60 running Solaris with one of
> Sun's PC-in-a-slot boards. 400 MHz AMD CPU, 256 megs,
> on a PCI card. The thing is happily running Windows 98, 
> with the Ultra providing file system and display via 
> an X window. Handy for gaming, if not much else.
> 
> Does Ultralinux support these boards, perhaps via the 
> Solaris emulation stuff?

They're known as the "SunPCi" cards.  They are not supported by
sparc/linux and won't work under the Solaris emulation since (among
other things) the Solaris emulation won't handle the kernel side of
support for them.
