From: Jakub Jelinek <jakub@redhat.com>
Date: Mon, 29 Nov 1999 22:34:31 +0000
Subject: Re: Problem with UltraPenguin 1.2 ?
Message-Id: <marc-linux-ultrasparc-94391589410854@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94367026724482@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94367026724482@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Mon, Nov 29, 1999 at 10:05:41PM +0100, Bosko Radivojevic wrote:
> 
> On Sat, 27 Nov 1999, Jakub Jelinek wrote:
> 
> > Don't use UltraPenguin, it has been superceeded by Red Hat 6.0 /SPARC and
> > Red Hat 6.1 /SPARC which has been released lately.
> > Most of the features (with the exception of tape install I guess noone
> > besides myself used) were rolled into RH6.0/RH6.1, plus there are numerous
> > newer bugfixes and new features.
> 
> I've tried first with RH 6.0 for SPARC, but with that I couldn't even boot
> up my SPARC.

If you download 6.1, then this should be a non-issue.

> 
> Something is wrong in script that installs silo, or I missed something
> with partitioning my disk. I tried to install silo by myself... :
> (pressed ctrl-z in install script to switchto shell)
> 
> # /mnt/sbin/silo -r /mnt
> Fatal error: Cannot open superblock on /dev/sda1

Do:

/mnt/usr/sbin/chroot /mnt
/sbin/silo

instead, because it tries to access /dev/sda1 outside of /mnt which probably
does not exist.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jakub@redhat.com | http://sunsite.mff.cuni.cz/~jj
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
