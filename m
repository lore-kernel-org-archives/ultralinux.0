From: Rich Sahlender <rsahlen@voicenet.com>
Date: Sat, 14 Nov 1998 15:45:30 +0000
Subject: Re: 2.1.126 still no sparc64 autofsu
Message-Id: <marc-linux-ultrasparc-91107867319330@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91107863319189@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91107863319189@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

H. Peter Anvin wrote:
> 
> Why is the "long" a different size in kernel and user space?  That
> seems buggy.  It's an easy thing to fix, but it seems like the Wrong
> Thing[TM].

I tend to agree it's buggy. I would expect the long to generate a 32
bit int even in the 64 bit kernel space unless you specifically ask
for a 64 bit long .ie. suns 'long long'. This would keep things
downward/backward compatible.

> 
> Changing that to "int" would be just fine, *except* it would break the
> protocol for all other platforms.
> 

I was going to provide a patch to do something like this, but unless I
misunderstood Alan I think he said there are ioctl's which can be used
to convert the 64 bit structs while passing to 32 bit user space. I'm
getting lost finding them though...

Anyway, I guess this is only a problem while were're still limited to
32 bit user space with 64 bit kernels.
