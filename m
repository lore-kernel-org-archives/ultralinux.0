From: Steve Dunham <dunham@cps.msu.edu>
Date: Thu, 11 Jun 1998 20:14:45 +0000
Subject: UltraPenguin 1.0.9 install problems (Ultra 2)
Message-Id: <marc-linux-ultrasparc-90222357631002@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


I just installed UltraPenguin 1.0.9 on an Ultra 2 and ran into a few
problems:

The first one is minor: 

  If you have no disk in the system, it will ask if you want to load a
  SCSI driver, present you with an empty list of drivers and segfault
  when you choose OK.

Second problem: 

  It installed the wrong kernel.  It installed the 32 bit kernel
  rather than the 64 bit one.  (It's a Symmetric Multi Penguin
  machine.)

(I used "rpm -q --queryformat '%{NAME} %{ARCH}\n' kernel" to verify
that the wrong package was installed.)

I tried to find some logic in the install program that selects the
kernel, but couldn't find any.  How does UltraPenguin decide?  I can
only assume it's leaving it up to RPM, and RPM is guessing
incorrectly.


Steve
dunham@cps.msu.edu
