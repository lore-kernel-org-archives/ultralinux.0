From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 13 May 1998 16:36:47 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356531021@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530980@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530980@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> > I'll have access to an Enterprise 450 within the next few days
> > (destined to use Solaris but I can play with it for a while,
> > I should thing). Is ultralinux known to work fine with those or
> > is it worth me trying to boot it and see what happens?
> 
> Please try, it _should_ work, but has not been tested much...

The first attempt at booting the E450 with pure UltraPenguin 1.0.9:

    OpenBoot 3.7 512 MB memory...
    ...
    Initialising 1 megs of memory at addr 1fe00000
    Initialising 2 megs of memory at addr 1fc02000
    Initialising 508 megs of memory at addr 0
    ...
    boot net
    ...
    Server IP address ...
    Client IP address ...
    TILO
    Couldn't get translation property
    Program terminated
    ok

I then retried with the last test image that you sent me for the Ultra5
and that apparently booted successfully and just panicked at the
"can't mount root fs on 00:00" stage which I assume is intentional.
Amongst the boot messages was a complaint about the NCRc875 SCSI HBA
about sharing fast and slow IRQs followed by a "...detaching" message.
However, it went on to find the "scsi: 1 hosts" and a list of
partitions on sda so it wasn't completely broken.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
