From: Jakub Jelinek <jakub@redhat.com>
Date: Mon, 07 Feb 2000 21:35:24 +0000
Subject: Re: Sun Ultra80
Message-Id: <marc-linux-ultrasparc-94995983511321@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94994968400721@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94994968400721@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, Feb 07, 2000 at 10:49:16AM -0800, Ric Tappero wrote:
> Installed RedHat 6.1 on Sun Ultra80 with 4 processor and 2GB RAM with Elite3d
> graphics card. When using Gnome/Enlightenment redraw is about
> 1/8 the speed of a Pentium II 300Mhz. For debugging purposes, in
> installed same on Sun Ultra 10 with single 333 Mhz and Creator 3d card 
> and it runs fine.
> 
> I am suspecting an issue with the Elite3d, any pointers or ideas welcome.

Yes, it is an issue with Elite3d. It can be mostly fixed by downloading
firmware to the card, but we have still no permission to package that
firmware in Linux.
If you have Solaris Elite3d packages, then you can check out afs module from
vger CVS (which is the firmware loader) and extract firmware from Solaris.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jakub@redhat.com | http://sunsite.mff.cuni.cz/~jj
Linux version 2.3.42 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
