From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 19 Nov 1998 10:58:04 +0000
Subject: Re: Worth attempting an Ultra 30 install with 1.1???u
Message-Id: <marc-linux-ultrasparc-91150385217797@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91142241707303@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91142241707303@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Jakub Jelinek writes...
> > > 
> > > 
> > > Subject says it all.  Is 1.1 (from the mirrors) ready to be installed via TFTP
> > > on an Ultra 30, or should I wait for awhile?
> > 
> > Unless you want to do a CD-boot, which will probably fail for you, go ahead
> > with the installation, everything should be fine.
> 
> I just tried to load UP1.1 on an Ultra 30.  This particular ultra
> 30 has a broken onboard ethernet controller, so we have a scsi/hme
> card in it.
> 
> The tftpboot (boot /pci@1f,4000/pci@4/SUNW,hme@0,1) works (yippee,
> first time we've gotten even this far on an Ultra 30) and we get to
> the install screens.
> 
> But thats it.  The ethernet driver keeps complaining that "Link down,
> Cable problem?" when it tries to access out local NFS mirror.  But of course
> there is no cable problem, since the tftpboot process worked fine.

Aha, that's the problem. Of course, the link is down, when you claim eth0 is
broken. But I'm not sure what to do, as it would require quite large surgery
to the installation program (which has hardcoded eth0), and solving it
genericaly would require adding suport for multiple different ethernet
modules during install and stuff like that.
But AFAIK, Solaris also uses le0 for network installations and does not
offer you the possibility to select another ethernet. That's not an excuse
for us, but actually the reasoning behind it is that situations like you
have are pretty rare.
Other options for you include e.g. booting the tftpboot image and selecting
local CD-ROM.
After installation, you can obviously use another network interface instead
of eth0...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
