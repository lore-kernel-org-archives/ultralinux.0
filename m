From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Thu, 28 Oct 1999 08:24:56 +0000
Subject: gprof on RH-6.0/UltraSPARC
Message-Id: <marc-linux-ultrasparc-94109917425255@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

Has anyone successfully experienced gprof on an UltraSPARC running RH-6.0 ?

It seems not to work on my workstation (UltraSPARC I):

[thierry data]$ uname -r
2.2.10
[thierry data]$ rpm -qf `which gprof`
binutils-2.9.1.0.23-1
[thierry data]$ gprof ../li.p ./gmon.out 
Bus error
[thierry data]$ gdb gprof
GNU gdb 4.17.0.11 with Linux support
Copyright 1998 Free Software Foundation, Inc.
GDB is free software, covered by the GNU General Public License, and you are
welcome to change it and/or distribute copies of it under certain conditions.
Type "show copying" to see the conditions.
There is absolutely no warranty for GDB.  Type "show warranty" for details.
This GDB was configured as "sparc-redhat-linux"...
(no debugging symbols found)...
(gdb) r ../li.p ./gmon.out
Starting program: /usr/bin/gprof ../li.p ./gmon.out

Program received signal SIGBUS, Bus error.
0x12954 in _init ()
(gdb) bt
#0  0x12954 in _init ()
#1  0x1359c in _init ()
#2  0x18b0c in _init ()
#3  0x700b78d0 in __libc_start_main () at ../sysdeps/generic/libc-start.c:78
(gdb) 

I've recompiled the binutils, but the new gprof does not work
either:

[thierry data]$ ~/binutils-2.9.1/gprof/gprof ../li.p 
Segmentation fault
[thierry data]$ gdb ~/binutils-2.9.1/gprof/gprof         
GNU gdb 4.17.0.11 with Linux support
Copyright 1998 Free Software Foundation, Inc.
GDB is free software, covered by the GNU General Public License, and you are
welcome to change it and/or distribute copies of it under certain conditions.
Type "show copying" to see the conditions.
There is absolutely no warranty for GDB.  Type "show warranty" for details.
This GDB was configured as "sparc-redhat-linux"...
(gdb) r ../li.p     
Starting program: /usr/local/home/thierry/binutils-2.9.1/gprof/gprof ../li.p

Program received signal SIGSEGV, Segmentation fault.
0x70081c98 in chunk_free (ar_ptr=0x701233ac, p=0x2a7a8) at malloc.c:3006
malloc.c:3006: No such file or directory.
(gdb) bt
#0  0x70081c98 in chunk_free (ar_ptr=0x701233ac, p=0x2a7a8) at malloc.c:3006
#1  0x70081960 in chunk_alloc (ar_ptr=0x701233ac, nb2) at malloc.c:2515
#2  0x70081050 in __malloc () at malloc.c:2107
#3  0x70078e3c in _IO_new_fopen (filename=0x51fd0 "gmon.out", mode=0x51c88 "r")
    at iofopen.c:42
#4  0x16ea0 in gmon_out_read (filename=0x51fd0 "gmon.out") at gmon_io.c:78
#5  0x18294 in main (argc=2, argv=0xeffff9f4) at gprof.c:544
#6  0x700478d0 in __libc_start_main () at ../sysdeps/generic/libc-start.c:78
(gdb) 

It's quite strange since it works on another workstation running
Ultrapenguin-1.1.9 and kernel 2.2.10.

Any idea ?


Thierry Lafage.
