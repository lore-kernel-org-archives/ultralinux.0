From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 23 Sep 1998 14:56:38 +0000
Subject: Re: Ultralinux mailinglist dead ?
Message-Id: <marc-linux-ultrasparc-90659882231063@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90650709127366@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90650709127366@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> is there something wrong here? 
> i submitted some real bugs here about the kernel on my sun ultra 10

We were fixing some TLB related bugs which I think is the case of the
segfault you encountered during last few days, there is probably one more to
be fixed. So you just pointed to a known bug were hunting.
Once we fix it, you're encouraged to try it (in fact, I'm delaying making
rpms and boot images because of that corruption) and if you'll still see
some bugs, your bug report will be welcomed.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.121 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
