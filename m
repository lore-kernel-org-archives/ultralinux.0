From: Flavio Pescuma <Flavio.Pescuma2@edt.ericsson.se>
Date: Wed, 24 Feb 1999 20:18:13 +0000
Subject: Multi Happy Meal Ethernet problem
Message-Id: <marc-linux-ultrasparc-92255674631513@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Hi,


This is the way I want to connect my Ultra 30



192.168.1.0    ______________________________
                                                |
                                                | eth0
                                        Ultra
30-----eth2--------------------!----------------! 192.168.3.1
                                                | eth1
                                                |
192.168.2.1  ---------------------------

Each card is connected to a different network.  The Kernel recognizes
all cards connected,  I've configured route for each network, but
neither eth1 nor eth2 receive any traffic.  I've also tried to set eth0
down eth1 down and configure eth2 alone to eth0 old network
(192.168.1.0) and try to reach the same hosts that I could reach with
etho, but didn=B4t work.  It looks like even though eth1 and 2 are seeing
by the driver, this cant receive or forward packets through them.

Thanks for your suggestions,

Flavio
