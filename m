From: "David S. Miller" <davem@redhat.com>
Date: Thu, 11 Apr 2002 04:32:26 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101849998327597@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Erik de Castro Lopo <erikd@mega-nerd.com>
   Date: Wed, 20 Mar 2002 15:11:20 +1100
   
[ Recap, his system won't boot with this QLA2100 card installed
  if drivers/net/qlogicfc.o tries to make use of it. ]

   BTW, this device:
   
      00:04.0 SCSI storage controller: QLogic Corp. QLA2100 64-bit Fibre Channel Adapter (rev 04)
   
   is indeed a plugin PCI card. I just asked someone to have a look at the
   back end of the machine :-).

Erik, would you be willing to give some patches a try to get
this card working?  After talking with Matt Jacob, we decided that
testing his driver out will help us isolate why this is failing.

Thanks.
