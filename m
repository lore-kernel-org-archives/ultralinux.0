From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Wed, 04 Nov 1998 20:18:43 +0000
Subject: post-installation troubles
Message-Id: <marc-linux-ultrasparc-91021573302850@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On November 2nd I downloaded ultrapenguin-1.0.9 to attempt to install
on my Ultra 2 Creator 3D.  Here is how that installation went.

Linux booted over the network and appeared to install correctly.

After installation the computer rebooted and I typed "boot disk1",
since my first disk is for Solaris.  I got the SILO prompt.  I waited
and then the kernel loaded and booted.  The last thing printed to the
screen follows.

eth0: HAPPY MEAL (SBUS) 10/100baseT Ethernet 08:00:20:a0:aa:f7
eth0: Link is up using internal transceiver at 10 Mb/s, Half Duplex.

At this point it appears as though the computer is hung, however
that's not quite true.  I went to another computer on the network and
was able to ping it.  I then attempted to rlogin, which, to my
surprise, brought up a login prompt!  I tried to log in as "root",
however it didn't work.  I assume this is because by default "root"
logins over the network are disabled.  Finally, I attempted to boot
single user in hopes that a shell would be started so that I could
turn on some gettys, however no shell was ever started.  Bummer.  If I 
can provide some more information to assist with this problem I will
be happy to do so.

-- 
Ryan
