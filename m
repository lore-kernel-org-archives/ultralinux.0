From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Sat, 04 May 2002 23:08:31 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-102055371920436@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 29 Apr 2002 13:14:31 -0700 (PDT)
"David S. Miller" <davem@redhat.com> wrote:

> 
> You need to subtract 2047 (the Sparc64 "stack bias") to the stack you
> pass to clone.

I've just got around to playing with this.

Should I be subtract 2047 bytes (unlikely) or 2047 * sizeof (void*) bytes?

The stack is defined as:

#define  STACK_SIZE (1<<15)

static void* stack [STACK_SIZE] ;

And I've tried pass the following pointers to clone ():

	&stack [STACK_SIZE]
	&stack [STACK_SIZE-2047]
	&stack [STACK_SIZE-2048]
	&stack [STACK_SIZE/2]
	((char*) (&stack [STACK_SIZE])) - 2047
	((char*) (&stack [STACK_SIZE])) - 2048

None of the above works without the CLONE_VM flag. The first four do work
with it.

Any further clues?

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
Everyone seems to assume that the current system in America is capitalism. 
I beg to differ. True capitalism does not involve false advertising, 
distribution cartels, or political lobbying for special advantages in the 
market. How can you call Microsoft or the RIAA capitalist, when their main 
business is interfering with a free market? Some of us would like to see a 
*return* to capitalism in this country. - Jim Flynn on Linuxtoday.com
