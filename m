From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Tue, 05 May 1998 10:02:52 +0000
Subject: Re: UltraPenguin1.0.9 update
Message-Id: <marc-linux-ultrasparc-90222356530967@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530965@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530965@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

I recently installed UP-1.0.9 on an UltraSPARC I. It seems to work
well, thanks to the ultralinux team !

But, I just tried to first update the kernel with srpm to version
2.1.99, and I got the following compilation error:

make[3]: Entering directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
[...]
gcc -o conmakehash conmakehash.c
gcc: Internal compiler error: program cc1 got fatal signal 11
make[3]: *** [conmakehash] Error 1
make[3]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
make[2]: *** [first_rule] Error 2
make[2]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
make[1]: *** [sub_dirs] Error 2
make[1]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers'
make: *** [linuxsubdirs] Error 2
Bad exit status


Any idea about what I must have missed ?

Thierry Lafage.

-- CAPS project -- IRISA, campus de Beaulieu, 35042 Rennes cedex, France
Phone: +33 2 99 84 25 01 -- Fax: +33 2 99 84 71 71 --
http://www.irisa.fr/caps/PEOPLE/ThierryL/
