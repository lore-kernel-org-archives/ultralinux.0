From: Randy McCaskill <rmccask@comm-data.com>
Date: Fri, 12 Jun 1998 03:57:26 +0000
Subject: Re: Ultralinux tftp boot on an SS2?
Message-Id: <marc-linux-ultrasparc-90222357631008@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631003@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631003@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Here is the tftpboot file I used with a sparc 2.  Try it and see if it
works for you.

http://www.comm-data.com/~rmccask/ultrapenguin-1.0.9-tftpboot.img

I think that the install script is built into the tftpboot file as a
ramdisk so the one from RH4.2 will probably choke.  It is possible that
the one I have above might not be completely thrilled with any changes
that have been made since I grabbed it, but I suspect that it will work.

-Randy

On Thu, 11 Jun 1998, Lars Kellogg-Stedman wrote:

> The problem looks like it's part of the tftpboot process...I'm booting
> off a Mac running LinuxPPC (tried it with kernel 2.1.103 and 2.1.24);
> according to a tcpdump of the install process the tftp fetch hanging
> close to the end with the client (the machine I'm trying to install on)
> repeatedly ACKing the server.
> 
> I *can* get the standard RH4.2/sparc install to boot.  Is there any
> chance I can use the older installer with the Ultralinux distribution?
> 
> Thanks,
> 
>   -- Lars
> 
> --
> Lars Kellogg-Stedman * lars@bu.edu * (617)353-8277
> Office of Information Technology, Boston University

------
Randy McCaskill
rmccask@comm-data.com              ! Poodle... The other white meat.
http://www.comm-data.com/~rmccask/ !   -- Sherman's Lagoon
