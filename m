From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 03 Nov 1998 13:00:22 +0000
Subject: Re: Further changes in UltraPenguin 1.0.9
Message-Id: <marc-linux-ultrasparc-91009734510093@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91003448018926@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91003448018926@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> A suggestion for improving the installation: at the moment it seems
> to demand a swap partition. That's a nuisance since I only wanted to
> put Linux on one partition on this box and I had to wipe out a 0.5GB
> Solaris partition just to satisfy the install program's swap craving.
> It would be nice if it could be made optional. 

Ok, I'll look into that. redhat 5.0 installer just put out a warning, if you
don't want to reconsider it, that is apparently there, but some other places
unconditionally disallows it. I'll be merging differences between rawhide as
of a week ago and 5.2 into the installer, so that I can call it based on
rh5.2, today.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.126 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
