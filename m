From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 14 May 1998 05:49:32 +0000
Subject: Re: Ultra 5
Message-Id: <marc-linux-ultrasparc-90222356531029@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531023@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531023@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 13 May 1998 13:13:44 -0700
   From: "Derek R. Pizzagoni" <drp@interlink.com>

   I'm trying to boot an Ultra 5, and I get to a line similar to the
   following:

   CMD646: MDMA enable [SELECT SETXFER CMND wait STAT(50) SETFEATURE wait
   STAT(d0) STAT(d0) STAT(d0) STAT(d0) STAT(d0) STAT(d0) STAT(d0) STAT(d0)
   STAT(d0) DMA_CAP DONE]

   It hangs at that point forever.  I have the tftpboot.img from May 2. 
   Any ideas?

Do you have a IDE cdrom drive on this machine?  They seem to be
problematic, if this is the case I know how to fix it though.

Later,
David S. Miller
davem@dm.cobaltmicro.com
