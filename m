From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 10 Nov 1998 18:40:48 +0000
Subject: Re: help with silo.conf
Message-Id: <marc-linux-ultrasparc-91074663821295@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91072369608960@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91072369608960@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> I need help configuring "silo.conf".  I have two internal disks on an
> Ultra 2 Creator 3D.  Solaris is on disk0 and ultrapenguin is on
> disk1.  I have set the default boot device to be disk1, however I
> would like to add solaris to the "silo.conf".  Does anyone have a
> simple example for dual boot?

Booting Solaris from SILO won't work on sparc64, sorry, no forth chaining is
implemented yet.
So, you basically should use
boot disk0
to boot Solaris and
boot disk1
to boot SILO (and probably Linux).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
