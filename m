From: Jan Rychter <jwr@icm.edu.pl>
Date: Wed, 03 Jun 1998 15:22:16 +0000
Subject: UltraPenguin-1.0.9: named doesn't work
Message-Id: <marc-linux-ultrasparc-90222357630984@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Well, to be exact it does work somewhat. It serves UDP queries just
fine, but does not permit zone transfers.

The logs show messages like:
Jun  3 04:59:07 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 04:59:07 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:09:16 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:09:16 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:19:24 sonata named[918]: rcvd IP_OPTIONS from [148.81.209.1].24653 (ignored)
Jun  3 05:19:24 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:19:24 sonata named[918]: approved AXFR from [148.81.209.1].24653 for "232.181.194.in-addr.arpa"
Jun  3 05:29:31 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:39:37 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:49:44 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 05:59:51 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument
Jun  3 06:09:59 sonata named[918]: getsockopt(rfd, IP_OPTIONS): Invalid argument

This is a:

[16:22] sonata:/root#uname -a
Linux sonata.chopin.edu.pl 2.1.99 #1 Sun May 17 15:48:43 CEST 1998 sparc64 unknown
[16:22] sonata:/root#

This is a problem that has been there for a long time it seems...
David, Jakub -- if you need accounts on the machine, let me know.

thanks,
--Jan
