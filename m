From: Chris Johnsen <chrisj@cyrix.com>
Date: Fri, 10 Jul 1998 20:34:10 +0000
Subject: UP-1.0.9 vs. decked out E450 (4GB,4x300Mhz)
Message-Id: <marc-linux-ultrasparc-90222358531010@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


  I'm trying to install UP-1.0.9 on an E450 (no graphics, 4GB RAM,
4 UltraII 300Mhz CPUs).  When I started, the kernel would print out
the CPUs that it found and stop there (break from the serial console
didn't help).  Then I took out 2 of the CPUs, since I'd seen a dual CPU
U2 boot the install image OK.  That didn't seem to help either
(it finds 2 CPUs and prints out the info, but still hangs).  Then I
took it down to 2GB, and it seems to work better, but it still
is having problems.  Now it is hanging after scanning the first
SCSI bus (ncr53c875)...

  Is there a problem with 4GB of RAM?  I'm going to put the CPUs
back in and see if it works that way, then start brining the
memory back.  It still isn't getting all the way through kernel
initialization (hangs after scanning the first SCSI bus), but at
least I'm getting farther than before.  I'm thinking it may be
something else that is loose that is hanging the rest of the boot.
Anyone have any ideas?

--
Chris Johnsen   <chrisj@cyrix.com>   UNIX Systems Administrator
