From: <pau@readysoft.es>
Date: Wed, 07 Apr 1999 17:48:50 +0000
Subject: Re: UltraPenguin 1.1.9 update
Message-Id: <marc-linux-ultrasparc-92351014928540@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92341848122037@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92341848122037@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 7 Apr 1999, Malcolm Beattie wrote:

> Jakub Jelinek writes:
> > I've updated kernel in UltraPenguin distribution to 2.2.5 current, so that
> > 1) SCSI/HME PCI cards are fully supported
> 
> Indeed, "insmod qlogicisp" now seems to work fine on my Ultra5 with

I've been able to insert the module and see the Qlogic card, but now I
don't know which device to access.

I've tried sd1 to sdg and it's not there.

My dmesg is:

scsi0 : ncr53c8xx - revision 3.1h
scsi1 : ncr53c8xx - revision 3.1h
..........
Detected scsi disk sda at scsi0, channel 0, id 0, lun 0
.........
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
.........
Detected scsi disk sdb at scsi1, channel 0, id 5, lun 0
........
........
qlogicisp : new isp1020 revision ID (5)
scsi2 : QLogic ISP1020 SCSI on PCI bus 80 device 10 irq 6313472 base
0xfffff9fe02000c00
scsi : 3 hosts.

Any help?
Pau
