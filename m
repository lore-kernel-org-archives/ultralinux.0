From: Bosko Radivojevic <bole@falcon.etf.bg.ac.yu>
Date: Mon, 29 Nov 1999 21:05:41 +0000
Subject: Re: Problem with UltraPenguin 1.2 ?
Message-Id: <marc-linux-ultrasparc-94391152407183@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94367026724482@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94367026724482@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Sat, 27 Nov 1999, Jakub Jelinek wrote:

> Don't use UltraPenguin, it has been superceeded by Red Hat 6.0 /SPARC and
> Red Hat 6.1 /SPARC which has been released lately.
> Most of the features (with the exception of tape install I guess noone
> besides myself used) were rolled into RH6.0/RH6.1, plus there are numerous
> newer bugfixes and new features.

I've tried first with RH 6.0 for SPARC, but with that I couldn't even boot
up my SPARC.

Something is wrong in script that installs silo, or I missed something
with partitioning my disk. I tried to install silo by myself... :
(pressed ctrl-z in install script to switchto shell)

# /mnt/sbin/silo -r /mnt
Fatal error: Cannot open superblock on /dev/sda1
# cat /mnt/etc/silo.conf
timeoutP
partition=1
root=/dev/sda1
image=/boot/vmlinux-2.2.2.gz
        label=linux
        initrd=/boot/initrd-2.2.2.img
        read-only

From my point of view, everything looks pretty fine.. but, somethin isn't
OK.. :)

So, I need help... Please :)
