From: Sven Grundmann <grundema@uni-duesseldorf.de>
Date: Thu, 16 Jul 1998 13:12:05 +0000
Subject: Re: VIS
Message-Id: <marc-linux-ultrasparc-90222358531049@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



David S. Miller wrote:

> If the distributed.net people would provide source code to their
> clients, we could help you.  But they don't, so on top of not being to
> help you, I cannot endorse even running their binaries.
>
> Their VIS rc5 code was done by hand in assembly, no C compiler can
> properly take full advantage of the VIS instruction set although the
> latest EGCS releases will output VIS instructions for a limited number
> of operations if configured properly.
>
> Later,
> David S. Miller
> davem@dm.cobaltmicro.com

  Ok I understand that you can't help me with that rc5des client. But i
downloaded the VIS SDK for usage of VIS
in my own computations and read in the documentaion that  i need  a sun
compiler version 4 or higher ! They
have an inline expansion file in their SDK ( vis.il ) .
I am not sure if i can use that with gcc ( cause i don't have that cc 4.x
) and i never used Assembler on a sun.

It looks like that :

! Copyright (C) 1995, 1997, Sun Microsystems, Inc.

! @(#)vis.il    1.4     97/03/30 SMI

! The interface to the VIS instructions as declared below (and in the VIS
! User's Guide) will not change, but the macro implementation might change

! in the future.

!
! Pure edge handling instructions
!
! int vis_edge8(void */*frs1*/, void */*frs2*/);
!
        .inline vis_edge8,2
        edge8   %o0,%o1,%o0
        .end
!
! int vis_edge8l(void */*frs1*/, void */*frs2*/);
!
        .inline vis_edge8l,2
        edge8l  %o0,%o1,%o0
        .end

.......
And so on .

Sven Grundmann
