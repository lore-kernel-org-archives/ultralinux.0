From: "David S. Miller" <davem@redhat.com>
Date: Tue, 15 Aug 2000 06:59:02 +0000
Subject: Re: Ultra 5 with 1GB of memory
Message-Id: <marc-linux-ultrasparc-96632360931274@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96632223129402@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96632223129402@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Mon, 14 Aug 2000 11:57:09 -0400
   From: Daniel Bidwell <bidwell@andrews.edu>

   It will not boot with more then 512MB of memory (using the memQ2m
   boot option).  Anything over that gives a:

	   WARNING: not all physical memory mapped in IOMMU

   The prom-property for "virtual-dma" is c0000000 [20000000] for 512MB.

Right, Linux does not support more than 512MB of physical memory on
Ultra5/10 in the 2.2.x kernels.

   Does anyone know how to change this to 80000000 [40000000] for 1024MB?
   Solaris 8 knows how to do this as I have two other machines just like
   this running Solaris 8.

Solaris is not changing the virtual-dma property, instead it does what
Linux-2.4.x does, use dynamic dma mapping so that the amount of
supportable memory is independant of the size of the DMA region.

2.4.x kernels are your only bet if you wish to use all 1GB of memory.

Later,
David S. Miller
davem@redhat.com
