From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Sun, 17 Mar 2002 00:11:32 +0000
Subject: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101632405919252@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Hi all,

I've got linux running on an dual CPU E220R. The base system is Debian Wood=
y and=20
I've installed the sparc64 compiler and binutils

    root@razor > sparc64-linux-gcc -v
    Reading specs from /usr/lib/gcc-lib/sparc-linux/3.0.3/specs
    Configured with: ../src/configure -v --enable-languages=3Dc --prefix=3D=
/usr=20
      --infodir=3D/share/info --mandir=3D/share/man --enable-shared --with-=
gnu-as=20
      --with-gnu-ld --with-system-zlib --enable-long-long --enable-nls --wi=
thout-x=20
      --without-included-gettext --disable-checking --with-cpu=3Dv7 sparc-l=
inux
    Thread model: single
    gcc version 3.0.3
    root@razor > ld -V
    GNU ld version 2.11.92.0.12.3 20011121 Debian/GNU Linux
      Supported emulations:
       elf32_sparc
       sparclinux
       elf64_sparc
       sun4

I am able to build a working uni-processor sparc64 kernel which boots and w=
orks=20
as expected :

    root@razor > cat sizeof.c=20
    #include <stdio.h>
   =20
    int main (void)
    {	printf ("sizeof (void*) =3D %d\n", sizeof (void*)) ;
        return 0 ;
    } /* main */

    root@razor > sparc64-linux-gcc -m64 sizeof.c -o sizeof
    root@razor > ./sizeof=20
    sizeof (void*) =3D 8

This seems to suggest that this is a 64 bit aware kernel.

If I then take the working uni-processor kernel tree, switch
on SMP support and then do=20

    make dep ; make clean ; make ; make modules ;=20
    make modules_install

and copy the kernel to /boot, run SILO and reboot, it starts off
OK but the seems to fail just after init is run. This is the last=20
part of the boot messages:

    IP: routing cache hash table of 4096 buckets, 64Kbytes
    TCP: Hash tables configured (established 32768 bind 32768)
    NET4: Unix domain sockets 1.0/SMP for Linux NET4.0.
    VFS: Mounted root (ext2 filesystem) readonly.
    version 2.84 booting
    cannot =AE=A8H=F8cannot fork, retry..
    cannot fork, retry..
    cannot fork, retry..
    =B9=BD=D1=99=BD=C9=AD=C9=95=D1=C9=E5=FF

I have also tried to boot a 32 bit only SMP kernel but that fails in the
same way. Anybody have any clues?

Cheers,
Erik
--=20
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
Seen on usenet (possibly a quote from an IBM exec):
"Each large company needs its Vietnam, and Microsoft will
 experience it with NT..."
