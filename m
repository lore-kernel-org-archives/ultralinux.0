From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 15 Oct 1998 10:23:17 +0000
Subject: Re: UltraLinux on Ultrabook RDI
Message-Id: <marc-linux-ultrasparc-90849133003517@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90843095706928@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90843095706928@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> 
>      Question: Has anyone had any sucess install Ultralinux 1.0.9 on an
> Ultrabook RDI?
> 
>      See the specs at  : http://www.rdi.com/ultrabookspecs.html
> 
> 
>      I have Solaris 2.5.1 and Solaris 2.6 installed on the Ultrabook RDI.
>      I have made room to install UltraLinux as well.

Looking at the prtconf you've sent me, I think it should run out of box.
Please try it and report how it went.
If you succeed, it would be great if you could try out PCMCIA:
grab pcmcia-cs-3.0.5 or whatever is the latest, try to compile it and run
it. Your machine has a supported Cirrus PCMCIA chip and quick skimming of
pcmcia-cs package did not discover anything obvious why it should not work.
If you'll need, I can help you with the compiling...

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.125 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
