From: Elliott Hughes <Elliott.Hughes@genedata.com>
Date: Fri, 12 Mar 1999 10:57:58 +0000
Subject: Re:  ultrapenguin-1.1.9 problems
Message-Id: <marc-linux-ultrasparc-92123655603714@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92123595303143@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92123595303143@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 1 During install it was not possible to create a boot floppy.

no, the floppy didn't work on my Ultra10 either.

> 2 silo.conf does not seem to be correct. I can only boot
>   linux, not solaris as i have entered during install.

what i found was that the boot record was written to the
wrong disc. i could boot both Linux and Solaris from silo,
but getting to silo required that i boot from the disc i hadn't
told the install program to put it on.

> 5 what is the status for sound ?

seems to be unimplemented. all the relevant ioctls fail for
me, and i can't write either. "Operation not supported by
device."

-- 
"Plan 9? Ah, yes: Plan 9 deals with the resurrection of the dead."
	http://plan9.bell-labs.com/plan9/
