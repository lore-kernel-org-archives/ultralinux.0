From: Bjorn Christianson <bjorn@cascade.psychology.mcmaster.ca>
Date: Fri, 12 Jun 1998 17:10:48 +0000
Subject: Update on Ultrapenguin-1.0.9 install on IPX
Message-Id: <marc-linux-ultrasparc-90222357631016@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Thanks to the help of various people, my install is happily chunking
away as I type.

However, I couldn't get the current tftpboot.img to work -- I had to
use the tftpboot.img.old. Attempts to use the current image resulted
in the IPX downloading the entire image, and hanging at the end. I
would then get a "receive failed" message, and the boot process would
start, only to pause again at the ramdisk uncompression stage. Wait
long enough (~15 min) and get stacks of bad block reports.

The machine is an IPX with Weitek W8701 CPU, 32 MB RAM, PROM version
2.3. The boot server was an Intel machine running Linux 2.0.33, with
netkit-tftp-0.10. I tried the tftpboot.img from both ultra.linux.cz
and ftp.cobaltmicro.com (both size 2582793).

I'd be glad to help with any other questions.

Bjorn

----
bjorn@cascade.psychology.mcmaster.ca    http://lands.dyn.ml.org/bjorn
 "Remember, kids, don't drink and operate complex alien spacecraft."
                                      -- Jonathon Rosenberg, "Goats"
