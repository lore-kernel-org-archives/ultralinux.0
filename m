From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Sat, 18 Sep 1999 00:44:54 +0000
Subject: RAID is now working...
Message-Id: <marc-linux-ultrasparc-93761559712738@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Not sure what happened, but I went thru and ran FDISK on every drive in the 
raid and re-wrote the partition table to each one... Rebooted and ran 
mkraid, now both groups work on different controllers...  Something must 
have gotten hosed in the partition table somehow, but it was only messed up 
on the new controller (Same exact type as the old controller... Qlogic PTI 
SBUS controller).
Just very odd...
Anyone know where I can get a firmware upgrade for the Qlogic SBUS cards 
that will flash them under Linux??? (or how to do it from the boot prompt 
on an Ultra II?????)
=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
