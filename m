From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Sat, 17 Oct 1998 18:25:34 +0000
Subject: Netscape 4.5 on sparc
Message-Id: <marc-linux-ultrasparc-90868474718359@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

just saw that netscape 4.5 came out
and it includes a version for the sparc

communicator-v45-export.sparc-unknown-linux2.0.tar.gz

tried to run it :

netscape: error in loading shared libraries
libstdc++.so.2.8: cannot open shared object file: No such file or
directory 

so i tried to compile libstdc++-2.8.1.1-1.src.rpm

but it gives me :

n file included from ../../../libio/fstream.h:30,
                 from ../../../libio/fstream.cc:34:
../../../libio/iostream.h:91: parse error before `__extension__'
../../../libio/iostream.h:208: parse error before `__extension__'
make[1]: *** [fstream.o] Error 1
make[1]: Leaving directory
`/usr/src/redhat/BUILD/libstdc++-2.8.1.1/obj-linux/libraries/libio'
make: *** [all-target-libio] Error 2                                       



now i see in the sparc contrib for redhat :

libstdc++-2.9.0-2.sparc.rpm

i wonder if i can use this one ?
