From: TSP SD AKIMOTO DAISUKE <akimoto.qj004@ex.tel.co.jp>
Date: Wed, 25 Nov 1998 05:13:03 +0000
Subject: Re: AHA-2940 o/f Ultra support
Message-Id: <marc-linux-ultrasparc-91201500230823@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91133041215343@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91133041215343@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I have an Ultra 5 with a AHA-2940 o/f scsi card and
> when Linux/Ultra is tring to probe devices it gets
> stuck looking at the 2940.
> 
> Any ideas?  I am running 128mb ram with the latest OBP.
I have same environment and same problem.(Kernel: 2.1.126)

dmesg as followed:

Loading aic7xxx module
(scsi0) <Adaptec AHA-294X SCSI host adapter> found at PCI 1/0
(scsi0) Narrow Channe, SCSI ID=7, 16/255 SCBs 
(scsi0) Downloading sequencer code...412 instructions download
(scsi0) BRKADRINIT error (0x8):
Squencer Ram Parity Error

Can you give me a hint?
Best regards,

Tokyo Electron Sapporo Limited
Daisuke Akimoto
