From: Eric Bautsch <eric.bautsch@pobox.com>
Date: Fri, 20 Nov 1998 14:13:40 +0000
Subject: hme on E4000
Message-Id: <marc-linux-ultrasparc-91163585212502@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi Ultralinux!

Hope this goes to the right address...

I tried to install UltraPenguin-1.1 on a 2.5GB Mem, 8CPU E4000 with 2 I/O
Boards via the net (own NFS server). The install procedure found the hme
interface but had serious problems keeping it up and running. The interface
would only come online (I checked with pings) for a couple of seconds at a
time but was mostly offline. Installation failed (how far I got in the 
installation process was different each time I tried).

Installation on a SS1000 worked perfectly by the way (well, apart from the
swap and 1GB thing... but got that sorted).

I was also wondering whether it had anything to do with the fact that there
are two I/O boards (i.e. two hme interfaces) in the machine?

Can you give me a hint?

Ciao,
Eric

      ____
     /          .                           Eric A. Bautsch
    /--   __       ___                ______________________________________
   /     /    /   /                  /
  (_____/____(___(__________________/       email: eric.bautsch@pobox.com
