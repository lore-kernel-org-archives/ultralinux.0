From: Kris Boulez <kris@belbone.be>
Date: Wed, 27 May 1998 09:07:38 +0000
Subject: Install of silo fails on ultra-2
Message-Id: <marc-linux-ultrasparc-90222356531081@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I just 'inherited' an ultra-2, which managment seems to
have forgotten about, and I wanted to do my 'good deed of the 
day', so I tried to install the ultrapenguin release on it.
This machine has no graphical card so I connect to the serial
port via another linux machine and minicom.
When booting with 'boot net serial' all works fine except when
at the end the install program asks to install SILO, but fails with
"mount failed: Device or resource busy".
Apparently I can't switch tty's with minicom to get at a shell prompt
to see what's happening ?
I did the same install on an other ultra (with graphical card) without
any problem

P.S. bootimage is tftp-ed and install via nfs mount.

Kris
-- 
Kris Boulez				kris@belbone.be
