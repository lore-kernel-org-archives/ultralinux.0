From: Scott Michel <scottm@aero.org>
Date: Wed, 22 Dec 1999 19:22:29 +0000
Subject: 2.2.13 kernel compilation
Message-Id: <marc-linux-ultrasparc-94589915901507@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm not sure if anyone else has seen this or not, but when I
attempt to compile the arch/sparc64/kernel/ioctl32.c source,
a lot a preprocessor symbols are undefined. I've grepped the
include files and the entire source tree to no avail.

In particular, I tried looking for RAID_VERSION and the closest
I got was MEGARAID_VERSION (which doesn't look like a proper
ioctl).

Positive cluon flux density welcomed.


-scooter
