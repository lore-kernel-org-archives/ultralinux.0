From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 18 Nov 1998 13:31:39 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91145516423703@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I've managed access to an Ultra Enterprise 4000 for an unknown
> duration-- a day, a week, a month-- basically until it is needed.
> 
> I MAY be suffering from the same memory-slot problem as described
> by Svante Sormark earlier today on the list.

Yes, you suffer from the same problem, but that's not the whole story.
Indeed I'm now hacking SILO to overcome that problem.
What's strange is that no SCSI devices has been found, also, the number of
found SBUSes seems to be weird (I always thought every SBUS board has two
SBUSes).

If you have Solaris on the box, can you please send me
prtconf -pv | mail -s "E4000" jj@ultra.linux.cz

Thanks.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.128 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
