From: Scott Michel <scottm@rush.aero.org>
Date: Thu, 01 Apr 1999 21:10:30 +0000
Subject: Where to contribute recompiled RPMS?
Message-Id: <marc-linux-ultrasparc-92300200724544@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm just full of dumb questions this month. When my sys admin
and I got amanda up and running, we discovered that the existing
dump and restore RPMS don't work as packaged. They need to be
recompiled for UP 1.1.9 in order to work. I didn't chase down the
exact bug, but it looks like the size of inodes changed at some
point.

In any case, my sys admin is really happy since my machine is
back on the amanda dump schedule. Where should I upload the
recompiled RPMS?

ObBTW: Anyone struggled with getting Solaris X binaries to work?
There is a problem with MIT magic cookie authentication that I
haven't been able to work around just yet...


--scooter
