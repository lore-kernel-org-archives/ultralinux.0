From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Fri, 12 Mar 1999 13:35:53 +0000
Subject: Mount version used by amd
Message-Id: <marc-linux-ultrasparc-92124614309195@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

I just upgraded the ultrapenguin distribution from up-1.1 to up-1.1.9
on my ultrasparc-I box and it works quite well (except some changes in
some modules). Very nice work.

The problem is that I use amd (am-utils-6.0a16-4.sparc.rpm) to mount
nfs volumes, and the mount "version" of amd seems not to be up to
date. I get numerous console messages telling:

nfs warning: mount version older than kernel

Has anybody experienced the same warnings and solved the problem, for
example, recompiling the package?


Thierry Lafage.

--
CAPS project -- IRISA/INRIA, Rennes, France
