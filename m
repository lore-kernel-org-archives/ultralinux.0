From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Mon, 15 Mar 1999 12:37:29 +0000
Subject: Pb. compiling amd (am-utils-6.0a16-4.src.rpm)
Message-Id: <marc-linux-ultrasparc-92150187210273@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

Did anyone managed to compile amd from am-utils-6.0a16-4.src.rpm?  Is
there something particular to do at config time except, certainly, to
tell rpm and configure it is for a sparc (and not sparc64)?

For those who may find interest in the problem (I may have missed
something once more :(), a dump of `rpm -bc --buildarch sparc
am-utils.spec' can be found at
http://www.irisa.fr/caps/PEOPLE/ThierryL/amdump.txt

Any hint appreciated,

Thierry Lafage.
