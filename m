From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Fri, 17 Jul 1998 12:46:54 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531056@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Fri, 17 Jul 1998 14:44:39 +0200
   From: Andi Kleen <ak@muc.de>

   But how does it know what CPU units are used by the inline
   assembly? It does not make much sense to schedule without knowing
   that.

GCC doesn't get perfect scheduling in any event.  And it won't for
some time until real superscalar facilities are added.

What the current gcc scheduler does do very well is seperate memory
references from their first usage, and inter-insn register dependancy
seperation.  With my proposed scheme, you'll get that for inline asm.

It will also fill delay slots in reorg with these asms, which a lot of
the time on Sparc is extremely important.

Later,
David S. Miller
davem@dm.cobaltmicro.com
