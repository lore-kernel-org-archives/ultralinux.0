From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Fri, 03 Jul 1998 12:18:38 +0000
Subject: Re: weird messages from 2.1.99, ultrapenguin-1.0.9
Message-Id: <marc-linux-ultrasparc-90222358530993@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358530992@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358530992@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jan Rychter <jwr@icm.edu.pl>
   Date: 	03 Jul 1998 14:13:46 +0200

   [14:07] sonata:/stuff#/usr/sbin/named
   get interface configuration: Cannot allocate memory
   Abort

   (trying another time I succeeded)

Run it under strace during a failure case and send us the output.

   [14:07] sonata:/stuff/#ifconfig

 ...

   whiteh: unknown interface.
   [14:07] sonata:/stuff#

Harmless message.  The virtual whitehole networking interface is
available when you config the kernel with various options set, and
this ifconfig has no idea what it is.

Later,
David S. Miller
davem@dm.cobaltmicro.com
