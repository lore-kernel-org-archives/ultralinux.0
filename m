From: Jan Rychter <jwr@icm.edu.pl>
Date: Fri, 03 Jul 1998 12:13:46 +0000
Subject: weird messages from 2.1.99, ultrapenguin-1.0.9
Message-Id: <marc-linux-ultrasparc-90222358530992@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

[14:07] sonata:/stuff#/usr/sbin/named
get interface configuration: Cannot allocate memory
Abort

(trying another time I succeeded)

[14:07] sonata:/stuff/#ifconfig
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:7168  Metric:1
          RX packets:186 errors:0 dropped:0 overruns:0 frame:0
          TX packets:186 errors:0 dropped:0 overruns:0 carrier:0
             collisions:0

eth0      Link encap:Ethernet  HWaddr 08:00:20:86:98:50
          inet addr:194.181.232.10  Bcast:194.181.232.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:115501 errors:0 dropped:0 overruns:0 frame:0
          TX packets:58801 errors:0 dropped:0 overruns:0 carrier:0
             collisions:0
          Interrupt:4 Base address:0x6400

whiteh: unknown interface.
[14:07] sonata:/stuff#

Any ideas ? 

As far as memory is concerned:

[14:07] sonata:/stuff#free
             total       used       free     shared    buffers     cached
Mem:         61864      43368      18496      21456      10944       8736
-/+ buffers/cache:      23688      38176
Swap:       122344       8104     114240
[14:09] sonata:/stuff#

[14:09] sonata:/stuff#uname -a
Linux sonata.chopin.edu.pl 2.1.99 #3 Tue Jun 30 16:49:49 CEST 1998 sparc64 unknown

thanks,
--J.
