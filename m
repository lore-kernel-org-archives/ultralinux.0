From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 06 Nov 1998 09:08:51 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91035590627298@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> hi!
> 
> i'm having a few problems with the new ultrapenguin stuff. 
> 
> 1 - the install works flawlessly, but there seems to be something wrong
> with initrd... when i reboot after installing i get:
> 
> initrd overwritten ([some address] > [some other address]) - disabling it
> 
> and after this it of course can't mount root. is there a way to tell silo
> to load a module?

Further question: can you on the SILO prompt do the following:
type

xxdebug ENTER

then

cd /virtual-memory
.properties
cd /memory
.properties

and tell me from virtual-memory's properties how does the last line of
translations look like (it should be something like 
00000000.00002000.00000000.XXXXXXXX.800000000.00002XXX or similar (the first
two numbers are virtual address and I'm interested in the lowest one - I
need to know the X numbers).
From memory's properties if you could type all the reg: numbers.

Thanks for your cooperation. If I get those info (and the one I asked in the
last mail), then I can fix SILO...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
