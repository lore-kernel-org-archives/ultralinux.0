From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Mon, 06 May 2002 21:36:09 +0000
Subject: Re: SMP Sparc64 : bug in clone?
Message-Id: <marc-linux-ultrasparc-102072097620070@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101684978515837@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101684978515837@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 6 May 2002 10:25:14 -0400 (EDT)
Noah Beck <noah@noahsark.dyndns.org> wrote:

> On Sun, 5 May 2002, Erik de Castro Lopo wrote:
> 
> > Should I be subtract 2047 bytes (unlikely) or 2047 * sizeof (void*) bytes?
> 
> The stack bias is in bytes, not words.

OK, I tried this:

    #define  STACK_SIZE (1<<15)

    static void* stack [STACK_SIZE] ;

    stack = stack [STACK_SIZE/2] ;
    stack = ((char*) stack) - 2047 ;

and still no go (although it did work with the CLONE_VM flag).

> Does the minimum space for a stack frame (176 bytes) need to be subtracted
> as well?  

Since I'm starting in the middle of a large array, fiddle factors like this
shouldn't be an issue.

> Also, is CANRESTORE=0 in the new thread?

Now thats a possibility. Isn't this supposed to be set up somewhere inside 
the clone() system call?

Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
"Don't be fooled by NT/Exchange propaganda. M$ Exchange is 
just plain broken and NT cannot handle the sustained load 
of a high-volume remote mail server"  
-- Eric S. Raymond in the Fetchmail FAQ
