From: Jakub Jelinek <jakub@redhat.com>
Date: Sat, 20 May 2000 06:05:01 +0000
Subject: Re: "sparc_cpu_model" undefined
Message-Id: <marc-linux-ultrasparc-95880266820011@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95874021030030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95874021030030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, May 19, 2000 at 06:44:38PM -0700, Murray Stokely wrote:
> On Fri, 19 May 2000, Pete Zaitcev wrote:
> % Imagine for a second that we make an <asm/io.h> on sparc that
> % gets included in your program without errors. What makes you think
> % that inb/outb there may be useful to you, even after ioperm() ?
> % They easily may happen to be defined as stba/lduba instructions,
> % or may require port address to be offset.
> 
>   Ok, so how do I get around these problems to write a few bytes
> directly to an IO port.  As an example, I would like to write a few
> bytes to the parallel port to control a LED or program a
> microcontroller.  With Linux/x86 I just call ioperm() and then outb().
> How do I do this under Linux/sparc?

There are __NO I/O PORTS__ on SPARC. Everything is I/O mapped.

> 
> % Programs that resort to direct I/O must carry machine and system
> % dependent parts with them, including definitions of inb/outb.
> % If they do not, we cannot help it.
> 
>   You feel this is always the case?  That inb/outb should not be a
> function of the OS libraries/headers?

Yes, that's always the case. You really have to know exactly what kind of
hardware are you accessing and how do you drive it.

	Jakub
