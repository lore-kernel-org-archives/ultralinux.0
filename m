From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 13 Jan 1999 18:56:28 +0000
Subject: Re: Ultra 1 Creator 1.1.9 Install Problem
Message-Id: <marc-linux-ultrasparc-91625904115637@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91624535007279@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91624535007279@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> The 1.1.9 install goes perfect up until the SILO part of the install takes
> place.  

What date is your tftpboot.img?
If it is older than Jan, 11th, or if md5sum does not match
bba2b12fa3cb788cd06d44cc6dd61005  tftpboot.img

then you should sync your mirror. If you have the above mentioned
tftpboot.img, then come back to me and I'll work on solving it.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.0-pre6 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
