From: Pete Zaitcev <zaitcev@metabyte.com>
Date: Fri, 19 May 2000 15:23:21 +0000
Subject: Re: "sparc_cpu_model" undefined
Message-Id: <marc-linux-ultrasparc-95875041609522@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95874021030030@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95874021030030@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Date: 	Fri, 19 May 2000 05:34:37 -0700 (PDT)
> From: Murray Stokely <murray@cdrom.com>

>   I can't compile any code that includes asm/io.h with Red Hat 6.1, or
> 6.2 on my Ultra5.  This includes many useful programs such as 'sane',
> the scanner drivers. [...]

Complain to application maintainers. It is their fault to include
what they are not supposed to include.

Imagine for a second that we make an <asm/io.h> on sparc that
gets included in your program without errors. What makes you think
that inb/outb there may be useful to you, even after ioperm() ?
They easily may happen to be defined as stba/lduba instructions,
or may require port address to be offset.

Programs that resort to direct I/O must carry machine and system
dependent parts with them, including definitions of inb/outb.
If they do not, we cannot help it.

--Pete
