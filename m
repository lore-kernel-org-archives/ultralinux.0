From: Noah Beck <noah@noahsark.dyndns.org>
Date: Mon, 06 May 2002 14:25:14 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-102069516425243@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 5 May 2002, Erik de Castro Lopo wrote:

> On Mon, 29 Apr 2002 13:14:31 -0700 (PDT)
> "David S. Miller" <davem@redhat.com> wrote:
> 
> > 
> > You need to subtract 2047 (the Sparc64 "stack bias") to the stack you
> > pass to clone.
> 
> I've just got around to playing with this.
> 
> Should I be subtract 2047 bytes (unlikely) or 2047 * sizeof (void*) bytes?

The stack bias is in bytes, not words.

> The stack is defined as:
> 
> #define  STACK_SIZE (1<<15)
> 
> static void* stack [STACK_SIZE] ;
> 
> And I've tried pass the following pointers to clone ():
> 
> 	&stack [STACK_SIZE]
> 	&stack [STACK_SIZE-2047]
> 	&stack [STACK_SIZE-2048]
> 	&stack [STACK_SIZE/2]
> 	((char*) (&stack [STACK_SIZE])) - 2047
> 	((char*) (&stack [STACK_SIZE])) - 2048
> 
> None of the above works without the CLONE_VM flag. The first four do work
> with it.
> 
> Any further clues?

Does the minimum space for a stack frame (176 bytes) need to be subtracted
as well?  Also, is CANRESTORE=0 in the new thread?

Noah


