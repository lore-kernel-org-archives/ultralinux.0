From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 20 Aug 1998 12:17:16 +0000
Subject: Re: Problem with SILO on 1.09 install in Usparc5
Message-Id: <marc-linux-ultrasparc-90361589923548@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90339153809725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90339153809725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Hi!
> 
> I am still having trouble installing ultrapenguin on an ultrasparc 5.
> Hoping someone/anyone can help.
> 
> We are getting the same fatal error in determining what second stage
> device is or something.
> 
> Please help or we will be forced to use solaris!

Try SILO 0.7.3-2
(ftp://ultra.linux.cz/OS/Linux/Sparc/local/silo/testing/silo-pre0.7.3-2.tgz).
I hope it helps. Even if the right SILO is not in the install image, you can
just install everything, then reboot and boot with
boot net root=/dev/XXXX noinitrd
Then install the new SILO and reboot your machine to see if it works.
Until sun4c problems are debugged, I cannot release 0.7.3 and thus cannot
put it into the install image.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.115 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
