From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Tue, 22 Sep 1998 16:21:29 +0000
Subject: SILO 0.7.3 pre-3
Message-Id: <marc-linux-ultrasparc-90649491122083@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've put up yet another prerelease of SILO 0.7.3 to
ftp://ultra.linux.cz/OS/Linux/Sparc/local/silo/testing/silo-pre0.7.3-3.tgz
This version features among other changes:

romfs support (SILO is able to read files from the romfs filesystem,
               and is able to make e.g. bootable floppies out of it).
	      You need genromfs-0.3 or higher (available from ftp.banki.hu/pub/linux/local/)
	      and when creating the image, pass it -A 2048,/.. -a 512
	      arguments. I will come hopefully tomorrow with a sample
	      boot & root floppies for ultrapenguin, including source,
	      so you can learn how to do that.

If you have /etc/silo.conf on your disk, but boot a custom image (ie. not
one of the targets specified in silo.conf), you don't have to specify
root= option if it does not differ from the default root= line in silo.conf
any more. SILO now first checks if the arguments passed to linux kernel
contain any root= option, if not, it checks if the kernel image has been 
rdev'ed to some root device and if not, it will append the default for you.

Fixed cd.b, that combo first stage bootblock can now be used for floppies as
well as CDs (for floppies, you have to use -F switch). That lets you have a
floppy with a sparc32 and sparc64 kernels be bootable (again, wait for my
floppies tomorrow). The previous cd.b from 0.6.9 onwards could not boot at
all, I haven't burned any CD after rewrite for sun4u, so I haven't found it
(but noone reported what the problems were).

Fixed -r handling, now it does a chroot, but for files which live outside
the chroot jail (e.g. /dev devices), it looks into the normal root. In fact,
very old versions of SILO didn't use chroot at all, I had my own
canonicalizing routines which prepended some path where appropriate).
But chroot is probably better.

Enhanced silo.conf syntax, so that it can be conditionalized based on
architecture detected. So you can go like:
partition = 1
root = /dev/fd0
read-write
timeout = 100
message = /welcome.msg
append = "load_ramdisk=1 prompt_ramdisk=1"
image[sun4u] = /vmlinux-64.gz
        label = linux
        alias = install
image[sun4c,sun4d,sun4m] = /vmlinux-32.gz
        label = linux
        alias = install
image[sun4] = /vmlinux-sun4.gz
        label = linux
        alias = install

The meaning is that if you boot on sun4u, it will be like if /vmlinux-32.gz
and /vmlinux-sun4.gz images were not present in silo.conf at all.

Probably some more changes I forgot to mention.
BTW: genromfs support is funny and was not trivial to do, as romfs expects
its bootblock to be at offset 0 of the device, sun partition table as well.
But, fortunately, it has first 128 bytes reserved for a descriptive string.
So, I put first two romfs headers into those 128 bytes and add there a skip
to offset 2048 for /.. header (that's the -A 2048,/.. argument to genromfs).
What's most funny is that there are two checksums: both check integrity of
the first 512 bytes of the device. romfs requires sum of all 4byte words to
be 0, sun partition table requires xor of all 2byte words to be 0.

sun4 support is not yet written, if there are some volunteers wanting to
write 128 instruction first stage block, I'd welcome it a lot, as I don't
have any sun4 machines and cannot test it. The idea is that for disks, it
would install sun4.b normally, for floppies the partition table could
contain another partition which would contain solely sun4 bootblock, for CDs
likewise, for tftp one has to use two different images, unless someone comes
with a way how to make a single boot block for sun4/sun4cdm/sun4u. I know
how to do either sun4/sun4cdm or sun4cdm/sun4u (the problem is that sun4u is
more strict about the a.out header and moves the bytes specified there.
There is no such instruction which would be small enough, so that the move
would succeed).

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.121 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
