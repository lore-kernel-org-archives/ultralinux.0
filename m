From: "Mark J. Steiglitz" <steig@DSG.Stanford.EDU>
Date: Mon, 25 May 1998 23:24:11 +0000
Subject: PCI I/O space conflict on Ultra 5 with multiple Znyx 346 ethernet interfaces
Message-Id: <marc-linux-ultrasparc-90222356531067@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have an Ultra 5 with two Znyx 346 4-port ethernet cards, in PCI slots 1 and
3.  Each card has a PCI-to-PCI bridge, thus making the rest of the card its own
PCI bus with 4 devices.

After booting UltraPenguin 1.0.9, I find that each interface card is assigned a
different IRQ and that each port on a given card is assigned a different I/O
base, but that the set of I/O base values for the four ports on one card are
identical to the I/O base assignments for the four ports on the other card.
This conflict prevents one of the cards from being configured properly when
loading the driver.

How can I assign distinct I/O base values to each port or cause the kernel to
do so?

The relevant entries from /proc/pci are as follows:

-------------------------------------------------------------------------------
  Bus  2, device   1, function  0:
    PCI bridge: DEC DC21152 (rev 2).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  No bursts.  
  Bus  3, device   4, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001000 [0xfffff9fe02001001].
      Non-prefetchable 32 bit memory at 0xfffff9ff00100000 [0xfffff9ff00100000].
  Bus  3, device   5, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001080 [0xfffff9fe02001081].
      Non-prefetchable 32 bit memory at 0xfffff9ff00102000 [0xfffff9ff00102000].
  Bus  3, device   6, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001400 [0xfffff9fe02001401].
      Non-prefetchable 32 bit memory at 0xfffff9ff00104000 [0xfffff9ff00104000].
  Bus  3, device   7, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001480 [0xfffff9fe02001481].
      Non-prefetchable 32 bit memory at 0xfffff9ff00106000 [0xfffff9ff00106000].
-------------------------------------------------------------------------------
  Bus  2, device   3, function  0:
    PCI bridge: DEC DC21152 (rev 2).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  No bursts.  
  Bus  4, device   4, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001000 [0xfffff9fe02001001].
      Non-prefetchable 32 bit memory at 0xfffff9ff00100000 [0xfffff9ff00100000].
  Bus  4, device   5, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001080 [0xfffff9fe02001081].
      Non-prefetchable 32 bit memory at 0xfffff9ff00102000 [0xfffff9ff00102000].
  Bus  4, device   6, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001400 [0xfffff9fe02001401].
      Non-prefetchable 32 bit memory at 0xfffff9ff00104000 [0xfffff9ff00104000].
  Bus  4, device   7, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001480 [0xfffff9fe02001481].
      Non-prefetchable 32 bit memory at 0xfffff9ff00106000 [0xfffff9ff00106000].
-------------------------------------------------------------------------------

The entire /proc/pci is as follows:

-------------------------------------------------------------------------------
PCI devices found:
  Bus  0, device   0, function  0:
    Host bridge: Sun Microsystems Ultra IIi PCI (rev 0).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  Latency$8. 
 
  Bus  0, device   1, function  0:
    PCI bridge: Sun Microsystems Advanced PCI Bridge (rev 17).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  Latency$8. 
 Min Gnt5.
  Bus  2, device   1, function  0:
    PCI bridge: DEC DC21152 (rev 2).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  No bursts.  
  Bus  3, device   4, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001000 [0xfffff9fe02001001].
      Non-prefetchable 32 bit memory at 0xfffff9ff00100000 [0xfffff9ff00100000].
  Bus  3, device   5, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001080 [0xfffff9fe02001081].
      Non-prefetchable 32 bit memory at 0xfffff9ff00102000 [0xfffff9ff00102000].
  Bus  3, device   6, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001400 [0xfffff9fe02001401].
      Non-prefetchable 32 bit memory at 0xfffff9ff00104000 [0xfffff9ff00104000].
  Bus  3, device   7, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 820017d0.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001480 [0xfffff9fe02001481].
      Non-prefetchable 32 bit memory at 0xfffff9ff00106000 [0xfffff9ff00106000].
  Bus  2, device   3, function  0:
    PCI bridge: DEC DC21152 (rev 2).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  No bursts.  
  Bus  4, device   4, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001000 [0xfffff9fe02001001].
      Non-prefetchable 32 bit memory at 0xfffff9ff00100000 [0xfffff9ff00100000].
  Bus  4, device   5, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001080 [0xfffff9fe02001081].
      Non-prefetchable 32 bit memory at 0xfffff9ff00102000 [0xfffff9ff00102000].
  Bus  4, device   6, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001400 [0xfffff9fe02001401].
      Non-prefetchable 32 bit memory at 0xfffff9ff00104000 [0xfffff9ff00104000].
  Bus  4, device   7, function  0:
    Ethernet controller: DEC DC21140 (rev 34).
      Medium devsel.  Fast back-to-back capable.  IRQ 830017d8.  Master Capable.
  No bursts.  Min Gnt .Max Lat@.
      I/O at 0xfffff9fe02001480 [0xfffff9fe02001481].
      Non-prefetchable 32 bit memory at 0xfffff9ff00106000 [0xfffff9ff00106000].
  Bus  0, device   1, function  1:
    PCI bridge: Sun Microsystems Advanced PCI Bridge (rev 17).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  Latency$8. 
 Min Gnt5.
  Bus  1, device   1, function  0:
    Bridge: Sun Microsystems PCI-EBus Bridge (rev 1).
      Medium devsel.  Fast back-to-back capable.  Master Capable.  No bursts.  M
in Gnt.Max Lat%.
      Non-prefetchable 32 bit memory at 0xfffff9fff0000000 [0xfffff9fff0000000].
      Non-prefetchable 32 bit memory at 0xfffff9fff1000000 [0xfffff9fff1000000].
  Bus  1, device   1, function  1:
    Ethernet controller: Sun Microsystems Happy Meal Ethernet (rev 1).
      Medium devsel.  Fast back-to-back capable.  IRQ c08007e1.  Master Capable.
  Latency$0.  Min Gnt.Max Lat=5.
      Non-prefetchable 32 bit memory at 0xfffff9ffe0000000 [0xfffff9ffe0000000].
  Bus  1, device   2, function  0:
    VGA compatible controller: ATI Mach64 GT (Rage II) (rev 154).
      Medium devsel.  Fast back-to-back capable.  IRQ 818007cf.  Master Capable.
  No bursts.  Min Gnt=8.
      Non-prefetchable 32 bit memory at 0xfffff9ffe1000000 [0xfffff9ffe1000000].
      I/O at 0xfffff9fe02c00100 [0xfffff9fe02c00101].
      Non-prefetchable 32 bit memory at 0xfffff9ffe0008000 [0xfffff9ffe0008000].
  Bus  1, device   3, function  0:
    IDE interface: CMD 646 (rev 3).
      Medium devsel.  Fast back-to-back capable.  IRQ c00007e0.  Master Capable.
  Latency$0.  Min Gnt=2.Max Lat=4.
      I/O at 0xfffff9fe02c00000 [0xfffff9fe02c00001].
      I/O at 0xfffff9fe02c00008 [0xfffff9fe02c00009].
      I/O at 0xfffff9fe02c00010 [0xfffff9fe02c00011].
      I/O at 0xfffff9fe02c00018 [0xfffff9fe02c00019].
      I/O at 0xfffff9fe02c00020 [0xfffff9fe02c00021].
-------------------------------------------------------------------------------

--Mark
