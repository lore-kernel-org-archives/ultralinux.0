From: Tethys <tethys@ml.com>
Date: Wed, 10 Jun 1998 14:16:43 +0000
Subject: E4000 boot problems
Message-Id: <marc-linux-ultrasparc-90222357630998@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Trying to boot UltraPenguin 1.0.9 on an E4000.

Installed onto an external disk pack on a sun4m machine. No
problems. The machine boots and we can log in OK. We then
moved the disk pack over to the E4000 and tried to boot from
it. Immediately after trying to boot from the PROM, it gives
an error message:

	fast data access MMU miss

and then stops. Any ideas?

Our next move is to try and get the E4000 onto an appropriate
network quad so we can tftp boot it. We're currently waiting
for a spare network card and for the network boys to sort us
out a port on the right quad (that's why we had to mess about
with moving the disks around).

The other solution would be to create a CD. We've got a local
mirror of UltraPenguin here. If we burn a CD from that, what
do we need to do to make it bootable? I understand that El
Torito is an Intel only bootable CD format. Do we need to
do anything else other than make a Rock Ridge ISO9660 image
from the ultrapenguin-devel directory?

Tet

-- 
``Live free or die; death is not the worst of evils'' - General George Stark
--------------------+--------------+----------------------------------------
tethys@ml.com       |  Micro$oft:  | Linux,  the choice of a GNU generation.
tet@astradyne.co.uk | Just say no! | See http://www.uk.linux.org for details
