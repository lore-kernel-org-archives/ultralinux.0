From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Wed, 20 May 1998 18:32:57 +0000
Subject: Support for 10/100 ethernet with wide scsi connector
Message-Id: <marc-linux-ultrasparc-90222356531059@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


hi i have an 10/100utp and wide scsi controller (only extr. scsi)

and the ethernet works ok

but now i need scsi

i think it's this card :


                     Sun FastEthernet 2.0 and SunSwift Adapter
                     Highlights 

                     SunFastEthernetTM Adapter

                         Features 
                         Performance 
                         Standard Interfaces 
                         Requirements 
                         Regulations 
                         Dimensions 

                     SunSwiftTM Adapter

                         Features 
                         Performance 
                         Standard Interfaces 
                         Requirements 
                         Regulations 
                         Dimensions 

                     SunFastEthernetTM Adapter

                     SunFastEthernet adapter is a single-wide network
interface card that offers
                     10Mbps or 100Mbps network bandwidth over a variety of
wiring types (e.g.,
                     category 3, 4, 5 unshielded twisted pair (UTP) and
Fiber optic cables) via
                     either the on-board RJ45 or MI I (Media Independent
Interface) connectors. 

                     Features

                         10Mbps or 100Mbps Ethernet operation 
                         Features both a RJ45 and a MII connector 
                         10Mbps supported over 2-pair Category 3 or better
UTP wiring via
                         the RJ 45 connector 
                         100Mbps supported over 2-pair Category 5 UTP
wiring via the RJ 45
                         connector 
                         10Mbps or 100Mbps operation over 4-pair Category
3,4,5 UTP or
                         Fiber via the MII connector (external transceiver
required) 
                         Conforms with IEEE 802.3u 100BASE-T standard 
                         Auto-negotiation between 10Mbps or 100Mbps 

                     Performance

                         SBus Clock: 16.67MHz to 25 MHz 
                         Transfer size: 32 bit and 64 bit 
                         Burst Sizes: 16/32/64 bytes 
                         SBus version: Conforms to IEEE 1496

                     Standard Interfaces

                         Ethernet: 10/100 Mbps category 5 UTP via the RJ45
connector. Other
                         wiring types supported via external transceiver
connected through the
                         MII connector 

                     Requirements

                         Solaris 1.1.2 or Solaris 2.4 or later releases

                     Regulations 

                         Meets or exceed the following requirements: FCC
Class B, VCCI-2

                     Dimensions

                         Length: 147.70mm (5.78 in.) 
                         Width: 83.82 mm (3.30 in.) 
                         Weight: 158 g (5.52 oz.) 



                     SunSwiftTM Adapter

                     SunSwift adapter is industry's first single-wide
network interface card that
                     offers 10Mbps and 100Mbps Ethernet connection and
fast/wide SCSI-2
                     interface.

                     Features

                         10Mbps or 100Mbps Ethernet operation 
                         20MBps Single-ended fast/wide SCSI-2 connection 
                         RJ45 connector for 10/100 Mbps Ethernet and
68-pin connector for
                         fast/wide SCSI-2 
                         10Mbps supported over 2-pair Category 3 or better
UTP wiring via
                         the RJ 45 connector 
                         100Mbps supported over 2-pair Category 5 UTP
wiring via the RJ 45
                         connector 
                         Auto-negotiation between 10Mbps or 100Mbps 
                         Interoperates with Fast Ethernet hub/switch
products that conforms
                         with the 100BASE-TX standard 
                         Conforms with IEEE 802.3 100BASE-TX standard 
                         Conforms with ANSI X3T9.2 SCSI-2 standard 

(http://www.sun.com/products-n-solutions/hw/networking/sunfastethernet/h-FastE.shtml
or :
http://www.sun.com/products-n-solutions/hw/networking/sunpci/sunpciswift.shtml


is this supported ? (i saw a qlogic chip on it)
but doing insmod qlogic or modprobe qlogic does not work

it's an pci card in a sun ultra sparc 10

and if this is not gonna work 

can i buy a standard ncr 875 scsi wide controller pci  ?
