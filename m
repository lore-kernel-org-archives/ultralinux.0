From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 05 May 1998 10:47:40 +0000
Subject: Re: UltraPenguin1.0.9 update
Message-Id: <marc-linux-ultrasparc-90222356530968@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530965@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530965@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
> Hi,
> 
> I recently installed UP-1.0.9 on an UltraSPARC I. It seems to work
> well, thanks to the ultralinux team !
> 
> But, I just tried to first update the kernel with srpm to version
> 2.1.99, and I got the following compilation error:
> 
> make[3]: Entering directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
> [...]
> gcc -o conmakehash conmakehash.c
> gcc: Internal compiler error: program cc1 got fatal signal 11
> make[3]: *** [conmakehash] Error 1
> make[3]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
> make[2]: *** [first_rule] Error 2
> make[2]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers/char'
> make[1]: *** [sub_dirs] Error 2
> make[1]: Leaving directory `/var/tmp/kernel/usr/src/linux-2.1.99/drivers'
> make: *** [linuxsubdirs] Error 2
> Bad exit status
> 
> 
> Any idea about what I must have missed ?

Ok. How old is your installation? This is exactly the kernel bug I was
talking about in the last announce. In fact, this is even the command the
bug has been found on. So, you should update the kernel from RPMS to 2.1.99
and then you can freely recompile it.
Or, alternatively, do a make in /var/tmp/kernel/usr/src/linux/
(that will compile you the kernel - the difference is in the amount of
variables in environment that moves stack down during RPM builds and
triggers the kernel bug).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.99 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
