From: Flavio Pescuma <edtfopa@malmen.ericsson.se>
Date: Wed, 28 Apr 1999 15:37:03 +0000
Subject: Raid5 on a 450 problem
Message-Id: <marc-linux-ultrasparc-92531492507466@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi

I'm trying to set up a 450 with Ultralinux-1.1.9 kernel 2.2.5 with 3 8Gb
disks using raid5 (software)
Everything seems to go fine, I'm able to create the raid5 with three
disks, make ext2 file system, mount it, etc... but after reboot the
second and third disk on the raid becomes corrupted and the raid doesn't
come up.  Even fdisk doesn't recognize the parameters of the disks which
I need to re-enter manually

Suggestions?

Regards,

Flavio

-- 
WIRE - Web & Internet Resources at Ericsson
Flavio Pescuma           phone: +46 (0)8 7263359
L M Ericsson Data AB     fax:   +46 (0)8 7217207
125 82 Stockholm Sweden  http://eriweb.ericsson.se
