From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Sat, 04 Sep 1999 04:55:33 +0000
Subject: SUN StorEdge D1000
Message-Id: <marc-linux-ultrasparc-93642093308384@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi All,
I have a Sun Ultra Enterprise 2, Dual 300 MHz CPU's, 256 Meg ram, Turbo GX 
framebuffer, dual internal 9G drives and a second QLOGIC SCSI interface 
connected to a Sun StorEdge D1000 with 12 4G drives.  Ran fine under 
Solaris, but I hate solaris... Loaded UltraPenguin 1.9 and it locked up at 
the beginning of install on the SCSI bus probe.  Disconnected the D1000 and 
installed fine.  Downloaded Kernel source 2.2.12 and configured/compiled 
for my system, again boots fine until I turn on the D1000... probe-scsi-all 
finds the D1000 and all it's drives fine, but Linux's probe finds the 
drives, 0-5, 8-13 fine, when it get's to target 14 (D1000's first internal 
controller) it hangs... says timeout on SCSI bus reset.  Sometimes, the 
system can be halted and rebooted without the D1000, other times it takes a 
hard power off-on to get it back.  I'd really like to use the D1000 for my 
file server.
Anyone have any ideas on the cause/cure of this?
Thanks,
Dave

=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
