From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 12 Nov 1998 07:31:34 +0000
Subject: Re: More detailed UltraPenguin CD-ROM making instructions
Message-Id: <marc-linux-ultrasparc-91087213405810@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91084546630118@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91084546630118@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> Just trying it out.... - the problem I have here is :
> (I suspect my mirror program might have caused the problem - but you
> might want to check there ? )....
> 
> 
> bash-2.01# less mkcdboot
> bash-2.01# sh ./mkcdboot /mnt/cdrom /dev/loop0
> ./mkcdboot: silo-0.8.2/sbin/silo: Permission denied
> bash-2.01# ls -al silo-0.8.2/sbin/
> total 31
> drwxr-xr-x   2 root     root         2048 Nov  9 15:55 .
> drwxr-xr-x  12 root     root         2048 Nov  4 06:31 ..
> -r--r--r--   1 root     root        25884 Nov  4 15:19 silo
> bash-2.01# 
> 
> 
> Will try a chmod and see what happens !.

Ok, seems like your mirror broke all the permissions.
find ultrapenguin-1.1/ -type f -a -perm +0111

gives appended names, so feed it to 
chmod +x `cat executables`

executables:
-------------------------------
ultrapenguin-1.1/sparc/RedHat/base/install3.tr
ultrapenguin-1.1/sparc/doc/HOWTO/mini/DHCP
ultrapenguin-1.1/sparc/lib/ld-2.0.7.so
ultrapenguin-1.1/sparc/lib/libc-2.0.7.so
ultrapenguin-1.1/sparc/lib/libcom_err.so.2.0
ultrapenguin-1.1/sparc/lib/libe2p.so.2.3
ultrapenguin-1.1/sparc/lib/libext2fs.so.2.3
ultrapenguin-1.1/sparc/lib/libnsl-2.0.7.so
ultrapenguin-1.1/sparc/lib/libnss_files-2.0.7.so
ultrapenguin-1.1/sparc/lib/libuuid.so.1.1
ultrapenguin-1.1/sparc/misc/src/install/dmphdlist
ultrapenguin-1.1/sparc/misc/src/install/genhdlist
ultrapenguin-1.1/sparc/misc/src/install/install
ultrapenguin-1.1/sparc/misc/src/install/install2
ultrapenguin-1.1/sparc/misc/src/install/modutils/config.guess
ultrapenguin-1.1/sparc/misc/src/install/modutils/config.status
ultrapenguin-1.1/sparc/misc/src/install/modutils/config.sub
ultrapenguin-1.1/sparc/misc/src/install/modutils/configure
ultrapenguin-1.1/sparc/misc/src/install/modutils/depmod/depmod
ultrapenguin-1.1/sparc/misc/src/install/modutils/depmod/modprobe
ultrapenguin-1.1/sparc/misc/src/install/modutils/genksyms/genksyms
ultrapenguin-1.1/sparc/misc/src/install/modutils/genksyms/makecrc32
ultrapenguin-1.1/sparc/misc/src/install/modutils/insmod/insmod
ultrapenguin-1.1/sparc/misc/src/install/modutils/insmod/ksyms
ultrapenguin-1.1/sparc/misc/src/install/modutils/insmod/lsmod
ultrapenguin-1.1/sparc/misc/src/install/modutils/insmod/modinfo
ultrapenguin-1.1/sparc/misc/src/install/modutils/install-sh
ultrapenguin-1.1/sparc/misc/src/install/modutils/kerneld/GOODIES/do_sound
ultrapenguin-1.1/sparc/misc/src/install/modutils/kerneld/kerneld
ultrapenguin-1.1/sparc/misc/src/install/modutils/kerneld/request-route.sh
ultrapenguin-1.1/sparc/misc/src/install/pci-probing/makepciids
ultrapenguin-1.1/sparc/misc/src/install/pci-probing/pcidevinfo
ultrapenguin-1.1/sparc/misc/src/install/pci-probing/pcidevinfomerge
ultrapenguin-1.1/sparc/misc/src/install/pci-probing/test-pciprobe
ultrapenguin-1.1/sparc/misc/src/install/sbus-probing/test-sbusprobe
ultrapenguin-1.1/sparc/misc/src/install/simplemot
ultrapenguin-1.1/sparc/misc/src/install/snarffont
ultrapenguin-1.1/sparc/misc/src/installinit/init
ultrapenguin-1.1/sparc/misc/src/trees/genfonts
ultrapenguin-1.1/sparc/misc/src/trees/genfonts.jj
ultrapenguin-1.1/sparc/misc/src/trees/genromfs-0.3/genromfs
ultrapenguin-1.1/sparc/misc/src/trees/mkboot1
ultrapenguin-1.1/sparc/misc/src/trees/mkboot1.jj
ultrapenguin-1.1/sparc/misc/src/trees/mkcdboot
ultrapenguin-1.1/sparc/misc/src/trees/mkcdboot.jj
ultrapenguin-1.1/sparc/misc/src/trees/mkramdisk
ultrapenguin-1.1/sparc/misc/src/trees/mkramdisk.jj
ultrapenguin-1.1/sparc/misc/src/trees/mkrescue
ultrapenguin-1.1/sparc/misc/src/trees/mkrescue.jj
ultrapenguin-1.1/sparc/misc/src/trees/mkskel.jj
ultrapenguin-1.1/sparc/misc/src/trees/mktftp
ultrapenguin-1.1/sparc/misc/src/trees/mktftp.jj
ultrapenguin-1.1/sparc/misc/src/trees/mktftprescue
ultrapenguin-1.1/sparc/misc/src/trees/pullfonts.awk
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/ld-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libc-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libcom_err.so.2.0
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libe2p.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libext2fs.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libnsl-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libnss_files-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/lib/libuuid.so.1.1
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/sbin/init
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/sbin/insmod64
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/sbin/install
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/sbin/install2
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/ash
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/badblocks
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/cp
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/df
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/fdisk
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/gzip
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/mke2fs
ultrapenguin-1.1/sparc/misc/src/trees/ramdisk/usr/bin/runinstall2
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ash
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/badblocks
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/bzip2
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/cat
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/chmod
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/chroot
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/cp
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/cpio
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/dd
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/df
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/e2fsck
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/fdisk
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/grep
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/gzip
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/head
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ifconfig
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/init
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ln
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ls
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/lsmod
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mkdir
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mke2fs
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mknod
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mount
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mt
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/mv
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/open
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/pico
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ping
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/prtconf
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/ps
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/restore
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/rm
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/route
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/rpm
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/sed
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/swapon
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/sync
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/tac
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/tail
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/tar
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/traceroute
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/umount
ultrapenguin-1.1/sparc/misc/src/trees/rescue/bin/vim
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/ld-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libc-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libcom_err.so.2.0
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libdb-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libdl-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libe2p.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libext2fs.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libnsl-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libnss_dns-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libnss_files-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libproc.so.1.2
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libproc.so.1.2.6
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libtermcap.so.2.0.8
ultrapenguin-1.1/sparc/misc/src/trees/rescue/lib/libuuid.so.1.1
ultrapenguin-1.1/sparc/misc/src/trees/silo-0.8.2/misc/silocheck
ultrapenguin-1.1/sparc/misc/src/trees/silo-0.8.2/sbin/silo
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ash
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/badblocks
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/basename
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/bzip2
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/cat
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/chmod
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/chroot
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/cp
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/cpio
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/dd
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/df
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/doexec
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/e2fsck
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/fdisk
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/grep
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/gzip
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/head
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ifconfig
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/init
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/insmod
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/insmod32
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/insmod64
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ln
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ls
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/lsmod
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mkdir
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mke2fs
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mknod
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mount
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mt
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/mv
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/open
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/pciprobe
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/pico
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ping
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/prtconf
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/ps
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/restore
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/rm
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/rmmod
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/route
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/rpm
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/sbusprobe
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/sed
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/swapon
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/sync
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/tac
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/tail
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/tar
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/traceroute
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/umount
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/uname
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/bin/vim
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/ld-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libc-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libcom_err.so.2.0
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libcrypt-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libdb-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libdl-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libe2p.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libext2fs.so.2.3
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libnsl-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libnss_dns-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libnss_files-2.0.7.so
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libproc.so.1.2
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libproc.so.1.2.6
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libtermcap.so.2.0.8
ultrapenguin-1.1/sparc/misc/src/trees/tftprescue/lib/libuuid.so.1.1
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/maketilo
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/src/bin2h
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/src/boot
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/src/boot2
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/tilo
ultrapenguin-1.1/sparc/misc/src/trees/tilo-0.2/tilo.jj
ultrapenguin-1.1/sparc/misc/src/trees/updcdboot
ultrapenguin-1.1/sparc/misc/src/trees/updmodules
ultrapenguin-1.1/sparc/misc/src/trees/updramdisk
ultrapenguin-1.1/sparc/misc/src/trees/updramdisk.jj
ultrapenguin-1.1/sparc/misc/src/trees/updrescue
ultrapenguin-1.1/sparc/misc/src/trees/updtftprescue
ultrapenguin-1.1/sparc/sbin/init
ultrapenguin-1.1/sparc/sbin/insmod64
ultrapenguin-1.1/sparc/sbin/install
ultrapenguin-1.1/sparc/sbin/install2
ultrapenguin-1.1/sparc/usr/bin/ash
ultrapenguin-1.1/sparc/usr/bin/badblocks
ultrapenguin-1.1/sparc/usr/bin/cp
ultrapenguin-1.1/sparc/usr/bin/df
ultrapenguin-1.1/sparc/usr/bin/fdisk
ultrapenguin-1.1/sparc/usr/bin/gzip
ultrapenguin-1.1/sparc/usr/bin/mke2fs
ultrapenguin-1.1/sparc/usr/bin/runinstall2

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
