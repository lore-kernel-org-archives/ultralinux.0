From: Derrick J Brashear <shadow@dementia.org>
Date: Thu, 12 Nov 1998 21:26:42 +0000
Subject: Re: More detailed UltraPenguin CD-ROM making instructions
Message-Id: <marc-linux-ultrasparc-91092334931408@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91084546630118@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91084546630118@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 12 Nov 1998, Sylvain Pion wrote:

> On Wed, Nov 11, 1998 at 11:28:11PM +0100, Jakub Jelinek wrote:
> > As I've received a couple of requests for more detailed instructions how to
> > make the bootable CD, here they are:
> > 
> > Grab the UltraPenguin 1.1 distribution, e.g. from
> > ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/
> > and put it on an sparclinux or ultralinux box (glibc required).
> 
> So to install UltraLinux, you need UltraLinux...

Uh, to make a bootable CD you need ultralinux or sparclinux. To install
ultralinux you only need a machine you can run ftpd or nfs on to export
the rpms, and a machine you can tftp boot from. (if it's solaris, use
rarpd/ethers, if a pc linux system, use arp and rarp to set up. i'm sure
there are instructions around somewhere)

> Looks like a chicken and egg problem for me.
> Is there a way to make the CD image on Solaris or on a PC-Linux ?
> (or get it via ftp directly)

you can do that. read what he said again. 

-D
