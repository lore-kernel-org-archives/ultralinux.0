From: "David S. Miller" <davem@redhat.com>
Date: Tue, 02 Dec 2003 09:47:12 +0000
Subject: Re: Sparc64 bugs in 2.4.23 kernel
Message-Id: <marc-linux-ultrasparc-107035850032704@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107033243212812@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107033243212812@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, 1 Dec 2003 18:33:39 -0800 (PST)
Dave Andruczyk <djandruczyk@yahoo.com> wrote:

> Kernel compile attempted on an ultrasparc 30 (gentoo-1.4rc4) 2.4.23
> vanilla sources.
> 
> drivers/sbus/char/vfc_dev.c fails to compile because of missing header
> file called "vfc_ioctls.h". This file exists in asm-sparc, but NOT in
> asm-sparc64.  Copying the header from asm-sparc to asm-sparc64 allowed
> it tom complile, but don't know if this is "the right way"...

The VFC driver has not seen any loving care for at least 6 years.
I would not try to build or use it unless you plan on doing the
work to begin making it compile and work yourself.

