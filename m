From: Michael Pruznick <michael_pruznick@mvista.com>
Date: Thu, 25 Jan 2001 17:17:26 +0000
Subject: Linux Status for Sun Netra T1 200
Message-Id: <marc-linux-ultrasparc-98044311126541@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I've been doing Linux (x86/ppc) for some time now, but I'm new to both
the Sun product line and Linux on Sparc.

Is this list and www.ultrasparc.org the main place to be for latest
Linux on Sparc support?  If not, please point me to the correct place.

By searching the archives its pretty clear that Linux runs on at least
some versions of the Netra and Ultra Sparc IIi processor.

I don't have any Sun/Sparc boxes yet, but expect to be getting some soon.
I expect my first box to be a Sun Netra T1 200.  The Sun h/w page listed
the following features that are of interest to me.  I'm hoping someone
on this list could help me understand what chipsets are on the box for
these devices and what the status of linux support is.  I suspect that
some of the answers are in the Sun doc but my downloads keep stalling
about about 20-40%.

  UltraSparc IIi appears to be a 64-bit processor?  Does linux run as
  a 32 or 64 bit kernel?  Does the 64-bit kernel run both 32 and 64 bit
  apps?

  The FAQ has pointers to what appears to be Solaris based cross 
  development tools.  Are there any existing tools out there will
  run on my Redhat 6.2 host?

  How do I boot my linux kernel?  Will the f/w let me do a dhcp/tftp
  (or similar) to download my kernel from my x86 host which will also
  be the root nfs host for development?

  What is the pci bridge/memory controller chipset?  Is it fully
  initialized by f/w?  What is the memory map?

  For deployment, stand alone boot will be required.  Will the f/w let
  me boot from a local scsi disk?  What about user flash?  Will f/w let
  me store/boot an initrd kernel image from a flash device?

  What type of bus is the PCI slot?  33 or 66 MHz?  32 or 64 bits?
  Any special list of cards that do or do not work with Sparc?  Does the
  f/w do the bus walk, assign bars and INTLINE properly?  If not, does
  linux already do this on Sparc?

  What is the serial uart chip?  One of these is the console.  Is the
  other available for kgdb or is part of the remote control?  Are the
  ports DB-9 or do I need to make sure I order a special cable?

  What is the ethernet chipset?  Any important features of the chipset
  that are or are not support on UltraLinux?  What kind of numbers should
  I expect to get with netperf or ttcp(?)?

  What is the SCSI chipset and support?  Is scsi the only disk/cd
  interface or is there an IDE interface?

  What is the USB controller?  Is Sparc USB support the same as x86
  or different?  Does the 2.2.14/16??? USB patch enable work on Sparc
  as it does on x86?

  Are the alarm, status led, and remote control interfaces fully
  supported?

  For anything that is not supported, especially alarm, led, remote,
  is the reason just because someone doesn't have the need/time or is
  it because the doc is not available from Sun?

  Is the NEBS/3 certification a h/w ruggedness only, or does it require
  s/w to do anything?  That is, does running Linux on the box cause it
  to loose its NEBS/3 certification?

Thanks,
Michael

-- 
Michael Pruznick, michael_pruznick@mvista.com, www.mvista.com
MontaVista Software, 1237 East Arques Ave, Sunnyvale, CA 94085
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
