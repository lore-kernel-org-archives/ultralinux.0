From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Sun, 10 May 1998 04:10:11 +0000
Subject: Re: compiling libc5 on UP1.0
Message-Id: <marc-linux-ultrasparc-90222356530999@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530996@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530996@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Eiki Ito <eiki@hal.com>
   Date: 	Sat, 9 May 1998 20:57:06 -0700 (PDT)

   SPARC64-III's memory management is quite different from SPARC64-I
   and II, much closer to Ultrasparc.  TLB format is (I think) the
   only major difference.  No advertise, but if you are interested
   please refer to Microprocessor Report 12/08/97.

Oh great, finally they are using a software replace TLB miss design in
Hal's sparc64.  You'll benefit greatly from the work I am doing
tonight using virtual page tables, TLB misses cost 8 instructions and
only one memory reference now.

Later,
David S. Miller
davem@dm.cobaltmicro.com
