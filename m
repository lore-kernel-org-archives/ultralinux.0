From: "David S. Miller" <davem@redhat.com>
Date: Tue, 05 Oct 1999 05:51:42 +0000
Subject: Re: de4x5 module problems?
Message-Id: <marc-linux-ultrasparc-93910250808952@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: "nick" <nickc@cardsoft.com>
   Date:   Tue, 5 Oct 1999 15:52:48 +1000

   What is the cause of this message? There is a DEC card in the PCI bus, but
   any attempt to initialise it causes this:

   /lib/modules/2.2.5-15/net/de4x5.o: init_module: Device or resource busy

This means the driver does not support the Tulip you are using.

Later,
David S. Miller
davem@redhat.com
