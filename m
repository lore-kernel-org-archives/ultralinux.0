From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 23 Mar 1999 08:04:44 +0000
Subject: Re: Boot Floppy
Message-Id: <marc-linux-ultrasparc-92217677631265@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92217376228904@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92217376228904@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I tried to make a boot floppy under DOS.
> Initializes floppy and write a "boot.img" by "RAWRITE.EXE". or
> make a boot floppy under UNIX with "fdformat" and "dd"
> 
> Then I boot a ULTRA30(Creater3D) with  the both floppy.
> But I can not booting.
> messages:
>     Bad Magic Number in label block
> 
> 
> 
> 
> Why??

No SMCC UltraSPARC machines are able to boot floppy AFAIK (only UltraAX/AXi
handle it).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.3 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
