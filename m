From: Kerios-1 Chris <Chris.Kerios-1@pp.ksc.nasa.gov>
Date: Wed, 13 Jan 1999 16:10:10 +0000
Subject: Ultra 1 Creator 1.1.9 Install Problem
Message-Id: <marc-linux-ultrasparc-91624535007279@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello all:

I am new to the list as of today so I hope this question hasn't already been
answered and is a bother to anyone....

I have an Sun Ultra 1 Creator 3d with 512 Mbs memory, and two internal 2.1Gb
drives. I don't have a
floppy disk.

My problem is this. I am trying to install Ultrapenguin1.1.9 and its not
working.  I am doing a tftp/FTP install
from another Sparc in our office where all the distribution is.  I have
installed Ultrapenguin1.1 and all goes well.

The 1.1.9 install goes perfect up until the SILO part of the install takes
place.  The boot net of "tftpboot.img" goes well
the beginning install goes well as far as collecting disk information/IP
information/package information.  The
FTP and install of "all" the packages goes well.  The selection of the X
server install transfers and goes well.  Time question
goes well.  I choose not to create a rescue disk because I don't have a
floppy.....

The next step is where the problem is.  The screens asking about where to
put SILO.  I have told it to put it in
the Master Boot Record and on the disk partition and the result is the same.
After I tell it ok, I get a screen which
says there was a problem and do I want to retry, go back or see the menu.  I
switch to the virtual screens and there is
nothing on any of them which gives me any indication of where the problem
is.  There are no error messages at all.  All I
know is that SILO isn't getting installed properly and I can't get the
machine to boot.
When I boot all I get is the "S" in SILO but I think this may be left over
from the successful Ultrapenguin 1.1 install???

Some other information:
I am pretty sure I've partitioned all my disks properly.
Disk1 sda1 500 Mbs starting in cylinder 1 not 0 per FAQs for root
         sda2 500 Mbs swap
         sda3 The whole disk, also per FAQs
         sda4  The remainder, I call it /opt
Disk2
         sdb1 The whole disk called /usr
         sdb3  The whole disk per FAQs

Silo version is 0.8.5 

I have also tried to run SILO manually by switching to vt2 and it has errors
as well.  First with not being able to find second.b which
I corrected by setting up a link from /boot to file which was in /mnt/boot.
Then it errored out not being able find silo.conf which was
on the system in /mnt/etc where I built it using vi.  It said that it must
be on a "root" directory which I thought it was, but it said it wasn't
so I corrected this by setting another link to /mnt/etc/silo.conf to / and
that message went away.  Next it said it couldn't open 
/dev/sda1 and I could not get past this point.....Keep in mind I can install
the other Ultrapenguin just fine.....Tried it again today, no problems
with the same disk organization, etc.

Dead End for me, any tricks I could think of, and my knowledge!!!

Can anybody help me out there???  It would be very much appreciated...

Thanks ahead of time

Chris
