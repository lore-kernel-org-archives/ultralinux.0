From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Wed, 16 Sep 1998 13:06:35 +0000
Subject: Problems with kernel 2.1.121
Message-Id: <marc-linux-ultrasparc-90595114026392@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

hey
while doing make menuconfig i get this errors :

scripts/Menuconfig: line 1:  ???? Segmentation fault      parse_config
<arch/$ARCH/defconfig
	???? Exit 1

where ???? = number (differs al the time)
and i get this on all questions

it goes on, but i'm not sure this is ok :)

also menuconfig end normally
only gives me the errors

and then when compiled the kernel
i reboot

and then have an error with the network
eth0 is connected to a cable modem on 10mbit half duplex
and it gives ok connected at 10mbit
only connection timed out after some time (30seconds or something)

eth1 is connected at 100mbit full duplex to my other computer
and connects ok
and that network also runs ok

som1 has an idea what is wron here ???

cards are both sun  HAPPY MEAL (on the same hardware adress)

kernel 2.1.112 runs ok 
after  that been a while on vacation and so
so no time to compile kernel 2.1.113-2.1.120
