From: Steve Dunham <dunham@cse.msu.edu>
Date: Fri, 23 Oct 1998 20:53:35 +0000
Subject: Re: sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-90918269428443@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90917418725059@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90917418725059@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Rich Sahlender <rsahlen@voicenet.com> writes:

> After a fresh install "Everything" from ultra.linux.cz on an
> Ultra 1 Creator I get:

> /bin/bash: sparc64-linux-gcc: command not found

> while trying to build a new kernel...

You have to add /usr/local/bin to your path first.  (IMHO, RPMs don't
belong in /usr/local, but I didn't make the packages...)


BTW, does anyone know the magic to build a 32 bit kernel on an Ultra
Sparc?  It would save me a bit of time, since the Ultra5 next to my
desk is a lot faster than the SS20.


Steve
dunham@cse.msu.edu
