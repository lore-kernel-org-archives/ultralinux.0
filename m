From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Fri, 17 Jul 1998 03:58:23 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531052@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Andi Kleen <ak@muc.de>
   Date: 17 Jul 1998 01:37:07 +0200

   "David S. Miller" <davem@dm.cobaltmicro.com> writes:

   > (side comment: this *.il inline assembler interface of sunpro is one
   > of the things I totally think they got wrong and which gcc has a much
   > superier interface, look at the syntax, it's just gross)

   The big advantage of the Sun solution is that their templates are schedulable,
   while this is just impossible with the gcc inline assembly.

Not true at all, it depends upon how a port was done.  The Sparc
backend creates a situation where all use inline asm's are considered
multi-instruction.  GCC does not require this.  And if this were
changed, inline assembly could be scheduled just like anything else.

(Sun's scheme also seems dangerous, is there a way for me to tell it
 _not_ to schedule what I wrote?)

Later,
David S. Miller
davem@dm.cobaltmicro.com
