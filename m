From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Tue, 30 Jun 1998 09:29:15 +0000
Subject: Moving to a new hd
Message-Id: <marc-linux-ultrasparc-90222357631051@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I want to move the ultralinux to a new hd 
old hd is root on /dev/hda1
new is now mounted on /mnt2 (/dev/hdb1)

now how do i set it up running ?

system is copied (find . -xdev -print | cpio -pdm /mnt2/)

but now what to do with silo ?

i have done this some times with intels
just but boot disk in it
and run lilo

but how to do this with sparc ?

is there some tftp boot image as rescue disk or something ?


P.s. 
other question about the ultralinux 1.09 
why is the default LINES somewhere in the 64 ?
and not as with intel 24 ?

now i have to do always 'resize' (telnet and xterm etc.)
