From: Matthew Jacob <mjacob@feral.com>
Date: Sat, 04 Sep 1999 17:33:46 +0000
Subject: Re: SUN StorEdge D1000
Message-Id: <marc-linux-ultrasparc-93646589100310@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93642093308384@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93642093308384@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


>    Date:   Sat, 04 Sep 1999 01:04:52 -0400
>    From: "David A. Cooley" <n5xmt@bellsouth.net>
> 
>    Downloaded Kernel source 2.2.12 and configured/compiled for my
>    system, again boots fine until I turn on the
>    D1000... probe-scsi-all finds the D1000 and all it's drives fine,
>    but Linux's probe finds the drives, 0-5, 8-13 fine, when it get's
>    to target 14 (D1000's first internal controller) it hangs...
> 
> There's some messy bug with the Qlogic firmware we use in the
> driver, I never got my hands on an A1000/D1000 long enough to
> fully resolve this.  As a workaround you can change line 632
> in drivers/scsi/qlogicpti.c to read
> 
> 			qpti_host->max_id = 14;
> 
> Which will just make the driver not try to scsi probe the
> internal controller of these disk arrays.

The GEM chip has problems when you try and go to other luns. I believe
that 7.55 F/W corrected this problem.
