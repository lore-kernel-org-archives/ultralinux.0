From: Rainer Blaes <Rainer.Blaes@ri.dasa.de>
Date: Fri, 11 Dec 1998 13:14:45 +0000
Subject: Boot image for Ultra 5
Message-Id: <marc-linux-ultrasparc-91345798219879@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

we downloaded the 'boot.img'  image for Ultrapenguin 1.1 on an Ultra 5
and used
dd to copy it to a diskette i.e.

dd if=boot.img of=/dev/fd0 bs40 k

The boot prompt on Ultra told us after the 'boot floppy' command:

Bad magic number in disk label
Can't open disk label package
Evaluating: boot floppy
Can't open boot device

Any idea what's wrong here?

Many thanks in advance!

Rainer Blaes
DASA-RI Bremen (Germany)
