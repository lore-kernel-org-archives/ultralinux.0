From: Jeff Sturm <jsturm@one-point.com>
Date: Tue, 13 Nov 2001 06:00:42 +0000
Subject: Re: libstdc++ bus errors
Message-Id: <marc-linux-ultrasparc-100563124227573@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100562646118090@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100562646118090@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



On Mon, 12 Nov 2001, David S. Miller wrote:
>    
>    ./a.out: error while loading shared libraries: /home/jsturm/junk.so:
>    unexpected reloc type 0x17
> 
> Upgrade glibc, then binutils :-)  Current glibc understands
> the UA32 relocs properly.

Ah yes, I found the requisite patch... thanks.

http://sources.redhat.com/ml/libc-alpha/2001-07/msg00021.html

Jeff

