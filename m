From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Mon, 11 May 1998 09:17:14 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356531001@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530980@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530980@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> OK cd pci@1
> OK ls
> [...]
> 
> I.e. show the listing of /pci/pci@1/pci@1, please?

f008671c SUNW,isptwo@4
f007e438 SUNW,hme@0,1
f007e1e8 pci108e,1000@0

> Also I have another image for you.

This one gets to the same place as the last ones (mach64_init) and
then the boot PROM messages says

    clock_probe: Mostek not probed by EBUS
    Program terminated

The next time round the mulberry bush, the machine's owner will
probably be putting/have put Solaris on it. However, I will probably
be able to schedule a time with him when I can try booting up new
test images. I would guess that, when it arrives, my Ultra5 will
have the problem (it'll be similarly configured: same vendor's
standard academic configuration plus the same add-on SunSwift card
that the current beast has). In that case, I can carry on trying
things out on that one for as long as you're prepared to send me
test images.

Thanks,
--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
