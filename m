From: Wesley Hosking <wes@atlantek.com.au>
Date: Mon, 28 Sep 1998 07:01:48 +0000
Subject: Re: shm problems ?
Message-Id: <marc-linux-ultrasparc-90696509909734@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90671327306006@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90671327306006@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >=20
 > Upgrade to and install latest CVS kernel.
 >=20
 > ftp://vger.rutgers.edu/pub/linux/README.CVS
 >=20
It turned out I had to do both....
Jakub put a fix into the CVS archive for sg.o
(the generic scsi device)=20

AND it required the stuff below (I changed the 1024's for SHMMAX to
4096)...=20

(cdrecord requires a 4Mbyte chunk to ensure the SCSI flow is kept=20
full to the CD - I just made it 4 * larger to make sure ;-)

It works fine ! (now).

wes


In response to Wesley Hosking writes:
 > I am VGER 2.1.121 with shm enabled, on an Ultra 30.
 >=20
 > When I use xcdroast to burn a CD it gives me :
 > /usr/lib/xcdroast-0.96d/bin/cdrecord-1.6: Invalid argument. shmget failed
 > Cdrecord release 1.6 Copyright (C) 1995-1998 J=F6rg Schilling
 >=20
 > (I also get the same in sparc32 mode :
 >=20
 > /usr/lib/xcdroast-0.96d/bin/cdrecord-1.6: Invalid argument. shmget failed
 > Cdrecord release 1.6 Copyright (C) 1995-1998 J=F6rg Schilling
 >=20
 > .....
 >=20
 > ok - its probably the=20
 > #define SHMMAX (1024 * 1024)
 > in include/asm-sparc64/shmparam.h  =20
 >=20
 >=20
 > cdrecord requires a 4M chunk...
 > will try it at 16Mb, and see if that is the problem.
 >=20
 > If you don't hear from me there thats probably what the fix is ;-)
 >=20
 > wes
