From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 29 Mar 1999 10:22:56 +0000
Subject: Re: Post 1.2 development
Message-Id: <marc-linux-ultrasparc-92270328305655@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92258097010860@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92258097010860@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Then, will we be able to support more than 2^16 users per machine,
> i.e. 2^32?

Yes, uid_t/gid_t are 32bit on sparc64.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.4 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
