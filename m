From: Eric Jorgensen <alhaz@xmission.com>
Date: Sun, 22 Nov 1998 05:50:16 +0000
Subject: Re: ISO CDROM
Message-Id: <marc-linux-ultrasparc-91173550109822@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91171325804770@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91171325804770@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Richard Nicholas Miller wrote:
> 
> I have gotten the cdrom image down off of sunsite but I am having trouble
> getting the image onto a cd.  I have to use a 95 box that is running Adaptec
> slEasy CD creator. Where can I find TFM that I might R to get some information
> on parsing this image?

	sleazycd will probably try and make you a Joliet CD. I'm pretty sure
that's not going to work. Infact, in order to make the cd bootable on a
sparc, you need to run SiLo on it. This means you need to make an iso
image, SiLo it, and then burn the image to the CD. 

	sleazy cd should have no problem writing out an iso blockfile to the
cd, I've done this before myself. 

	for more info, see the cd_writer howto

 - Eric
