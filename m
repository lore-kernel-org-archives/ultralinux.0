From: Sven Grundmann <grundman@hal7.cs.uni-duesseldorf.de>
Date: Fri, 30 Oct 1998 14:07:31 +0000
Subject: Xserver does not start
Message-Id: <marc-linux-ultrasparc-90975708621337@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Here is the stracedump of=20

strace -o /root/X.log Xwrapper

execve("/usr/X11R6/bin/Xwrapper", ["/usr/X11R6/bin/Xwrapper"], [/* 37 vars
*/]) =3D 0
brk(0)                                  =3D 0x20f14
open("/etc/ld.so.preload", O_RDONLY)    =3D -1 ENOENT (No such file or
directory)
open("/opt/SUNWspro/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/openwin/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/ucblib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/local/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/lib/libc.so.6", O_RDONLY)    =3D -1 ENOENT (No such file or
directory)
open("/data/grundman/sw/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such fi=
le
or directory)
open("/etc/ld.so.cache", O_RDONLY)      =3D 4
fstat(4, {st_mode=3DS_IFREG|0644, st_size=16070, ...}) =3D 0
mmap(0, 16070, PROT_READ, MAP_PRIVATE, 4, 0) =3D 0x70012000
close(4)                                =3D 0
open("/lib/libc.so.6", O_RDONLY)        =3D 4
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 4, 0) =3D 0x70016000
munmap(0x70016000, 8192)                =3D 0
mmap(0, 774360, PROT_READ|PROT_EXEC, MAP_PRIVATE, 4, 0) =3D 0x70022000
mprotect(0x700bc000, 143576, PROT_NONE) =3D 0
mmap(0x700c2000, 81920, PROT_READ|PROT_WRITE|PROT_EXEC,
MAP_PRIVATE|MAP_FIXED, 4, 0x90000) =3D 0x700c2000
mmap(0x700d6000, 37080, PROT_READ|PROT_WRITE|PROT_EXEC,
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x700d6000
close(4)                                =3D 0
personality(PER_LINUX)                  =3D 0
getpid()                                =3D 465
geteuid()                               =3D 0
getuid()                                =3D 0
geteuid()                               =3D 0
execve("/etc/X11/X", ["/usr/X11R6/bin/Xwrapper"], [/* 37 vars */]) =3D 0
brk(0)                                  =3D 0x2a0a9c
open("/etc/ld.so.preload", O_RDONLY)    =3D -1 ENOENT (No such file or
directory)
open("/opt/SUNWspro/lib/libm.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/openwin/lib/libm.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/ucblib/libm.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/local/lib/libm.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/lib/libm.so.6", O_RDONLY)    =3D -1 ENOENT (No such file or
directory)
open("/data/grundman/sw/lib/libm.so.6", O_RDONLY) =3D -1 ENOENT (No such fi=
le
or directory)
open("/etc/ld.so.cache", O_RDONLY)      =3D 4
fstat(4, {st_mode=3DS_IFREG|0644, st_size=16070, ...}) =3D 0
mmap(0, 16070, PROT_READ, MAP_PRIVATE, 4, 0) =3D 0x70012000
close(4)                                =3D 0
open("/lib/libm.so.6", O_RDONLY)        =3D 4
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 4, 0) =3D 0x70016000
munmap(0x70016000, 8192)                =3D 0
mmap(0, 222024, PROT_READ|PROT_EXEC, MAP_PRIVATE, 4, 0) =3D 0x70022000
mprotect(0x70048000, 66376, PROT_NONE)  =3D 0
mmap(0x70052000, 32768, PROT_READ|PROT_WRITE|PROT_EXEC,
MAP_PRIVATE|MAP_FIXED, 4, 0x20000) =3D 0x70052000
close(4)                                =3D 0
open("/opt/SUNWspro/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/openwin/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/ucblib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/local/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such file or
directory)
open("/usr/lib/libc.so.6", O_RDONLY)    =3D -1 ENOENT (No such file or
directory)
open("/data/grundman/sw/lib/libc.so.6", O_RDONLY) =3D -1 ENOENT (No such fi=
le
or directory)
open("/lib/libc.so.6", O_RDONLY)        =3D 4
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 4, 0) =3D 0x70016000
munmap(0x70016000, 8192)                =3D 0
mmap(0, 774360, PROT_READ|PROT_EXEC, MAP_PRIVATE, 4, 0) =3D 0x7005a000
mprotect(0x700f4000, 143576, PROT_NONE) =3D 0
mmap(0x700fa000, 81920, PROT_READ|PROT_WRITE|PROT_EXEC,
MAP_PRIVATE|MAP_FIXED, 4, 0x90000) =3D 0x700fa000
mmap(0x7010e000, 37080, PROT_READ|PROT_WRITE|PROT_EXEC,
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x7010e000
close(4)                                =3D 0
personality(PER_LINUX)                  =3D 0
getpid()                                =3D 465
close(0)                                =3D 0
close(1)                                =3D 0
write(2, "", 0)                         =3D 0
getpgrp(0)                              =3D 464
getrlimit(RLIMIT_NOFILE, {rlim_cur=1024, rlim_max=1024}) =3D 0
setrlimit(RLIMIT_NOFILE, {rlim_cur=136, rlim_max=1024}) =3D 0
open("/dev/kbd", O_RDWR)                =3D 0
open("/dev/mouse", O_RDWR)              =3D 1
gettimeofday({909756294, 783220}, NULL) =3D 0
nanosleep(0xefffe6b8, 0, 0, 0xb71b0, 0) =3D 0
gettimeofday({909756295, 537103}, NULL) =3D 0
ioctl(0, KIOCTYPE, 0x240e68)            =3D 0
ioctl(0, KIOCLAYOUT, 0x240e6c)          =3D 0
brk(0)                                  =3D 0x2a0a9c
brk(0x2a0b1c)                           =3D 0x2a0b1c
brk(0x2a2000)                           =3D 0x2a2000
open("/usr/X11R6/lib/X11/rgb.txt", O_RDONLY) =3D 4
fstat(4, {st_mode=3DS_IFREG|0444, st_size=17375, ...}) =3D 0
mmap(0, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) 0x700=
16000
read(4, "! $XConsortium: rgb.txt,v 10.41 "..., 8192) =3D 8192
brk(0x2a4000)                           =3D 0x2a4000
read(4, "139\t\tturquoise4\n  0 255 255\t"..., 8192) =3D 8192
brk(0x2a6000)                           =3D 0x2a6000
read(4, "7 217 \t\tgray85\n217 217 217 \t"..., 8192) =3D 991
read(4, "", 8192)                       =3D 0
close(4)                                =3D 0
munmap(0x70016000, 8192)                =3D 0
getrlimit(RLIMIT_NOFILE, {rlim_cur=136, rlim_max=1024}) =3D 0
uname({sys=3D"Linux", node=3D"hal7", ...})  =3D 0
socket(PF_INET, SOCK_STREAM, IPPROTO_IP) =3D 4
setsockopt(4, IPPROTO_TCP, 1, [1], 4)   =3D 0
setsockopt(4, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
bind(4, {sin_family=AF_INET, sin_port=3Dhtons(6000),
sin_addr=3Dinet_addr("0.0.0.0")}, 16) =3D 0
setsockopt(4, SOL_SOCKET, SO_LINGER, [0], 8) =3D 0
listen(4, 128)                          =3D 0
getsockname(4, {sin_family=AF_INET, sin_port=3Dhtons(6000),
sin_addr=3Dinet_addr("0.0.0.0")}, [16]) =3D 0
uname({sys=3D"Linux", node=3D"hal7", ...})  =3D 0
socket(PF_UNIX, SOCK_STREAM, 0)         =3D 5
umask(0)                                =3D 07
mkdir("/tmp/.X11-unix", 0777)           =3D -1 EEXIST (File exists)
unlink("/tmp/.X11-unix/X0")             =3D 0
bind(5, {sun_family=AF_UNIX, sun_path=3D"/tmp/.X11-unix/X0"}, 19) =3D 0
listen(5, 128)                          =3D 0
umask(07)                               =3D 0
ioctl(4, SIOCGIFCONF, 0xeffff000)       =3D 0
ioctl(4, SIOCGIFFLAGS, 0xefffefc8)      =3D 0
ioctl(4, SIOCGIFBRDADDR, 0xefffefc8)    =3D 0
sigaction(-13, {SIG_IGN}, {SIG_DFL})    =3D 0
sigaction(-1, {0x4de6c, [HUP],
SA_NOMASK|SA_ONESHOT|SA_NOCLDSTOP|0xeffff740}, {SIG_DFL}) =3D 0
sigaction(-2, {0x4de8c, [INT],
SA_NOMASK|SA_ONESHOT|SA_NOCLDSTOP|0xeffff740}, {SIG_DFL}) =3D 0
sigaction(-15, {0x4de8c, [TERM],
SA_NOMASK|SA_ONESHOT|SA_NOCLDSTOP|0xeffff740}, {SIG_DFL}) =3D 0
open("/etc/X0.hosts", O_RDONLY)         =3D -1 ENOENT (No such file or
directory)
sigaction(-30, {SIG_IGN}, {SIG_DFL})    =3D 0
getppid()                               =3D 464
brk(0x2a8000)                           =3D 0x2a8000
gettimeofday({909756295, 597656}, NULL) =3D 0
geteuid()                               =3D 0
open("/dev/console", O_WRONLY)          =3D 6
ioctl(6, VT_OPENQRY, 0x29ac88)          =3D 0
close(6)                                =3D 0
write(2, "(using VT number 12)\n\n", 22) =3D 22
setpgid(0, 0)                           =3D 0
open("/dev/tty12", O_RDWR|O_NONBLOCK|0x4) =3D 6
stat("/usr/X11R6/lib/X11/fonts/misc/", {st_mode=3DS_IFDIR|0755, st_size072,
...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/misc//fonts.dir", {st_mode=3DS_IFREG|0444,
st_sizeT56, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/Speedo/", {st_mode=3DS_IFDIR|0755,
st_size=1024, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/Speedo//fonts.dir", {st_mode=3DS_IFREG|0444,
st_sizeV4, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/Type1/", {st_mode=3DS_IFDIR|0755, st_size=10=
24,
...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/Type1//fonts.dir", {st_mode=3DS_IFREG|0444,
st_size=1075, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/75dpi/", {st_mode=3DS_IFDIR|0755, st_sizeQ20,
...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/75dpi//fonts.dir", {st_mode=3DS_IFREG|0444,
st_size=15430, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/100dpi/", {st_mode=3DS_IFDIR|0755,
st_sizeQ20, ...}) =3D 0
stat("/usr/X11R6/lib/X11/fonts/100dpi//fonts.dir", {st_mode=3DS_IFREG|0444,
st_size=15926, ...}) =3D 0
getuid()                                =3D 0
getgid()                                =3D 0
chown("/dev/tty12", 0, 0)               =3D 0
getuid()                                =3D 0
getgid()                                =3D 0
chown("/dev/console", 0, 0)             =3D 0
getuid()                                =3D 0
getgid()                                =3D 0
chown("/dev/tty0", 0, 0)                =3D 0
ioctl(6, VT_GETSTATE, 0xeffff7b0)       =3D 0
open("/dev/tty", O_RDWR)                =3D 7
ioctl(7, TIOCNOTTY, 0)                  =3D 0
close(7)                                =3D 0
ioctl(6, VT_ACTIVATE, 0xc)              =3D 0
ioctl(6, VT_WAITACTIVE, 0xc)            =3D 0
ioctl(6, VT_GETMODE, 0xeffff7c8)        =3D 0
sigaction(-30, {0x1bc7c, [], 0}, {SIG_IGN}) =3D 0
ioctl(6, VT_SETMODE, 0xeffff7c8)        =3D 0
access("/dev/cgtwo0", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgtwo1", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgtwo2", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgthree0", R_OK|W_OK)      =3D -1 ENOENT (No such file or
directory)
access("/dev/cgthree1", R_OK|W_OK)      =3D -1 ENOENT (No such file or
directory)
access("/dev/cgthree2", R_OK|W_OK)      =3D -1 ENOENT (No such file or
directory)
access("/dev/cgsix0", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgsix1", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgsix2", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/cgfour0", R_OK|W_OK)       =3D -1 ENOENT (No such file or
directory)
access("/dev/bwtwo0", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/bwtwo1", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/bwtwo2", R_OK|W_OK)        =3D -1 ENOENT (No such file or
directory)
access("/dev/fb", R_OK|W_OK)            =3D 0
open("/dev/fb", O_RDWR)                 =3D 7
ioctl(7, FBIOGATTR, 0x2a6ba0)           =3D 0
ioctl(7, 0x80144604, 0x29aaf0)          =3D 0
fstat(7, {st_mode=3DS_IFCHR|0666, st_rdev=3Dmakedev(29, 0), ...}) =3D 0
mmap(0, 1130496, PROT_READ|PROT_WRITE, MAP_PRIVATE, 7, 0x70000000) 0x7016a0=
00
--- SIGSEGV (Segmentation fault) ---
+++ killed by SIGSEGV +++
