From: Ward Deng <wdeng@KachinaTech.COM>
Date: Sat, 27 Jun 1998 06:40:55 +0000
Subject: Re: Serial console?
Message-Id: <marc-linux-ultrasparc-90222357631040@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Yes. No need here. Both AXi and AX boards work the same way with 1.0.9 and
2.1.99 kernel.

--ward

Ward Deng, Ph.D                   |  Kachina Technologies, Inc.
Vice President and COO            |  4708 Douglas MacArthur Road NE,
Tel: 505-888-5934                 |  Albuquerque NM 87110
Fax: 505-888-5902                 |  info@KachinaTech.COM
Email: Ward.Deng@KachinaTech.COM  |  URL: http://www.KachinaTech.COM

On Fri, 26 Jun 1998, Jakub Jelinek wrote:

> > Did you do 'boot net serial'?  You have to *tell* it you're on a serial
> > console and it should work fine...
> 
> That should not be necessary. Our install just checks the console, whether
> it is serial or not.
> 
> Cheers,
>     Jakub
> ___________________________________________________________________
> Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
> Administrator of SunSITE Czech Republic, MFF, Charles University
> ___________________________________________________________________
> Ultralinux - first 64bit OS to take full power of the UltraSparc
> Linux version 2.1.106 on a sparc64 machine (498.80 BogoMips).
> ___________________________________________________________________
> 
