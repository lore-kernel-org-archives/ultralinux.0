From: Wesley Hosking <wes@atlantek.com.au>
Date: Fri, 25 Sep 1998 03:33:20 +0000
Subject: shm problems ?
Message-Id: <marc-linux-ultrasparc-90671327306006@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

I am VGER 2.1.121 with shm enabled, on an Ultra 30.

When I use xcdroast to burn a CD it gives me :
/usr/lib/xcdroast-0.96d/bin/cdrecord-1.6: Invalid argument. shmget failed
Cdrecord release 1.6 Copyright (C) 1995-1998 J=F6rg Schilling

(I also get the same in sparc32 mode :

/usr/lib/xcdroast-0.96d/bin/cdrecord-1.6: Invalid argument. shmget failed
Cdrecord release 1.6 Copyright (C) 1995-1998 J=F6rg Schilling

.....

ok - its probably the=20
#define SHMMAX (1024 * 1024)
in include/asm-sparc64/shmparam.h  =20


cdrecord requires a 4M chunk...
will try it at 16Mb, and see if that is the problem.

If you don't hear from me there thats probably what the fix is ;-)

wes
