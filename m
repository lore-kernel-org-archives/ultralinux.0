From: Matthew Jacob <mjacob@feral.com>
Date: Tue, 29 Dec 1998 20:52:00 +0000
Subject: wierd NFS problem with UP1.1.9
Message-Id: <marc-linux-ultrasparc-91498590423703@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


I've been trying to build a kernel with a freshly installed
UP1.1.9 release but the kernel tree is across NFS (Solaris 2.6
serving)- but it's more complicated than that...

mkdep is core dumping early on- but here's the wierd thing. If
I run mkdep from another NFS mounted partition from the same server,
it works. If I run it anywhere in this partition, it core dumps
early (before even getting to main). All the exports are the same.

So- the obvious things like 32 vs. 64 bit and permissions don't play out
here.

Anyone got a clue? Below is a typescript showing working/non-working.

-matt
Script started on Tue Dec 29 20:43:08 1998
slinx.feral.com > pwd
/vger/linux/scripts
slinx.feral.com > cc -O -o mkdep mkdep.c
slinx.feral.com > cc -v
Reading specs from /usr/lib/gcc-lib/sparc-redhat-linux/egcs-2.90.29/specs
gcc version egcs-2.90.29 980515 (egcs-1.0.3 release)
slinx.feral.com > cp mkdep ~
slinx.feral.com > ./mkdep *.c
Segmentation fault (core dumped)
slinx.feral.com > strace ./mkdep *.c
execve("./mkdep", ["./mkdep", "mkdep.c", "split-include.c", "tkcond.c", "tk=
gen.c", "tkparse.c"], [/* 48 vars */]) =3D 0
brk(0)                                  =3D 0x22ef8
--- SIGSEGV (Segmentation fault) ---
+++ killed by SIGSEGV +++
slinx.feral.com > strace ~/mkdep *.c
execve("/home/mjacob/mkdep", ["/home/mjacob/mkdep", "mkdep.c", "split-inclu=
de.c", "tkcond.c", "tkgen.c", "tkparse.c"], [/* 48 vars */]) =3D 0
brk(0)                                  =3D 0x22ef8
open("/etc/ld.so.preload", O_RDONLY)    =3D -1 ENOENT (No such file or dire=
ctory)
open("/etc/ld.so.cache", O_RDONLY)      =3D 3
fstat(3, {st_mode=3DS_IFREG|0644, st_size=14472, ...}) =3D 0
mmap(0, 14472, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7000e000
close(3)                                =3D 0
open("/lib/libc.so.6", O_RDONLY)        =3D 3
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x70012000
munmap(0x70012000, 8192)                =3D 0
mmap(0, 780584, PROT_READ|PROT_EXEC, MAP_PRIVATE, 3, 0) =3D 0x7001e000
mprotect(0x700ba000, 141608, PROT_NONE) =3D 0
mmap(0x700be000, 81920, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_FIX=
ED, 3, 0x90000) =3D 0x700be000
mmap(0x700d2000, 43304, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_FIX=
ED|MAP_ANONYMOUS, -1, 0) =3D 0x700d2000
close(3)                                =3D 0
munmap(0x7000e000, 14472)               =3D 0
personality(PER_LINUX)                  =3D 0
getpid()                                =3D 2018
open("mkdep.c", O_RDONLY)               =3D 3
fstat(3, {st_mode=3DS_IFREG|0666, st_size=9885, ...}) =3D 0
mmap(0, 16384, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7000e000
brk(0)                                  =3D 0x22ef8
brk(0x23f10)                            =3D 0x23f10
brk(0x24000)                            =3D 0x24000
access("/usr/src/linux/include/ctype.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/stdio.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/stdlib.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/string.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/unistd.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/sys/fcntl.h", F_OK) =3D -1 ENOENT (No such f=
ile or directory)
access("/usr/src/linux/include/sys/mman.h", F_OK) =3D -1 ENOENT (No such fi=
le or directory)
access("/usr/src/linux/include/sys/stat.h", F_OK) =3D -1 ENOENT (No such fi=
le or directory)
access("/usr/src/linux/include/sys/types.h", F_OK) =3D -1 ENOENT (No such f=
ile or directory)
munmap(0x7000e000, 16384)               =3D 0
close(3)                                =3D 0
open("split-include.c", O_RDONLY)       =3D 3
fstat(3, {st_mode=3DS_IFREG|0666, st_sizeU65, ...}) =3D 0
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7000e000
access("/usr/src/linux/include/sys/stat.h", F_OK) =3D -1 ENOENT (No such fi=
le or directory)
access("/usr/src/linux/include/sys/types.h", F_OK) =3D -1 ENOENT (No such f=
ile or directory)
access("/usr/src/linux/include/ctype.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/errno.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/fcntl.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/stdio.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/stdlib.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/string.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/unistd.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
munmap(0x7000e000, 8192)                =3D 0
close(3)                                =3D 0
open("tkcond.c", O_RDONLY)              =3D 3
fstat(3, {st_mode=3DS_IFREG|0666, st_size=13640, ...}) =3D 0
mmap(0, 16384, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7000e000
access("/usr/src/linux/include/stdlib.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/stdio.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/string.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("tkparse.h", F_OK)               =3D 0
fstat(1, {st_mode=3DS_IFCHR|0666, st_rdev=3Dmakedev(3, 1), ...}) =3D 0
mmap(0, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0=
x70012000
ioctl(1, TCGETS, {B38400 opost isig icanon echo ...}) =3D 0
write(1, "tkcond.o: \\\n", 12tkcond.o: \
)          =3D 12
write(1, "   tkparse.h\n", 13   tkparse.h
)          =3D 13
munmap(0x7000e000, 16384)               =3D 0
close(3)                                =3D 0
open("tkgen.c", O_RDONLY)               =3D 3
fstat(3, {st_mode=3DS_IFREG|0666, st_size4151, ...}) =3D 0
mmap(0, 40960, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x700de000
access("/usr/src/linux/include/stdio.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/unistd.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("tkparse.h", F_OK)               =3D 0
write(1, "tkgen.o: \\\n", 11tkgen.o: \
)           =3D 11
write(1, "   tkparse.h\n", 13   tkparse.h
)          =3D 13
munmap(0x700de000, 40960)               =3D 0
close(3)                                =3D 0
open("tkparse.c", O_RDONLY)             =3D 3
fstat(3, {st_mode=3DS_IFREG|0666, st_size=16370, ...}) =3D 0
mmap(0, 16384, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7000e000
access("/usr/src/linux/include/stdlib.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("/usr/src/linux/include/stdio.h", F_OK) =3D -1 ENOENT (No such file =
or directory)
access("/usr/src/linux/include/string.h", F_OK) =3D -1 ENOENT (No such file=
 or directory)
access("tkparse.h", F_OK)               =3D 0
write(1, "tkparse.o: \\\n", 13tkparse.o: \
)         =3D 13
write(1, "   tkparse.h\n", 13   tkparse.h
)          =3D 13
munmap(0x7000e000, 16384)               =3D 0
close(3)                                =3D 0
munmap(0x70012000, 8192)                =3D 0
exit(0)                                 =3D ?
slinx.feral.com > exit
exit

Script done on Tue Dec 29 20:43:43 1998
