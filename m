From: "H. Peter Anvin" <hpa@transmeta.com>
Date: Mon, 16 Nov 1998 06:47:44 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91122307331803@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > Problem is that autofs passes an "unsigned long" in the ioctl()
> > *argument*, not in a structure; 
> 
> That's no problem. In fact, 32bit syscall entry code zero extends already in
> assembly, so handling this is really a nop.

Except when the value isn't zero in the high dword... then you have no
way to pass the value down.

> > also it passes data to the daemon via
> > a packetized protocol on a pipe.
> 
> That's the only problem I'd have with autofs and that's why it was not
> working. I was thinking about overriding the f_ops of the pipe file
> descriptor, so that it points to a special write method which would do the
> conversion of the structure before sending it over the pipe, but your
> autofs_wqt_t patch is of course much better, as it does not need additional 
> code and complexity. Thanks.

Does it work?  If so, then I can send it to Linus.

	-hpa
