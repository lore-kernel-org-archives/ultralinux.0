From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 19 Nov 1998 20:32:11 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91155331907417@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: Thu, 19 Nov 1998 12:27:36 -0800 (PST)
   From: ebrower@usa.net

   > Let me know how it goes.

   Here's the output from the kernel:

 ...

   Total of 8 processors activated (3958.37 BogoMIPS).

Fuckin' A!  ~4000 bogomip machine :-)

Looks like the scsi layer or driver is doing something very stupid on
this box.  I'll try to enable some clever debugging in a test kernel
and put up another image tomorrow.  I hope you'll still be able to
test things on this machine.

Thanks for all the help so far.

Later,
David S. Miller
davem@dm.cobaltmicro.com
