From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 26 Jun 1998 06:50:24 +0000
Subject: Re: Serial console?
Message-Id: <marc-linux-ultrasparc-90222357631033@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Did you do 'boot net serial'?  You have to *tell* it you're on a serial
> console and it should work fine...

That should not be necessary. Our install just checks the console, whether
it is serial or not.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.106 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
