From: "Chris L. Mason" <cmason@wyrex.com>
Date: Thu, 05 Nov 1998 15:05:16 +0000
Subject: Databases on Ultralinux?
Message-Id: <marc-linux-ultrasparc-91028044628130@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

I just managed to get Ultralinux 1.0.9 installed on an Ultra Enterprise
2 and it seems to be working great so far.  I had one installation problem
though.  The silo bootloader install didn't work (kept saying "can't mount"
or some similar error).  I managed to get around this by hitting ctrl-z,
setting LD_LIBRARY_PATH to /mnt/lib, running chroot /mnt and running
silo manually.  Anyway, great job guys!

I have a question, though.  Is Ultralinux 1.0.9 stable enough to use as
a database/web server?  If so, does anyone know of any large database
vendors that provide sparc-linux binaries?  (Oracle, Informix, Sybase,
etc.)  Or alternatively, any free databases that are more fully-featured
than PostgreSQL and mySQL? (referential integrity would be nice)

(Also, when I log into the serial console, I have no job control in the
shell??  Can I fix this?)

Thanks,


Chris
