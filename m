From: rick@dgii.com (Rick Richardson)
Date: Wed, 18 Nov 1998 23:25:52 +0000
Subject: Re: Still no go with the happy meal on the scsi/hme card on sun ultra 10
Message-Id: <marc-linux-ultrasparc-91148320602842@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Stephan van Hienen writes...
> tried the new cvs kernel (2.1.128)
> 
> but still get timeouts on the happy meal eth0 card in my kernel
> 
> eth1 (onboard happy meal)
> eth2,eth3 (dec 450)
> work ok
> 
> this was on the list before, but i hoped it was fixed
> 
> som1 is looking at this ?
> 
> i can look for things here, but since i'm not a programmer myself, i can't
> try to fix it :(


I just tried to load UP1.1 on an Ultra 30.  This particular ultra
30 has a broken onboard ethernet controller, so we have a scsi/hme
card in it.

The tftpboot (boot /pci@1f,4000/pci@4/SUNW,hme@0,1) works (yippee,
first time we've gotten even this far on an Ultra 30) and we get to
the install screens.

But thats it.  The ethernet driver keeps complaining that "Link down,
Cable problem?" when it tries to access the NFS mirror.  But of course
there is no cable problem, since the tftpboot process worked fine.

So I guess I can confirm that there seems to be something wrong with
the ethernet driver, if that helps.

Unfortunately, I *am* a programmer, but I can't do anything to help
this situation until I get at least one of these confounded Ultra's
loaded in the first place.

-Rick

-- 
Rick "The Hack" Richardson  rick@dgii.com http://RickRichardson.freeservers.com
