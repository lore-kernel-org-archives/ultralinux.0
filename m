From: John Gilmore <gnu@toad.com>
Date: Sat, 08 Aug 1998 03:58:56 +0000
Subject: UP 1.0.9 install on SS-Voyager: watchdog on disk access + misc notes
Message-Id: <marc-linux-ultrasparc-90256954104647@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I got a spare evening to try out UltraPenguin on my SPARC Voyager
(Sun4M with LCD screen, silent - no fan).  48MB, two SCSI disks.

Major problem was that it gets a watchdog reset while writing to the
disk.  This happened most often when making the file system, but in
one try I got past that and it had started retrieving and installing
RPM's.  It did three or four, then watchdogged.

Using a patched version of the last RedHat SPARC Linux, I had the same
watchdog problem during installation, and still have the problem
during operation.  I solve it by not writing to the disk very much.  I
got past it on initial installation, and get past it when I need to do
serious disk writing, by running a script in another window that does:
while sleep 1; do sync; done.  This seems to result in only small
amounts of data being written in each second, which avoids triggering
the watchdog bug.  I was unable to do this during today's
installation, because I can't find a version of "sync" that will run
under this kernel.  (Update just as I send this: I've pulled down the
UP RPM for fileutils and extracted the UP bin/sync command onto my
existing RedHat disk.  After I send this, I'll try running that during
the install.)

Here are the registers from a watchdog.  This was running the 
2.1.99 kernel in the UltraPenguin tftpboot image from:  
http://sunsite.mff.cuni.cz/ftp/OS/Linux/Non-x86/Sparc/local/ultrapenguin-devel/sparc64/images/tftpboot.img

.registers
G0-7: 0 F0156AA4 FFFA9E96 4001FE4 F001F8D8 F17 FB424000 FA9E9600
PC F0013F60 NPC F0013F64 Y A8000000 PSR 4001FE1 WIM 2 TBR F0004090
.locals
In: FFFF5C55 4008 F0157C00 40000 F014B800 1 FA0003E8 F0012B64
LOC: 4001FC1 F002B000 F002B004 100 2 FA000358 F00132A0 40002
OUT: FA000398 0 2 40000 F014B800 1 FA000358 F00132D0

A few other comments on the install process:

*  TILO sits there for 9 seconds, doing nothing apparently, before
   the kernel starts.  Then a message flashes by about finding CPU 0,
   the console switches into kernel characters, and things start
   happening.

*  The "Configure TCP/IP" box has a button to configure with BOOTP.
   This button doesn't actually work.  It produces "SIOCIFNETMASK:
   Cannot assign requested address", whether run on a network with a
   BOOTP server, or on an empty network.  In the debugging window, it
   shows that it was trying to configure the machine for:
	IP address 0, Netmask 0, NW 0, BC 255.255.255.255

*  If instead of using BOOTP, you type the addresses manually,
   you had better get the gateway right the first time.  If you
   get it wrong (the default is wrong on my net), then when you
   get back to this box and enter the right one, it merely adds
   a second default route to the routing tables, rather than removing
   any previous one.  The second route is never seen, since the
   first one handles all packets.  I noticed that it didn't work,
   and found the problem by catting /proc/net/route.

*  The installation system can't run RedHat SPARC Linux binaries.
   If I mount an existing RedHat (32-bit SPARC Linux) disk and try to
   run a dynamically linked program, say "sync", the shell says "sync:
   not found".  I tried copying libc.so.5* from the existing system
   into /lib, but the ramdisk doesn't have enough room to hold it.  I
   don't know if this is actually the problem, since the error message
   is so bad.

*  This installation package gets numerous small errors relating to
   "gtk" and "gtk-devel", on lines 131, 228, 298, 361, 422, 490, 571,
   983, 1153, and 1165 of the comps file.  Hitting OK seems to work.

*  When selecting "all packages" to install, I get a complaint about
   other packages being required by some of my packages.  It complains
   about imlib and usermode.  Hitting OK seems to work.

*  This release is from May -- is there a newer one I should be testing?

Thanks to the whole team for making these releases.  I'm not unhappy,
I know it's a beta, that's why I'm testing it for you...

	John
