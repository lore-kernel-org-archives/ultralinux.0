From: Craig Metz <cmetz@inner.net>
Date: Thu, 25 Jun 1998 16:55:55 +0000
Subject: Serial console?
Message-Id: <marc-linux-ultrasparc-90222357631028@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


  I went to install Ultrapenguin 1.0.9 on one of our spare Ultra Enterprise
450s. I hooked up a serial terminal, did a network boot, and the kernel came
up but everything stopped after "VFS: Mounted root filesystem (ext2)". On a
hunch, I installed a spare Creator 3D in the box, and it worked fine.

  It appears that Ultrapenguin's boot kernel built without serial console
support. Is it possible to add that to the distributed kernel, and is that
useful for installing (can the install be made to work over such a terminal,
or is it a lost cause)? If not, can this be added to the documentation as a
caveat?

									-Craig
