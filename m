From: Steve Dunham <dunham@cse.msu.edu>
Date: Fri, 18 Sep 1998 15:17:45 +0000
Subject: Re: MAJOR 1.09 problem!!!!!!
Message-Id: <marc-linux-ultrasparc-90613604203612@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90564416421025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90564416421025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Phil Hunt <phil@isone.net> writes:

> I have a Sun Ultra 10, 300mhz processor, 256meg memory,
> startup header is:

> Sun Ultra 5/10 UPA/PCI  (UltraSparc IIi - 300mHZ)
> Open Boot 3.11, 256Meg memory installed

> I net booted it using the 1.09 kit, got through RARP, and tftpboot.img load.

> Install started.....

> Right after it read hdlist, the following error appeared:

> Comps Error
> Missing package
> GLIB
> at line 220

> I hit ok, and it proceeded  (I looked in RPMS, glib-1 was there).

This has little to do with your other problems. AFAIK, glib is only
needed for gtk/gnome stuff.  (It has to be in RPMS and in the "hdlist"
file, BTW.  Moreover, the case of the the packagename in the comps
file should match the real package name.)

> After total install, whether SILO is installed or not....upon reboot, the Sun
> white screen said:

> Boot Device: disk:b  File and args:
> The File just loaded does not appear to be executable.

> Tries that twice, then comes to an OK prompt

> Any ideas whats wrong??????

> HELP!  I am stuck!!!
> phil

Looks like a problem loading SILO.  Perhaps it wasn't installed, the
PROM is looking on ther wrong slice (partition), or there is some
other error.


Steve
dunham@cse.msu.edu
