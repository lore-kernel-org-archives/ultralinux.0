From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Tue, 26 May 1998 14:31:57 +0000
Subject: Ultra5 OK apart from SunSwift SCSI
Message-Id: <marc-linux-ultrasparc-90222356531072@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Now that my Ultra5 has arrived, I'm preparing to install Linux on
half of it. I checked that Eddie's latest test kernel that he sent me
boots OK on it (and hence I assume that the next UltraPenguin release
will work) and it does. However, it doesn't see the SCSI HBA part of
the SunSwift card that's in it. The SunSwift card has a fast-ethernet
adaptor (hme) and a SCSI adaptor (don't know what sort). The hme is
seen fine (along with the hme that's built into the Ultra5 already)
but there's no SCSI detected at all. Is that because of a bug in a
driver or because there's no Linux/SPARC driver for whatever the
SunSwift uses in the way of SCSI? If it's a question of fixing simple
bugs in a driver or else simple porting of an already-written driver
then I might be able to summon up the time and inclination to do it.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
