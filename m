From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 21 Dec 1998 21:46:58 +0000
Subject: Re: Ultra2 Creator Questions
Message-Id: <marc-linux-ultrasparc-91428087232509@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91427461428955@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91427461428955@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I'm about embark on a venture with Ultra Penguin.
> 
> My Ultra2 box is and Ultra2 Creator, with a 200 MHz processor and 384 megs 
> of ram.
> It has a 4 gig wide SCSI hard drive that uses a SCA connector.
> I assume from my HP Netserver experience that this hot swappable?

No, they are not. You'd need to buy some array which would give you those
capabilities. Nearly all Sun boxes use SCA connectors.
> 
> Now, my questions are:
> 1.	Does Ultra Penguin 1.1.9 support the graphics card that is normally
> installed in the Creator series?  It is my understanding, that earlier 
> versions did not.
> I do not know exactly with card I have.

Yep, it supports it.
> 
> 2.	What type of SCSI host adapter is normally installed in the Creator 
> series machines?
> Do I have some type of RAID controller connected to my 4 gig drive, that 
> the Ultra Penguin
> does not yet support?  If so, will I need to install a standard SCSI host 
> to the standard 
> SCSI host that the CD and other standard scsi devices will hook up to?
> (standard SCSI being not RAID)

If it is Ultra2, then it has ESP (ie. NCR based SCSI HBA).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
