From: "David S. Miller" <davem@redhat.com>
Date: Thu, 25 Jan 2001 17:36:50 +0000
Subject: Re: Linux Status for Sun Netra T1 200
Message-Id: <marc-linux-ultrasparc-98044434830433@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98044311126541@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98044311126541@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Michael Pruznick writes:
 >   UltraSparc IIi appears to be a 64-bit processor?  Does linux run as
 >   a 32 or 64 bit kernel?  Does the 64-bit kernel run both 32 and 64 bit
 >   apps?

64-bit kernel, 32-bit apps.  Experimental 64-bit libc and compiler can
be built for the adventurous, ask Jakub Jelinek (jakub@redhat.com) for
details.

 >   The FAQ has pointers to what appears to be Solaris based cross 
 >   development tools.  Are there any existing tools out there will
 >   run on my Redhat 6.2 host?

Basically take the source rpms from RedHat-6.2 Sparc for binutils
and egcs64, build them cross to sparc64-linux target with
"-DHOST_WIDE_INT=long\ long -DHOST_BITS_PER_WIDE_INTd" in
CFLAGS when configuring the egcs64 tree.

 >   How do I boot my linux kernel?  Will the f/w let me do a dhcp/tftp
 >   (or similar) to download my kernel from my x86 host which will also
 >   be the root nfs host for development?

The firmware allows BOOTP _iff_ the device you choose has firmware
support for netbooting.  So for example, the onboard HME ethernet
found on most UltraSparc systems will work, but an off-the-shelf
Tulip based card will not (even though Linux on UltraSparc supports
the Tulip just fine).

 >   What is the pci bridge/memory controller chipset?  Is it fully
 >   initialized by f/w?  What is the memory map?

UltraSparc-II based PCI systems have a Sun PCI controller
called Psycho.

UltraSparc-IIi chips have integrated Sun PCI controller called
Sabre, briding from the host to two Sun PCI-PCI bridges called
Simba.

UltraSparc-III based PCI systems have a Sun PCI controller
called Schizo.

The memory map on 32-bit PCI busses is roughly half to PCI
space and half to IOMMU translated main memory.  There are
PDF files on Sun's web site documenting both Psycho and Sabre
fully, start at:

http://www.sun.com/microelectronics

Click on documentation, then manuals, then look for UltraSparc-IIi
and "UPA to PCI controller" for the manuals of interest.

 >   For deployment, stand alone boot will be required.  Will the f/w let
 >   me boot from a local scsi disk?  What about user flash?  Will f/w let
 >   me store/boot an initrd kernel image from a flash device?

Local scsi disk will work just fine.

What do you mean by "user flash"?  There is no place to burn a flash
outside of the OBP firmware image itself.

 >   What type of bus is the PCI slot?  33 or 66 MHz?  32 or 64 bits?
 >   Any special list of cards that do or do not work with Sparc?  Does the
 >   f/w do the bus walk, assign bars and INTLINE properly?  If not, does
 >   linux already do this on Sparc?

See manuals listed above about the configuration of the bus speeds and
widths on UltraSparc controllers.

Any card enabled in the RedHat-6.2 sparc64 kernel can be expected to
work, and work well.

 >   What is the serial uart chip?  One of these is the console.  Is the
 >   other available for kgdb or is part of the remote control?  Are the
 >   ports DB-9 or do I need to make sure I order a special cable?

On UltraSparc PCI bus systems, the serial uart is a Siemans 82532.
On SBUS based systems they are Zilog 8530's.

The second serial line is available as a normal serial port.

KGDB does not exist on the sparc64 kernel, it was never needed.

Whether it is DB-9 depends on the system, ummm... like just look
at the back panel when you get the machine dude :-)

 >   What is the ethernet chipset?  Any important features of the chipset
 >   that are or are not support on UltraLinux?  What kind of numbers should
 >   I expect to get with netperf or ttcp(?)?

The chipset is Sun Happy Meal Ethernet.  There is a full manual at
the Sun web site I listed above.  As of today, all features of the
Sun HME chip are supported.  I can completely fill the 100baseT
pipe over TCP with SunHME and even just a measely 170Mhz
UltraSparc, don't worry about performance :-)  Last I checked, bw_tcp
from LMbench was giving me 11.7MB/sec

 >   What is the SCSI chipset and support?  Is scsi the only disk/cd
 >   interface or is there an IDE interface?

Again, depends on the exact machine.  Most SBUS systems have onboard
ESP, fully supported by Linux.  Most PCI systems have onboard use
Symbios scsi adapters, again fully supported by Linus.

There are IDE interfaces on Ultra5, Ultra10, and the UltraAX* line
from the microelectronics division.

 >   What is the USB controller?  Is Sparc USB support the same as x86
 >   or different?  Does the 2.2.14/16??? USB patch enable work on Sparc
 >   as it does on x86?

There is no USB controller until UltraSparc-III systems for which
support is "in progress".  Sun uses their own USB controller in
these systems, but since it is "OHCI Compliant" it should take
minimal work to get it working once the UltraSparc-III port is up
and running.

 >   Are the alarm, status led, and remote control interfaces fully
 >   supported?

We support none of these features of the Netra machines...

 >   For anything that is not supported, especially alarm, led, remote,
 >   is the reason just because someone doesn't have the need/time or is
 >   it because the doc is not available from Sun?

Nobody has the docs + hw access to write the driver.

 >   Is the NEBS/3 certification a h/w ruggedness only, or does it require
 >   s/w to do anything?  That is, does running Linux on the box cause it
 >   to loose its NEBS/3 certification?

I have no idea wtf NEBS/3 certification even is... sorry.
As a result, almost certainly running Linux causes you to
lose the certification as I would know if Sun had certified
some Linux+Netra combination like this ;-)

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
