From: Ryan Cresawn <cresawn@vaquero.LaRC.NASA.GOV>
Date: Wed, 06 Oct 1999 18:08:24 +0000
Subject: SCSI strangeness on Ultra2
Message-Id: <marc-linux-ultrasparc-93923506202161@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm having some trouble on my Ultra2 with the SCSI busses.  If I am
accessing the ZIP 250 drive on the second SCSI bus then it will really
confuse the whole system.  Keyboard doesn't take input, programs
freeze their operation, X freezes for minutes and then begins to
work.  If you would like more info let me know.

*** output of `uname -a' ***

Linux grimlock.larc.nasa.gov 2.2.12 #1 Wed Oct 6 10:06:57 EDT 1999 sparc64 unknown

*** trimmed output of `dmesg' ***

esp0: IRQ 3,7e0 SCSI ID 7 Clk 40MHz CCF=8 TOut 167 NCR53C9XF(espfast)
esp1: IRQ 7,7c3 SCSI ID 7 Clk 25MHz CCF=5 TOut 167 NCR53C90A(esp100a)
ESP: Total of 2 ESP hosts found, 2 actually in use.
scsi0 : Sparc ESP366-HME
scsi1 : Sparc ESP100A (NCR53C90A)
scsi : 2 hosts.
  Vendor: FUJITSU   Model: MAB3045S SUN4.2G  Rev: 1806
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sda at scsi0, channel 0, id 1, lun 0
  Vendor: FUJITSU   Model: MAE3182LC         Rev: 0108
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi disk sdb at scsi0, channel 0, id 2, lun 0
  Vendor: TOSHIBA   Model: XM5701TASUN12XCD  Rev: 2395
  Type:   CD-ROM                             ANSI SCSI revision: 02
Detected scsi CD-ROM sr0 at scsi0, channel 0, id 6, lun 0
  Vendor: IOMEGA    Model: ZIP 250           Rev: H.41
  Type:   Direct-Access                      ANSI SCSI revision: 02
Detected scsi removable disk sdc at scsi1, channel 0, id 5, lun 0
scsi : detected 1 SCSI cdrom 3 SCSI disks total.
esp0: target 6 asynchronous
Uniform CDROM driver Revision: 2.55
esp0: target 1 [period 100ns offset 15 20.00MHz FAST-WIDE SCSI-II]
SCSI device sda: hdwr sector= 512 bytes. Sectors= 8385121 [4094 MB] [4.1 GB]
esp0: target 2 [period 100ns offset 15 20.00MHz FAST-WIDE SCSI-II]
SCSI device sdb: hdwr sector= 512 bytes. Sectors= 35700480 [17431 MB] [17.4 GB]
scsi : aborting command due to timeout : pid 60, scsi1, channel 0, id 5, lun 0 Read Capacity 00 00 00 00 00 00 00
 00 00 
esp1: Aborting command
esp1: dumping state
esp1: dma -- cond_reg<94000010> addr<0e010001>
esp1: SW [sreg<06> sstep<01> ireg<10>]
esp1: HW reread [sreg<06> sstep<c1> ireg<10>]
esp1: current command [tgt<05> lun<00> pphase<MSGOUT> cphase<MSGOUTDONE>]
esp1: disconnected 
SCSI host 1 abort (pid 60) timed out - resetting
SCSI bus is being reset for host 1 channel 0.
esp1: Resetting scsi bus
esp1: Gross error sreg@
esp1: SCSI bus reset interrupt
esp1: illegal command
esp1: dumping state
esp1: dma -- cond_reg<96000201> addr<0e01000b>
esp1: SW [sreg<06> sstep<01> ireg<40>]
esp1: HW reread [sreg<93> sstep<84> ireg<18>]
esp1: current command [tgt<05> lun<00> pphase<UNISSUED> cphase<SLCTNORM>]
esp1: disconnected 
esp1: Forcing async and disabling disconnect for target 5
esp1: Resetting scsi bus
esp1: SCSI bus reset interrupt
esp1: SCSI bus reset interrupt

-- 
Ryan
