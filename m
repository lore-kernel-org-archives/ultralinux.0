From: Fausto Saporito <qeifasa@armonia.tei.ericsson.se>
Date: Tue, 12 Jan 1999 09:36:33 +0000
Subject: bpp error in 2.2.0pre5-sparc64
Message-Id: <marc-linux-ultrasparc-91614536422254@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

i downloaded the latest version of 2.2.0 from ultrapenguin site, but I
have a problem with bpp.
When I try to compile the driver I have:

bpp.c: In function `wait_for':
bpp.c:340: parse error before `extime'
bpp.c: At top level:
bpp.c:855: warning: initialization from incompatible pointer type
bpp.c:856: warning: initialization from incompatible pointer type
bpp.c:863: warning: initialization from incompatible pointer type
bpp.c: In function `map_bpp':
bpp.c:957: warning: format argument is not a pointer (arg 4)

bye,
Fausto
