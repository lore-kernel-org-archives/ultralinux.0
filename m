From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 16 Nov 1998 07:57:08 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91123103602888@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
>    From: "H. Peter Anvin" <hpa@transmeta.com>
>    Date: Sun, 15 Nov 1998 15:49:21 -0800 (PST)
> 
>    Problem is that autofs passes an "unsigned long" in the ioctl()
>    *argument*, not in a structure; also it passes data to the daemon via
>    a packetized protocol on a pipe.
> 
> Ok, we have a similar issue for rtnetlink on sparc64 running 32-bit
> binaries.  That piece is so complex that I've decided to tell people
> for now to wait until we have a 64-bit userland if they want to run
> programs like gated :-)
> 
> I looked at this patch, and it occurs to me, why to make it an
> unsigned long ever?  For one thing this wait_queue_token seems to be
> set by an int counter (autofs_next_wait_queue).

I guess probably just for alpha compatibility. So the best would be to use a
u32 everywhere and have a special case for alpha - u64 - to keep it binary
compatible.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
