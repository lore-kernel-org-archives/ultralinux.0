From: "David S. Miller" <davem@redhat.com>
Date: Tue, 28 Sep 1999 11:23:24 +0000
Subject: Re: 2.2.13pre8 on Ultra still crashing
Message-Id: <marc-linux-ultrasparc-93851788902556@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93790194403208@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93790194403208@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date:   Tue, 21 Sep 1999 10:24:06 +0200 (CEST)
   From: <pau@readysoft.es>

   I attach a new log -ksymoops- caught through the serial console, of
   an Ultra Axi PCI machine hanging.

   I don't know if it'll be enough or if I miss something; if that's
   the case, could you please tell me how to setup syslogd to log
   these messages to the console?

Ok, I've been staring at these messages for quite some time.
I'm stumped for the moment, it's always dieing in fput() with
a completely corrupted stack (it's been totally zero'd)

What do you run on this machine?  Lots of POP and other mail daemons?
Any weird networking things enabled such as IP Masquerading or
appletalk, things like this?

Finally, what does your syslogd.conf look like?

Later,
David S. Miller
davem@redhat.com
