From: Peter Jones <pjones@redhat.com>
Date: Thu, 15 Apr 1999 17:52:08 +0000
Subject: Compile warning...
Message-Id: <marc-linux-ultrasparc-92419958220068@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

When I try to build the current CVS tree, I get a error like 

gargleblaster:/usr/src/linux$ make
sed: -e expression #1, char 37: Unknown option to 's'
rm -f include/asm

It seems to be coming from arch/sparc64/Makefile line 23 , 

MAKEOVERRIDES   := $(shell echo "$(MAKEOVERRIDES)" | sed 's CC=$(CC)
CC=$(CC)\\\ -D__KERNEL__\\\ -I$(TOPDIR)/include ')

Which looks like its not pertenant to anything else, at all, anywhere (I
just grepped the whole source tree for MAKEOVERRIDES ;)

Can we just take this out?

Here's the patch, because I know I'm lazy and I'll assume the rest of the
world is too...

--- arch/sparc64/Makefile.old   Thu Apr 15 13:51:13 1999
+++ arch/sparc64/Makefile       Thu Apr 15 13:51:25 1999
@@ -20,7 +20,6 @@
 
 ifneq ($(CC_HAS_ARGS),y)
 TMP = $(shell echo sed \'s CC=$(CC) CC=$(CC)\\\ -D__KERNEL__\\\
-I$(TOPDIR)/include \') > /tmp/overrides)
-MAKEOVERRIDES  := $(shell echo "$(MAKEOVERRIDES)" | sed 's CC=$(CC)
CC=$(CC)\\\ -D__KERNEL__\\\ -I$(TOPDIR)/include ')
 override CC    := $(CC) -D__KERNEL__ -I$(TOPDIR)/include
 endif

 -- Peter

"Good night, Mrs. Calabash, wherever you are."
		-- Armstrong
