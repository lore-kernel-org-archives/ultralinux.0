From: David Miller <davem@twiddle.net>
Date: Fri, 02 Apr 1999 21:02:08 +0000
Subject: Re: order of disk recognition
Message-Id: <marc-linux-ultrasparc-92308727408441@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92307233031541@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92307233031541@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
   Date: 	Fri, 2 Apr 1999 22:57:58 +0200 (CEST)

   Actually, there is something you can do. Start using devfs. Then
   the devices won't change unless you reorder the SCSI controllers
   themselves (as opposed to just detaching/attaching new SCSI devices
   to them).

I have a feeling Linus won't ever put this in for the 2.2.x stable
series and defer it to 2.3.x development kernels.

So what we will be able to offer users by default will not have this
functionality, they'll have to obtain it as a seperate kernel patch.

Later,
David S. Miller
davem@redhat.com
