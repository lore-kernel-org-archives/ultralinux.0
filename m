From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Tue, 12 May 1998 13:21:46 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356531008@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530980@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530980@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> > f008671c SUNW,isptwo@4
> > f007e438 SUNW,hme@0,1
> > f007e1e8 pci108e,1000@0
> 
> Ahh, this 'pci108e,1000' is the second ebus bugging us...
> 
> >     clock_probe: Mostek not probed by EBUS
> >     Program terminated
> 
> Shit, another image...

Congratulations, this one gets through the entire boot stage
successfully and then gives the VFS "can't mount root" panic.
I assume this is intentional for these test images. It gives
539 BogoMIPS, sees both hme0 and hme1 ethernet cards, finds the
IDE disk partitions OK and generally looks fine. When mine
arrives and the fixes get merged into the UP dist, I can do a
proper install and take things from there. Many thanks for the
quick turnaround of fixes, Eddie.

I'll have access to an Enterprise 450 within the next few days
(destined to use Solaris but I can play with it for a while,
I should thing). Is ultralinux known to work fine with those or
is it worth me trying to boot it and see what happens?

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
