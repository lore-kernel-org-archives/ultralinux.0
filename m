From: Marc Duponcheel <mduponch@cisco.com>
Date: Tue, 11 Aug 1998 00:31:54 +0000
Subject: kernel: scsi : aborting command due to timeout
Message-Id: <marc-linux-ultrasparc-90280886808916@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

Running UltraPenguin 1.0.9 with CVS kernel 2.1.115 on a Sparc 5 (110Mhz)
Exabyte attached to a 2nd scsi controller scsi ID 6.

When writing to tape the disk on the 2nd scsi controller scsi ID 5 reports
timeout problems (both with tar and dump) and system crashes (I don't find
an Oops but I recall I could see one).

Here is the kernel log (from linux/drivers/scsi/scsi_obsolete.c)

Aug 11 00:45:40 sparc-brew kernel: scsi : aborting command due to timeout: pid 12261, scsi1, channel 0, id 5, lun 0 0x0a 15 c0 22 0 2 00 
Aug 11 00:45:40 sparc-brew kernel: esp1: Aborting command
Aug 11 00:45:40 sparc-brew kernel: esp1: dumping state
Aug 11 00:45:40 sparc-brew kernel: esp1: dma -- cond_reg<40040010> addr<f27b2440>
Aug 11 00:45:40 sparc-brew kernel: esp1: SW [sreg<00> sstep<04> ireg<20>]
Aug 11 00:45:40 sparc-brew kernel: esp1: HW reread [sreg<00> sstep<cc> ireg<00>]
Aug 11 00:45:40 sparc-brew kernel: 
Aug 11 00:45:40 sparc-brew kernel: esp1: disconnected [tgt<06> lun<00> pphase<FREEING> cphase<FREEING>]
Aug 11 00:45:40 sparc-brew kernel: SCSI disk error : host 1 channel 0 id 5 lun 0 return code = 50000
Aug 11 00:45:40 sparc-brew kernel: scsidisk I/O error: dev 08:51, sector 1425442

Note that:
 - this happened when I had less disks attached as well
   (running some 2.1.xxx kernels a while back).
   [which is why I no longer used the tape steamer but I now tried again]
 - With the 2.0.3x kernels the tape steamer worked fine.
   (latest 2.0.3x one I used was 2.0.30 in fact)
 - the disks work just fine as long as I don't use the tape.

Question(s):
 - maybe there is some parameters I can set in order to avoid
   timeouts?
 - anybody else using an Exabyte successfully on UltraPenguin?

PS: I'll make a kernel with verbose scsi reporting ...

marc@sparc-brew:~ $ [bash] cat /proc/scsi/scsi 
Attached devices: 
Host: scsi0 Channel: 00 Id: 03 Lun: 00
  Vendor: QUANTUM  Model: FB1080J  SUN1.05 Rev: 630D
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi0 Channel: 00 Id: 06 Lun: 00
  Vendor: SEAGATE  Model: ST410800N        Rev: 0018
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi1 Channel: 00 Id: 00 Lun: 00
  Vendor: SEAGATE  Model: ST11200N SUN1.05 Rev: 9500
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi1 Channel: 00 Id: 01 Lun: 00
  Vendor: SEAGATE  Model: ST11200N SUN1.05 Rev: 9500
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi1 Channel: 00 Id: 02 Lun: 00
  Vendor: SEAGATE  Model: ST11200N SUN1.05 Rev: 9500
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi1 Channel: 00 Id: 05 Lun: 00
  Vendor: SEAGATE  Model: ST11200N SUN1.05 Rev: 9500
  Type:   Direct-Access                    ANSI SCSI revision: 02
Host: scsi1 Channel: 00 Id: 06 Lun: 00
  Vendor: EXABYTE  Model: EXB-8500SMBANXH1 Rev: 0458
  Type:   Sequential-Access                ANSI SCSI revision: 02

marc@sparc-brew:~ $ [bash] cat /proc/scsi/esp/0
Sparc ESP Host Adapter:
        PROM node               ffd3d20c
        PROM name               esp
        ESP Model               FAS100A
        DMA Revision            Rev 2
        Live Targets            [ 3 6 ]

Target #        config3         Sync Capabilities       Disconnect
Wide
3               00000003        [28,04]                 yes             no
6               00000003        [28,04]                 yes             no

marc@sparc-brew:~ $ [bash] cat /proc/scsi/esp/1
Sparc ESP Host Adapter:
        PROM node               ffd427e8
        PROM name               esp
        ESP Model               FAS236
        DMA Revision            ESC Rev 1
        Live Targets            [ 0 1 2 5 6 ]

Target #        config3         Sync Capabilities       Disconnect
Wide
0               00000018        [6f,04]                 yes             no
1               00000018        [6f,04]                 yes             no
2               00000018        [6f,04]                 yes             no
5               00000018        [6f,04]                 yes             no
6               00000008        [6f,04]                 yes             no


-- Marc Duponcheel.
        [work] mduponch@cisco.com
        [home] marc@offline.be
