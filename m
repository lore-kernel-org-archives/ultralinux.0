From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Mon, 25 May 1998 17:57:29 +0000
Subject: Re: [mbeattie@sable.ox.ac.uk: oops booting ultrapenguin-1.0.9 on an
Message-Id: <marc-linux-ultrasparc-90222356531066@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530980@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530980@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Eddie C. Dost writes:
> > I then retried with the last test image that you sent me for the Ultra5
> > and that apparently booted successfully and just panicked at the
> > "can't mount root fs on 00:00" stage which I assume is intentional.
> > Amongst the boot messages was a complaint about the NCRc875 SCSI HBA
> > about sharing fast and slow IRQs followed by a "...detaching" message.
> > However, it went on to find the "scsi: 1 hosts" and a list of
> > partitions on sda so it wasn't completely broken.
> 
> Ah, the ncr driver uses SA_INTERRUPT, which should never be used on
> Sparc PCI IRQs... Please try this test image:

Looks good to me: it seems to find both busses and the CD-ROM and
disk which are each on a different bus.

ncr53c8xx: at PCI bus 4, device 2, function 0
ncr53c8xx: 53c875 detected
ncr53c8xx: at PCI bus 4, device 3, function 0
ncr53c8xx: 53c875 detected
ncr53c875-0: rev=0x03, base=0x1ff80012000 io_port=0xfffff9fe02010800
  irq=0xc30007e6
ncr53c875-0: NCR clock is 40218 KHz, 40218 KHz
ncr53c875-0: ID 7, Fast-20 Parity Checking
ncr53c875-0: on-board RAM at 0x1ff80013000
ncr53c875-0: restart (scsi reset).
ncr53c875-0: copying script fragments into the on-board RAM...
ncr53c875-1: rev=0x03, base=0x1ff80010000 io_port=0xfffff9fe02010400
  irq=0xc30007e0
ncr53c875-1: NCR clock is 40218 KHz, 40218 KHz
ncr53c875-1: ID 7, Fast-20 Parity Checking
ncr53c875-1: on-board RAM at 0x1ff80011000
ncr53c875-1: restart (scsi reset).
ncr53c875-1: copying script fragments into the on-board RAM...
scsi0 : ncr53c8xx - revision 2.5f
scsi1 : ncr53c8xx - revision 2.5f
scsi: 2 hosts
Vendor: TOSHIBA ...
Type: CD-ROM ...
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
ncr53c875-1-<0,0>: using tagged command queuing, opts 12 cmds/lun
Vendor: FUJITSU ...
Type: Direct-Access ...
Detected scsi disk sda at scsi1, channel 0, id 0, lun 0
ncr53c875-0-<6,0>: FAST-10 SCSI 10.0 MB/s (100ns, offset 8)
ncr53c875-1-<0,0>: FAST-10 WIDE SCSI 20.0 MB/s (100ns, offset 16)

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
