From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 19 Nov 1998 19:44:25 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91155196906778@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Thu, 19 Nov 1998 10:15:53 -0800 (PST)
   From: ebrower@usa.net

   > Eric, could you send us the output of "probe-scsi-all" from the PROM
   > prompt on this box?

   {0} ok probe-scsi-all

 ...

Ok thanks, now grab the tftpboot image from:

ftp.cobaltnet.com:/pub/users/davem/for_ebrower/e4000test.img

and tftpboot that and send me the console output, it may be lengthy.

If it works and detects your disks, it will be a step in the right
direction, but this image is not an install image, just a kernel by
itself so it will die when it tries to mount root even if the device
probing works :-)

Let me know how it goes.

Later,
David S. Miller
davem@dm.cobaltmicro.com
