From: "David S. Miller" <davem@redhat.com>
Date: Mon, 18 Oct 1999 05:53:37 +0000
Subject: Re: SBus in 2.3
Message-Id: <marc-linux-ultrasparc-94022629814353@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-94021308306451@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-94021308306451@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Pete Zaitcev <zaitcev@metabyte.com>
   Date:   Sun, 17 Oct 1999 19:17:49 -0700 (PDT)

   [root@iolab130 /root]# ifconfig eth0 up  
   IRQ: Trying to share non-PCI bucket.
   Lance: Can't get irq 5,7e1
   SIOCSIFFLAGS: Resource temporarily unavailable

   Hmm... I would track it down myself but I do not have good
   access to sparc64's. Any ideas?

Two SBUS devices have the same INO irq number in their sbus_dev
state structure, or the Lance driver is registering it twice.

It's extremely hard to screw this up, if you made the new
code behave identically in drivers/sbus/sbus.c for the sparc64
IRQ probing cases.

Later,
David S. Miller
davem@redhat.com
