From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Mar 1999 23:08:39 +0000
Subject: Re: good news and bad news
Message-Id: <marc-linux-ultrasparc-92249071701698@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92248295927840@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92248295927840@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
>    From: Thomas Klaube <Klaube@noc.dfn.de>
>    Date: 	Fri, 26 Mar 1999 21:42:24 +0100 (MET)
> 
>    I cant make it work :-(. Its the same error as the 4.5 sparc version:
>    bash-2.01$ ./netscape 
>    ./netscape: error in loading shared libraries
>    /usr/lib/libstdc++.so.2.8: undefined symbol: __register_frame_info
> 
>    I have installed the latest libstdc++.so.2.8 I could find. 
>    I am wondering against wich libstdc++ they linked the binary...
> 
>    Was anyone able to start the binary?
> 
> Your libstdc++ was compiled with gcc-2.7.x or similar, and not egcs.
> You need to upgrade to a egcs based set of compilers and libraries.
> And if you have a system this old to have such a gcc compiled
> libstdc++ then you almost certainly have a very old glibc which would
> crash with the sparclinux netscapes as well.
> 
> So if you want netscape to work, upgrade.

The library which is a problem is glibc, just upgrade it and you'll be set
up.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
