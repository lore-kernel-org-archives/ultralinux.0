From: Brent Thorpe <brent.thorpe@Sun.COM>
Date: Thu, 07 Jan 1999 17:59:16 +0000
Subject: bounced out....
Message-Id: <marc-linux-ultrasparc-91583653826018@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Disclaimer:

I am totally DUMB on Linux and a first time user.  Sorry for the level
of these questions.



Any idea why I get immediately logged back out when I try to log in
using  the graphical (X11) screen on linux?  I am running Ultrapenguin
1.1.9 on an Ultra 1.  I can log in from a non graphical way, just not
through the X stuff.


My nsswitch.conf looks like this:


passwd:     files nis
shadow:     nis files nisplus nis
group:      nis files nisplus nis

hosts:      nis files nisplus nis dns

services:   nis files [NOTFOUND=return] files
networks:   nis files [NOTFOUND=return] files
protocols:  nis files [NOTFOUND=return] files
rpc:        nis files [NOTFOUND=return] files
ethers:     nis files [NOTFOUND=return] files
netmasks:   nis files [NOTFOUND=return] files
bootparams: nis files [NOTFOUND=return] files

netgroup:   nis files

publickey:  nis files

automount:  files nisplus
aliases:    files nisplus

My passwd file looks like this:

root:rC/KMUtCdXUec:0:0:root:/root:/bin/bash
bin:*:1:1:bin:/bin:
daemon:*:2:2:daemon:/sbin:
adm:*:3:4:adm:/var/adm:
lp:*:4:7:lp:/var/spool/lpd:
sync:*:5:0:sync:/sbin:/bin/sync
shutdown:*:6:0:shutdown:/sbin:/sbin/shutdown
halt:*:7:0:halt:/sbin:/sbin/halt
mail:*:8:12:mail:/var/spool/mail:
news:*:9:13:news:/var/spool/news:
uucp:*:10:14:uucp:/var/spool/uucp:
operator:*:11:0:operator:/root:
games:*:12:100:games:/usr/games:
gopher:*:13:30:gopher:/usr/lib/gopher-data:
ftp:*:14:50:FTP User:/home/ftp:
nobody:*:99:99:Nobody:/:
postgres:!!:100:233:PostgreSQL Server:/var/lib/pgsql:/bin/bash
bthorpe:uG4x3Q7DQt0is:500:500::/home/bthorpe:/bin/bash



I have modified the /etc/inittab files like this:

# Default runlevel. The runlevels used by RHS are:
#   0 - halt (Do NOT set initdefault to this)
#   1 - Single user mode
#   2 - Multiuser, without NFS (The same as 3, if you do not have
networking)
#   3 - Full multiuser mode
#   4 - unused
#   5 - X11
#   6 - reboot (Do NOT set initdefault to this)
#
id:5:initdefault:

# System initialization.
si::sysinit:/etc/rc.d/rc.sysinit


My .bashrc file looks like this:

# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi



TIA
Brent
