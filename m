From: "H. Peter Anvin" <hpa@transmeta.com>
Date: Mon, 16 Nov 1998 08:37:08 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91122943501911@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> > 
> > I looked at this patch, and it occurs to me, why to make it an
> > unsigned long ever?  For one thing this wait_queue_token seems to be
> > set by an int counter (autofs_next_wait_queue).
> 
> I guess probably just for alpha compatibility. So the best would be to use a
> u32 everywhere and have a special case for alpha - u64 - to keep it binary
> compatible.
> 
> Cheers,
>     Jakub

Actually, there is a simpler answer (I guess): Linus changed this one
while I was on vacation; it used to be u32.  :(

	-hpa
