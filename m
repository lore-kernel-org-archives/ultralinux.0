From: sean.upton@uniontrib.com
Date: Fri, 05 Jan 2001 21:12:18 +0000
Subject: Storage options for Sun E450 / Linux?
Message-Id: <marc-linux-ultrasparc-97872904429351@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have a Sun Ultra Enterprise 450 Server that is likely going to end up
running Linux for use as a PostgreSQL database server and occasional file
server (using knfsd, only as a hot backup to another box).   As some of you
may know, compared to other Sun hardware, the E450 has lots of internal
expansion room; right now, I'm currently evaluating storage options for it,
as I only have a minimal configuration (4 9GB disks).

I likely plan on filling up the other 16 bays with 18GB and/or 36GB drives,
and am evaluating options in deciding hardware vs. software RAID.  The
likely setup here would be several volumes of RAID 0+1, which shouldn't be
very taxing on the CPU in the software RAID setup.  However, I wonder what
hardware RAID options might be open to me for internal expansion.

Is anybody using an E450 with hardware RAID controllers they would
recommend?  Anybody using software RAID with multiple USCSI controllers in
the E450?  Are the USCSI controllers that are bundled with the 8-slot
backplanes that Sun sells supported by the kernel?  What about the RAID
controllers?

Out of curiosity, what does it take to support RAID controllers supported by
Linux/Intel to work on Linux/Sparc?

Sorry to sound like a real novice here; I've got plenty of experience with
Linux on Intel and PPC - and I'm comfortable working with Linux on Sparc,
but the extent to which I have used ultralinux is only on my Ultra 10
workstation, not on any bigger hardware like the 450.

I'd be grateful to anyone who had any thoughts here.
Thanks,
Sean

============Sean Upton
Senior Programmer/Analyst
SignOnSanDiego.com
The San Diego Union-Tribune
619.718.5241
sean.upton@uniontrib.com
============-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
