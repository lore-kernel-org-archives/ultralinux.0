From: Pete Zaitcev <zaitcev@metabyte.com>
Date: Mon, 18 Oct 1999 02:17:49 +0000
Subject: SBus in 2.3
Message-Id: <marc-linux-ultrasparc-94021308306451@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Fellow 64 bit enabled hackers,

If I understand correctly, 2.3 is in use on sparc64 for some time.
Do you guys have any problems on Ultra-1/140?
I did regressions on sparc64 for my sparc putback today as it touches
some common files and there was some strage problem on U-1,
which looks like this:

[root@iolab130 /root]# ifconfig eth0 up  
IRQ: Trying to share non-PCI bucket.
Lance: Can't get irq 5,7e1
SIOCSIFFLAGS: Resource temporarily unavailable

Hmm... I would track it down myself but I do not have good
access to sparc64's. Any ideas?

--Pete
