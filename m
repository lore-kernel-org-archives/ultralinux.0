From: Daniel Bidwell <bidwell@andrews.edu>
Date: Mon, 14 Aug 2000 15:57:09 +0000
Subject: Ultra 5 with 1GB of memory
Message-Id: <marc-linux-ultrasparc-96632223129402@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have an Ultra 5 with 1GB of memory. (I know, you aren't supposed to
have 1GB of memory in an Ultra 5, but it works great if you pull the
floppy drive, at least under Solaris).

It will not boot with more then 512MB of memory (using the memQ2m
boot option).  Anything over that gives a:

	WARNING: not all physical memory mapped in IOMMU

The prom-property for "virtual-dma" is c0000000 [20000000] for 512MB.

Does anyone know how to change this to 80000000 [40000000] for 1024MB?
Solaris 8 knows how to do this as I have two other machines just like
this running Solaris 8.

Any help will be greatly appreciated.  Thanks in advance.
-- 
Daniel R. Bidwell	|	bidwell@andrews.edu
Andrews University	Information Technology Services
If two always agree, one of them is unnecessary
"Friends don't let friends do DOS"
"In theory, theory and practice are the same.
In practice, however, they are not."
No tema al pinguino.
