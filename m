From: Derrick J Brashear <shadow@dementia.org>
Date: Fri, 13 Nov 1998 15:59:11 +0000
Subject: 2.1.126 "make xconfig" problem
Message-Id: <marc-linux-ultrasparc-91097605519007@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

So when I was configuring a new kernel for myself, when I got to the point
where I needed to select sparc 8x16 font, none of the choices were
selected, the line was *not* greyed out, but i could choose none of the
options. I had to go back and fix .config and autoconf.h.

I assume this is a bug, but the relevant Config.in looks perfectly
reasonable. 

Any suggestions for the right way to track this?

-D
