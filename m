From: Murray Stokely <murray@cdrom.com>
Date: Sat, 20 May 2000 01:44:38 +0000
Subject: Re: "sparc_cpu_model" undefined
Message-Id: <marc-linux-ultrasparc-95878815411823@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95874021030030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95874021030030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 19 May 2000, Pete Zaitcev wrote:
% Imagine for a second that we make an <asm/io.h> on sparc that
% gets included in your program without errors. What makes you think
% that inb/outb there may be useful to you, even after ioperm() ?
% They easily may happen to be defined as stba/lduba instructions,
% or may require port address to be offset.

  Ok, so how do I get around these problems to write a few bytes
directly to an IO port.  As an example, I would like to write a few
bytes to the parallel port to control a LED or program a
microcontroller.  With Linux/x86 I just call ioperm() and then outb().
How do I do this under Linux/sparc?

% Programs that resort to direct I/O must carry machine and system
% dependent parts with them, including definitions of inb/outb.
% If they do not, we cannot help it.

  You feel this is always the case?  That inb/outb should not be a
function of the OS libraries/headers?

	 Murray
