From: Fred Medick <fred@xoom.com>
Date: Mon, 14 Sep 1998 17:04:49 +0000
Subject: Re: MAJOR 1.09 problem!!!!!!
Message-Id: <marc-linux-ultrasparc-90579689531095@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90564416421025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90564416421025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


> Boot Device: disk:b  File and args:
> The File just loaded does not appear to be executable.
> 
> Tries that twice, then comes to an OK prompt

I saw a very similar situation last week when an E450 of mine crashed 
and could not come back up because it could not mount its hard drives.

Obviously your problem is not hardware-related, but maybe your
install error:

> Comps Error
> Missing package
> GLIB
> at line 220

has made your cpu unable to mount its drive/s. Why not get to the OK
prompt and probe for the drives?


On Sat, 12 Sep 1998, Phil Hunt wrote:

> hi
> 
> I have a Sun Ultra 10, 300mhz processor, 256meg memory,
> startup header is:
> 
> Sun Ultra 5/10 UPA/PCI  (UltraSparc IIi - 300mHZ)
> Open Boot 3.11, 256Meg memory installed
> 
> 
> I net booted it using the 1.09 kit, got through RARP, and tftpboot.img load.
> 
> Install started.....
> 
> Right after it read hdlist, the following error appeared:
> 
> Comps Error
> Missing package
> GLIB
> at line 220
> 
> I hit ok, and it proceeded  (I looked in RPMS, glib-1 was there).
> 
> After total install, whether SILO is installed or not....upon reboot, the Sun
> white screen said:
> 
> Boot Device: disk:b  File and args:
> The File just loaded does not appear to be executable.
> 
> Tries that twice, then comes to an OK prompt
> 
> Any ideas whats wrong??????
> 
> HELP!  I am stuck!!!
> phil
> 
> 
> 
> ===================================
> Phil Hunt                                               phil@isone.net
> System Administrator                              work:  (603)424-5278
> Internet Services of New England                  WWW:   www.isone.net
> Merrimack, NH 03054                    "New England Internet for less"
> 
> 
