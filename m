From: Tethys <tethys@ml.com>
Date: Tue, 07 Jul 1998 09:56:41 +0000
Subject: Loop problems with UP1.0.9
Message-Id: <marc-linux-ultrasparc-90222358531005@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


With UltraPenguin 1.0.9 on an Enterprise 4000, I get the following:

[root@ldnas0 /root]# losetup /dev/loop0 /usr/local/misc/redhat51.iso 
ioctl: LOOP_SET_FD: Invalid argument
[root@ldnas0 /root]# 
[root@ldnas0 /root]# cat /proc/devices 
Character devices:
 1 mem
 2 pty
 3 ttyp
 4 ttyp
 5 cua
 7 vcs
10 misc

Block devices:
 1 ramdisk
 7 loop
 8 sd
 9 md
11 sr
[root@ldnas0 /root]# 
[root@ldnas0 /root]# 
[root@ldnas0 /root]# strace losetup /dev/loop0 /usr/local/misc/redhat51.iso
execve("/sbin/losetup", ["losetup", "/dev/loop0", "/usr/local/misc/redhat51.iso"], [/* 19 vars */]) = 0
brk(0)                                  = 0x21384
open("/etc/ld.so.preload", O_RDONLY)    = -1 ENOENT (No such file or directory)
open("/etc/ld.so.cache", O_RDONLY)      = 3
fstat(3, {st_mode=S_IFREG|0644, st_sizer88, ...}) = 0
mmap(0, 7288, PROT_READ, MAP_PRIVATE, 3, 0) = 0x70014000
close(3)                                = 0
open("/lib/libc.so.6", O_RDONLY)        = 3
mmap(0, 8192, PROT_READ, MAP_PRIVATE, 3, 0) = 0x70018000
munmap(0x70018000, 8192)                = 0
mmap(0, 774312, PROT_READ|PROT_EXEC, MAP_PRIVATE, 3, 0) = 0x70024000
mprotect(0x700be000, 143528, PROT_NONE) = 0
mmap(0x700c4000, 81920, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_FIXED, 3, 0x90000) = 0x700c4000
mmap(0x700d8000, 37032, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x700d8000
close(3)                                = 0
personality(PER_LINUX)                  = 0
getpid()                                = 29100
open("/usr/local/misc/redhat51.iso", O_RDWR) = 3
open("/dev/loop0", O_RDWR)              = 4
ioctl(4, LOOP_SET_FD, 0x3)              = -1 EINVAL (Invalid argument)
write(2, "ioctl: LOOP_SET_FD: Invalid argu"..., 37ioctl: LOOP_SET_FD: Invalid argument
) = 37
exit(1)                                 = ?


Are loop devices working on UltraPenguin? It's a complete install, with
kernel 2.1.99. AFAIK, nothing's been added or modified since installation.

Tet

-- 
``Live free or die; death is not the worst of evils'' - General George Stark
--------------------+--------------+----------------------------------------
tethys@ml.com       |  Micro$oft:  | Linux,  the choice of a GNU generation.
tet@astradyne.co.uk | Just say no! | See http://www.uk.linux.org for details
