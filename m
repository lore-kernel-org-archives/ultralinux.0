From: Joshua Uziel <uzi@uzix.org>
Date: Tue, 26 Sep 2000 07:18:15 +0000
Subject: Re: Couldn't find sparc64-linux-gcc
Message-Id: <marc-linux-ultrasparc-96995258309185@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96995143407396@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96995143407396@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

* YAMAMOTO Taku <yamataku@layer-seven.com> [000925 23:59]:
> I'm experiencing difficulties that can't compile
> using kernel-source-2.2.16-3.sparc.rpm on RH6.2sparc.
> 
> /bin/bash: sparc64-linux-gcc: command not found

Very simple ... install the "egcs64" package, which is
egcs64-19980921-4.sparc.rpm for RH 6.2 ... this contains the 64-bit
compiler necesary for compiling the sparc64 kernel.

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
