From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 16 Dec 1998 16:53:00 +0000
Subject: Re: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91383153315225@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91367586504735@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91367586504735@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I tried several things to get running, but it looks like the boot
> process doesn't like the Seagate ST15230N drive (SCSI ID 2) that
> I first installed UltraPenguin on.  So I switched to a Fujitsu
> internal drive (SCSI ID 1), and Linux now boots ok.  I'm running it
> right now.

BTW: Have you been booting the right device, ie. probably 
disk2 in your case?

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
