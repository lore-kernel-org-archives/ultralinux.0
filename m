From: Craig Ruff <cruff@niwot.scd.ucar.EDU>
Date: Mon, 14 Dec 1998 19:01:45 +0000
Subject: UltraPenguin 1.1.9 install problem
Message-Id: <marc-linux-ultrasparc-91367586504735@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I grabbed up-1.1.9.iso from ultra.penguin.cz this weekend to give a try.
I burned a CD from the iso image.  I tried installing on my Ultra-1
today, and ran into a problem.  The kernel boots ok, but there appears
to be a problem in the initial ram disk image.  The kernel finds all of
the hardware on the system, then emits this error:

/linuxrc: 51:syntax error: "done" unexpected (expecting "fi")
sr0: disc change detected
kernel panic: VFS: unable to mount root fs on 0b:00

I don't have my Linux system available at the moment to poke around in the 
ram disk image.  Anyone else seen it?

-- 

Craig Ruff      	NCAR			cruff@ucar.edu
(303) 497-1211  	P.O. Box 3000
			Boulder, CO  80307	Amateur Call KI0NO
