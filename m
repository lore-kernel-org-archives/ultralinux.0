From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 16 Nov 1998 06:48:58 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91123103802894@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Problem is that autofs passes an "unsigned long" in the ioctl()
> *argument*, not in a structure; 

That's no problem. In fact, 32bit syscall entry code zero extends already in
assembly, so handling this is really a nop.

> also it passes data to the daemon via
> a packetized protocol on a pipe.

That's the only problem I'd have with autofs and that's why it was not
working. I was thinking about overriding the f_ops of the pipe file
descriptor, so that it points to a special write method which would do the
conversion of the structure before sending it over the pipe, but your
autofs_wqt_t patch is of course much better, as it does not need additional 
code and complexity. Thanks.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
