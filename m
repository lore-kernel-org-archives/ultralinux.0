From: "David S. Miller" <davem@redhat.com>
Date: Sat, 18 Sep 1999 01:38:40 +0000
Subject: Re: Install options on AXi
Message-Id: <marc-linux-ultrasparc-93762033615533@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93760525605213@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93760525605213@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Fri, 17 Sep 1999 17:21:09 -0400
   From: "David A. Cooley" <n5xmt@bellsouth.net>

   I believe the AXi is an UltraSparc based board... None of the Linux
   ports to sparc support the Floppy for boot, and the lp port is only
   supported experimentally.

This is not true at all.  The situation in a nutshell is:

1) All 32-bit Sparc systems should work with a floppy boot.

2) Most UltraSparc systems do not, these include all SBUS UltraSparc
   systems and Ultra10, Ultra5, Ultra30, Ultra60 PCI systems.  This
   is due to a bug in the OBP firmware shipped in those machines, and
   is not our doing :-)

   All system level board UltraSparc/PCI systems shipped by SME
   such as the AXi and AXmp should work with floppy boot because they
   lack the OBP firmware bug, as far as we've been told.

3) parallel port is fully supported on PCI systems, it is only
   experimental and not fully supported on SBUS systems, we are
   working to correct this SBUS issue for 2.4.x kernels

   Most people having problems with the parallel port on PCI
   UltraSparcs turn out to not have loaded the appropriate kernel
   modules.

Later,
David S. Miller
davem@redhat.com
