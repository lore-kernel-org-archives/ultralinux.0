From: David Miller <davem@twiddle.net>
Date: Fri, 02 Apr 1999 15:45:59 +0000
Subject: Re: Question about sys32_ioctl()
Message-Id: <marc-linux-ultrasparc-92306842128997@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92306770528448@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92306770528448@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 2 Apr 1999 17:35:54 +0200
   From: Thierry Lafage <lafage@irisa.fr>

   The sys32_ioctl() code contains things I really do not understand,
   but since I applied the modification I propose below, I would like
   to know if it is a bad thing for the kernel stability and/or
   mechanisms.

I might put this in, but I really don't think I will because the core
problem is that this will let through ioctl's which need 32bit-->64bit
translation on their arguments and we'll have a hard time finding them
with the change in there which you propose.

Your driver may be OK, but other people's will surely not.

So just get your driver merged into the kernel, and then I'll know
about your ioctl's and can add them explicitly to the sys32_ioctl()
switch statement and this whole problem is solved.

Later,
David S. Miller
davem@redhat.com
