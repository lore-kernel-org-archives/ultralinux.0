From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Tue, 12 May 1998 23:10:19 +0000
Subject: Re: Booting An Ultra Sparc 10
Message-Id: <marc-linux-ultrasparc-90222356531016@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531012@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531012@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

yep :)

took it out and it installed ok

will the scsi be supported ?

that would be nice :)


On Wed, 13 May 1998, Eddie C. Dost wrote:

> > i tells me :
> > 
> > Found cpu 0
> > found 1 cpu  prom device tree node(s).
> > Central: no central found.
> > Memory: 319560k available (1576k kernel code, 4432k data, 152 init)
> > [fffff80000000000,fffff80013f26000]
> > SBUS: No SBUS's found.
> > Console: colour SUNPCI 128x54, 16 point font, 864 scans
> > PCI: Probing for controllers
> > PCI: Found SABRE, main regs at ffff(5f)9fe00000000
> > SABRE: PCI cofnfig space at fffff9fe01000000
> > SABREL DVMA at c0000000 [2 [20000000]
> > 
> > PCI: Probing PCI hardware 
> > ebus0: fff.........
> > ebus1: fff...........
> 
> Known problem, should be fixed tomorrow by new kernel images in
> ultrapenguin-1.0.9. I bet you have the hme+scsi card installed...
> 
> 
> Eddie.
> ecd@skynet.be
> 
