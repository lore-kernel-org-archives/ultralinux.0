From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 27 Apr 1999 14:16:05 +0000
Subject: Re: Mach64 problems in UltraPenguin 1.1.9
Message-Id: <marc-linux-ultrasparc-92522264607830@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92522154306389@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92522154306389@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> While I'm mentioning this, I want to officially announce that we're
> stopping general maintenance of UltraPenguin.  It is just too much
> duplicated work for Jakub and myself to keep both RedHat and
> UltraPenguin working and up to date at the same time.

Heh, I wanted to announce that today too.
As most of the differences between RedHat 5.2 and UltraPenguin 1.1.9 have
been merged into RedHat 6.0 (at the moment I can think of tape installation
only which did not make it in, but maybe I forgot something), it really has
no sense to go for UltraPenguin 1.2. Use RedHat 6.0 instead.
Maybe we'll still use UltraPenguin in the future as a testbed for some SPARC
hacks, but at the moment consider it as a distribution with historical value
only.
I'll put in some README explaining this.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
