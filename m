From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Fri, 17 Jul 1998 13:42:26 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531059@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Fri, 17 Jul 1998 15:29:49 +0200
   From: Andi Kleen <ak@muc.de>

   On Fri, Jul 17, 1998 at 02:46:54PM +0200, David S. Miller wrote:
   > GCC doesn't get perfect scheduling in any event.  And it won't for
   > some time until real superscalar facilities are added.

   This is true for gcc, but Sun's compiler does near perfect scheduling for 
   the UltraSparc chips afaik, so they have a bit different requirements. 

Yes they do get perfect scheduling, and I have to say it is really
nicely done.

   Do you see a better design for 100% schedulable inline assembler?

Of course.  And it retails the beauty of GCCs interface and obtains
the benefit of sunpro's.

Simply keep things as they currently are, then add hooks to the back
end to add minimal parsing of the inline asm.  I say minimal, because
that is all that is necessary, you really only need to determine
the class of each insn (enough to compute the "type" attribute which
gcc uses for scheduling).  The rest is implicit in the constraints and
the register args used by each instruction.

In this way you don't lose any of the generics of the GCC interface.

And in such a scheme "asm volatile" can be extended to mean "don't
schedule me dammit, I coded it this way, don't move shit around".

I may even implement this, I'm in the middle of rewriting the entire
sparc backend for egcs anyways.

Later,
David S. Miller
davem@dm.cobaltmicro.com
