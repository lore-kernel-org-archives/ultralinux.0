From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 01 Sep 1998 21:49:58 +0000
Subject: new binutils rpms
Message-Id: <marc-linux-ultrasparc-90469253526469@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

HI!

New binutils 2.9.1.0.10-4 are available from UltraPenguin 1.0.9.
Highlights of the release:
in addition to dual arch support (sparc-ultrapenguin-linux and
sparc64-ultrapenguin-linux) it finally allows to assemble/disassemble a
couple of v9a instructions which were broken before, such as
edge8, edge8l
edge16, edge16l
fcmpgt8 ..., fcmpgt16 ...
fb*,a,pn %fcc3,X

Available from ftp://ultra.linux.cz/OS/Linux/Sparc/ultrapenguin-1.0.9/
and mirrors.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.119 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
