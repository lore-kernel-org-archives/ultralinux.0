From: Stephan van Hienen <ultra@a2000.nu>
Date: Sat, 28 Dec 2002 23:05:18 +0000
Subject: booting with kernel on floppy ?
Message-Id: <marc-linux-ultrasparc-104111670110718@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

A friend has an ultrasparc10
he upgraded his kernel with the wrong rpm package
(sparc32 instead of sparc64 package)
now it won't boot (rpm removed the old kernel)

is there an simple way to fix this ? (i can only find i386 rescue
floppy's)
(like pointing silo to /dev/floppy/kernel root=/dev/hda1 or something?)
instead of taking out the hardrive and put it in another machine to copy
a working kernel ?
