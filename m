From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 07 Apr 1999 12:13:44 +0000
Subject: Re: UltraPenguin 1.1.9 update
Message-Id: <marc-linux-ultrasparc-92348842207818@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92341848122037@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92341848122037@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:
> I've updated kernel in UltraPenguin distribution to 2.2.5 current, so that
> 1) SCSI/HME PCI cards are fully supported

Indeed, "insmod qlogicisp" now seems to work fine on my Ultra5 with
SunSwift SCSI/HME PCI card. Many thanks to DaveM who you said, I
believe, did the PCI port recently. I don't have any disks to try on
it immediately but I've a 6 x 10K RPM 9GB multipack arriving RSN
(ordered a few weeks ago) which I can hook up and run some benchmarks
on. I'm putting the disks on a new web server in a couple of weeks or
so but I'll have a little window to run any tests/benchmarks if
people want any done. Does this 2.2.5 kernel have Mingo's new RAID
code or is it still the old stuff? From the presence of the
raidtools-0.90 RPM and the "raid5: using high-speed VIS checksum
routine" boot time message I'd guess it's the new (which I'm already
using in production on a number of machines). If so, I'll do some
testing to see how Ultra5+SunSwift benchmarks against PII+BT958 with
the same disk array for various RAID combinations (and maybe even
against Solaris+Solstice Disk suite on the same (SPARC) hardware.

Thanks for the 2.2.5 update, by the way, it works fine.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
