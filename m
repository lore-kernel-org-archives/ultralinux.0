From: Edwin Kremer <edwin@cs.uu.nl>
Date: Thu, 12 Nov 1998 12:32:17 +0000
Subject: no go on Ultra 10 ?
Message-Id: <marc-linux-ultrasparc-91088532111774@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

I'm trying to boot the 'tftpboot.img' file on a Sun Ultra 10 Creator3D
(the simple one, no Elite's). After loading the images:

	29ba00 TILO

	root child is f002ca28

appears and there's a blinking mouse pointer in the upper left corner
of the screen. That's where it stops...

Any hints? `sysinfo' output (from Solaris 2.6) appears below:


SUNW,Ultra-5_10 is a "SUNW,375-0009"
    openprom is a "Open Boot PROM" device
    options is a "PROM Settings"
    aliases is a "PROM Device Aliases"
    pci0 is a "PCI Bus" system bus
        pci108e,50000 is a "Simba PCI" system bus
            ebus0 is a "OnBoard E Bus"
                auxio is a "Auxiliary I/O"
                se0 is a Siemens 82532 ESCC serial device
                su0 is a Serial U communications chip serial device
                    kbd is a "Sun Type-5 US PC" Keyboard
                su1 is a Serial U communications chip serial device
                ecpp is a "IEEE 1284 ECP, Nibble, and Centronics compatible" parallel port
                fd0 is a Floppy Three disk drive
                eeprom is a "EEPROM" device
                flashprom is a "Flash PROM"
                audiocs0 is a "Crystal Semiconductor 4231" audio device
            hme0 is a "Sun Fast Ethernet" 10/100 Mb/sec Ethernet network interface
            m640 is a "PGX PCI 8-bit [m64]" frame buffer
                monitor0 is a video monitor
            pci1095,6460 is a "PCI 1095 646" IDE disk controller
                c0t0d0 (dad0) is a "Seagate Medalist 34342A" 4.0 GB disk drive
                atapicd2 is a ATA CD-ROM drive
        pci108e,50001 is a "Simba PCI" system bus
    ffb0 is a "Creator3D 24-bit UPA Color Graphics" frame buffer
    cpu0 is a "299 MHz SUNW,UltraSPARC-IIi" CPU


Best regards,

-- 
Edwin H. Kremer, systems- and network administrator.          <edwin@cs.uu.nl>
Dept. of Computer Science,  Utrecht University, The Netherlands  [WHOIS: ehk3]
-------------------- http://www.cs.uu.nl/people/edwin/ -----------------------
