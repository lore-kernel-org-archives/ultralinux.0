From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sun, 20 Sep 1998 15:50:55 +0000
Subject: lib5 compat question
Message-Id: <marc-linux-ultrasparc-90631031919991@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

am i correct in believing that in order to use an X application from my
RedHat 4.2 system (dynamically linked against X libs) I need to copy those
into the sparc-libc5 lib directory, which is to say, I can't just use
libc.so.5, libm.so.5, and newer libraries whose API has not changed?

(and if this is the case, i'm guessing it's because ld-linux.so.1 and
ld-linux.so.2 don't play nicely?)

-D
