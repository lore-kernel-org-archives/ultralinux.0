From: Matthew Wilcox <willy@debian.org>
Date: Fri, 30 May 2003 16:38:17 +0000
Subject: drivers/scsi/Kconfig
Message-Id: <marc-linux-ultrasparc-105431270727833@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello architecture maintainers who weren't using drivers/scsi/Kconfig.
This patch which is 70k+ and too big to post deletes over a thousand lines
of code (ok, mainly duplicated helptext):

 arch/m68k/Kconfig    |  412 ---------------------------------
 arch/sparc/Kconfig   |  225 ------------------
 arch/sparc64/Kconfig |  635 ---------------------------------------------------
 drivers/scsi/Kconfig |  261 ++++++++++++--------
 4 files changed, 159 insertions(+), 1374 deletions(-)

http://ftp.linux.org.uk/pub/linux/willy/patches/scsi-kconfig.diff

-- 
"It's not Hollywood.  War is real, war is primarily not about defeat or
victory, it is about death.  I've seen thousands and thousands of dead bodies.
Do you think I want to have an academic debate on this subject?" -- Robert Fisk
