From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Fri, 17 Sep 1999 15:07:31 +0000
Subject: [CALL FOR TESTERS] SILO 0.8.7
Message-Id: <marc-linux-ultrasparc-93758240214233@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

ftp://ultra.linux.cz/pub/silo now contains:

silo-0.8.7.tgz
silo-0.8.7-1.sparc.rpm
silo-0.8.7-1.src.rpm
mkisofs-1.12b5-4.sparc.rpm
mkisofs-1.12b5-4.src.rpm

This release should understand ISO9660 filesystem and RockRidge extensions
and bootable CD making has been moved into mkisofs.
So, now you can just prepare silo.conf for your bootable CD (e.g. like
this):
---------cut here---silo.conf---------
message=/etc/boot.msg
timeout`0
image="cat /etc/boot.msg"
        label=1
        single-key
image="cat /etc/general.msg"
        label=2
        single-key
image="cat /etc/expert.msg"
        label=3
        single-key
image="cat /etc/rescue.msg"
        label=4
        single-key
image="cat /etc/kickit.msg"
        label=5
        single-key
image="cat /etc/param.msg"
        label=6
        single-key
image[sun4u]=/boot/vmlinux64.gz
        label=linux
        initrd=/boot/initrd64.img
image[sun4c,sun4d,sun4m]=/boot/vmlinux32.gz
        label=linux
        initrd=/boot/initrd32.img
image[sun4c,sun4d,sun4m]=/boot/vmlinux32.gz
        label=lowmem
        root=/dev/scd0
        append="cdroot"
-------cut here------------------------

make sure you populate boot/ with SILO 0.8.7 images (at least boot/cd.b,
boot/second.b) and all the files mentioned in your silo.conf and then just
do

mkisofs -o sparc_bootable.iso -R -V -B boot/second.b cd-tree

You need either to install the provided mkisofs rpm, or compile your own
(the patch is both in mkisofs rpm and in silo-0.8.7.tgz in doc/).

Another new features in this release are:

single-key flag for images (works like similar flag in lilo.conf, the only
difference is that you can give such an image arguments simply by
putting at least one space before its name on the input line (if the
single-key image name is not right at the beginning of the line, it won't
autostart)).

Special image name prefix cat: instead of loading and executing given file
cat it to the screen. It should work both from within silo.conf (see the
above example) and from SILO input line:

SILO boot: cat /etc/passwd

After it prints the whole file, it gives you another prompt and you can type
further commands.

Special image name prefix ls: similar to cat and obviously does a directory
listing. You can pass a few options to it (-l, -t, -r and combinations of
that (note that currently if you want more of them you have to concatenate
them as in -ltr)). Currently it works only on ext2 filesystems and does not
accept any wildcards (the argument has to be some directory). -a option is
implicit.
Examples:

SILO boot: ls -t /lib/modules

SILO boot: ls -lr /pci@1f,4000/ide/ata@0,0/cmdk@0,0;5/boot

(the latter lists contents of /boot on my /dev/hda5 partition).

I would like to get some feedback so if you can boot some SPARC bootable CD
or even just test other functionality, I'd like to hear if any bugs come
up.
Especially I'd like to hear how do 32bit SPARC boxes (both sun4c and sun4m)
work with the new bootable CDs (I have tested it just on Ultra, but hope the
first stage loader is not buggy and the second stage is common to all).

Thanks a lot for any testing,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________
