From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 02 Apr 1999 20:57:58 +0000
Subject: Re: order of disk recognition
Message-Id: <marc-linux-ultrasparc-92308697708204@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92307233031541@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92307233031541@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
>    Date: 	Fri, 2 Apr 1999 08:53:21 -0800 (PST)
>    From: Charu Chaubal <chaubal@ha3mpk.Eng.Sun.COM>
> 
> Short answer, there is nothing you can really do.
> (Didn't I tell you this in private email?)

Actually, there is something you can do. Start using devfs. Then the devices
won't change unless you reorder the SCSI controllers themselves (as opposed
to just detaching/attaching new SCSI devices to them).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
