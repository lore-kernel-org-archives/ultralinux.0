From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Wed, 04 Nov 1998 12:40:12 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-91018491617461@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I retried installing on my Ultra5 today with Jakub's latest UP 1.0.9
update that he put there on Monday. The installation went fine right
up until it tried to make a boot disk. I put a floppy in the drive,
hit "Yes, make a boot disk" and the kernel log on VC 4 came up with:
    <4>floppy0: probe failed...
      (12 lines of the above)
    <4>end_request: I/O error, dev 02:00 (floppy), sector 0
    <7>VFS: Disk change detected on device 02:00
and the cycle then repeated indefinitely "probe failed" x 12 etc).
I killed the "bask mkbootdisk" process but the genromfs process
stuch in D state. That kept the loop device busy so that the
following "install SILO bootloader" couldn't do its
"insmod /modules/loop.o" and thus failed.

I redid the installation from scratch and this time chose not to
make a boot diskette. Everything seemed to install perfectly this
time and at the "Congratulations...hit return to reboot" I did so.
Booting went fine up until the
    Adding swap...
line at which point there was a pause (30 secs to 1 minute perhaps)
before it went on with
    Swansea...
    IPX...
    sunhme.c:v1.2 ...
    eth0: HAPPY MEAL...
    eth0: Link is up using internal transceiver at 10Mb/s, Half Duplex
and then hung. Hitting the CapsLock key lit the light (I don't know if
that's relevant on sparc arch).

I power cycled and did "boot" from the boot prom "ok" prompt.
This time the boot only got as far as
    CMD646: MDMA enable...
and then hung at that point.

Are there any magic keys enabled on sparc to dump any info?
It looks like I'm nearly but not quite there.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
