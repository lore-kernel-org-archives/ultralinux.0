From: rick@dgii.com (Rick Richardson)
Date: Thu, 19 Nov 1998 10:01:36 +0000
Subject: Re: Worth attempting an Ultra 30 install with 1.1???u
Message-Id: <marc-linux-ultrasparc-91150215416462@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91142241707303@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91142241707303@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes...
> > 
> > 
> > Subject says it all.  Is 1.1 (from the mirrors) ready to be installed via TFTP
> > on an Ultra 30, or should I wait for awhile?
> 
> Unless you want to do a CD-boot, which will probably fail for you, go ahead
> with the installation, everything should be fine.

I just tried to load UP1.1 on an Ultra 30.  This particular ultra
30 has a broken onboard ethernet controller, so we have a scsi/hme
card in it.

The tftpboot (boot /pci@1f,4000/pci@4/SUNW,hme@0,1) works (yippee,
first time we've gotten even this far on an Ultra 30) and we get to
the install screens.

But thats it.  The ethernet driver keeps complaining that "Link down,
Cable problem?" when it tries to access out local NFS mirror.  But of course
there is no cable problem, since the tftpboot process worked fine.

-Rick

-- 
Rick "The Hack" Richardson  rick@dgii.com http://RickRichardson.freeservers.com
