From: "Roger J. Allen" <rja@sis.rpslmc.edu>
Date: Wed, 16 Dec 1998 17:36:35 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91383426216789@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


> > I did find a way to install it on the Ultra1, but not the SS2 or IPC.
> > 
> 
> > For the SS2, "boot net" of the tftpboot.img displayed:
> > 
> > 2b3e00 receive failed
> > TILO
> > 
> > and ran until it got to the:
> > 
> > RAMDISK: compressed image found at block 0
> > 
> > Then the lights went out (the green one on the SS2, and DTR on the break
> > out box on the serial port), and it was dead.  It took about 7 minutes
> > of waiting after the 2b3e00 showed up until the "receive failed"
> > appeared.
> 

The new tftpboot.img fixes that problem and now lets me boot the Sparc
Station 2.

Thanks for the quick work.

-- 
Roger J. Allen                Rush-Presbyterian-St. Luke's Medical Center
System Administrator                                   Chicago,  IL   USA
Surgical Information Systems                       Voice:  (312)-942-4825
Internet: rja@sis.rpslmc.edu                         FAX:  (312)-733-6921
