From: David Cooley <n5xmt@bellsouth.net>
Date: Fri, 10 Sep 1999 14:06:44 +0000
Subject: re: RH 6.0 for sparc fixed!!!!!!!!!
Message-Id: <marc-linux-ultrasparc-93697399531961@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Well,
RH 6 for Sparc compiled and ran fine on my Ultra-2... for a few minutes.
There appears to be a bad memory leak somewhere...  It comes up into Gnome, 
and after about 15 minutes of sitting, it just quits responding... Mouse 
movement makes the cursor move, but clicking does nothing, keyboard is dead 
etc... Ctrl-Alt-Bkspc does nothing... Stop-A and reset all is all I can do.
Booted it to a bare text unix prompt and it seemed fine for a few minutes 
but SAMBA suddenly stopped letting me have access...  rebooted and tried 
again.  Now, if I type startx, it tries to come up to a desktop, but just 
get's as far as the grey crosshatch screen then drops back to a prompt with 
the error that it cannot connect to the X server.  No errors in 
/var/log/messages
UltraPenguin 1.1.9 works fine.
Any ideas???
=============================David Cooley N5XMT Internet: N5XMT@bellsouth.net
Packet: N5XMT@KQ4LO.#INT.NC.USA.NA T.A.P.R. Member #7068
We are Borg... Prepare to be assimilated!
=============================
