From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 15 Nov 1998 00:52:51 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91110185427057@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: "H. Peter Anvin" <hpa@transmeta.com>
   Date: 	Sat, 14 Nov 1998 00:17:49 -0800 (PST)

   Why is the "long" a different size in kernel and user space?  That
   seems buggy.  It's an easy thing to fix, but it seems like the
   Wrong Thing[TM].

   Changing that to "int" would be just fine, *except* it would break
   the protocol for all other platforms.

All of our userlands currently on sparc64 are 32-bit because we have
not bootstrapped a 64-bit userland fully enough yet.

We have a full (sic) 32-64 bit translation layer for all user visible
interfaces of the kernel already in files named
arch/sparc64/kernel/*32*.c which are supposed to take care of all
these issues.  Every once in a while an ioctl() or two slip by without
our noticing and we have to take care of it when the user finally hits
it.  :-)

Later,
David S. Miller
davem@dm.cobaltmicro.com
