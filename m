From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Fri, 08 May 1998 09:40:12 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356530984@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530980@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530980@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> > Eddie C. Dost writes:
> > > could you test-boot the appended kernel via network on your Ultra5 and
> > > tell me if this fixes the bug you are seeing? - This will not get you
> > > in the Ultrapenguin install, but ultrapenguin will be updated ASAP if
> > > this works...
> > 
> > It doesn't fix them but there's more debugging telemetry for you:
> > 
> > ebus0: ...
> > ebus1: ...
> 
> Hmmm there might be an empty ebus on your HME card, please try the following
> image...

First, here's the data you requested in the previous message:

cd /pci
ls
f00600f8 pci@1
f005fb10 pci@1,1
cd pci@1
ls
f007d690 pci@1
cd pci@1,1
Device not found
cd /pci/pci@1,1       (Playing by ear, I hoped this is what you meant)
ls
f0079ed0 ide@3
f00755d0 SUNW,m64B@2
f006d5c8 network@1,1
f0060e60 ebus@1
cd ebus
ls
f00665b8 SUNW,CS4231@14,200000
....flashprom...
....eeprom...
....
....power...
....auxio...


Then I tried booting the image you sent above.

boot net
....
ebus0: ...
ebus1: ...
mach64_init: IOBASE...
mach64_init: chip_type...


Then the boot PROM overlayed the message:

    clock_probe: Cannot find timer chip
    Program terminated
    ok


Thanks for your continued fast responses. The good news is that
despite this Ultra5 becoming unavailable next week, I'm getting an
Ultra5 of my own RSN in order to continue development of our new mail
server cluster. Though that'll be mainly for Solaris (I lost the
battle to use Linux/Intel...although I'm keeping my options open in
case ultralinux stabilises), I can make it dual boot Linux and help
out somewhat.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
