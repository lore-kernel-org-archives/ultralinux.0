From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 11 Nov 1998 22:28:11 +0000
Subject: More detailed UltraPenguin CD-ROM making instructions
Message-Id: <marc-linux-ultrasparc-91084546630118@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

As I've received a couple of requests for more detailed instructions how to
make the bootable CD, here they are:

Grab the UltraPenguin 1.1 distribution, e.g. from
ftp://ultra.penguin.cz/pub/ultrapenguin-1.1/
and put it on an sparclinux or ultralinux box (glibc required).

lets assume it is in directory /usr/ultrapenguin-1.1
Now do

cd /usr/ultrapenguin-1.1/
# This step can be omited, if you don't want to put source RPMS on the CD,
# but IMHO it is a waste of space to make a 300M CD only if you can make
# a 600M.
mv -f SRPMS sparc/
cd sparc
# Then make sure your mirror has copied the dev/ directory well:
rm -f dev/*
mknod dev/console c 5 1; chmod 600 dev/console
mknod dev/initctl p; chmod 600 dev/initctl
mknod dev/null c 1 3; chmod 644 dev/null
mknod dev/openprom c 10 139; chmod 644 dev/openprom
mknod dev/ram b 1 1; chmod 640 dev/ram
for i in 1 2 3 4 5; do mknod dev/tty$i c 4 $i; chmod 600 dev/tty$i; done
mknod dev/zero c 1 5; chmod 644 dev/zero
# then 
chown -R 0.0 /usr/ultrapenguin-1.1/sparc
DEVICE=/dev/loop0
FILE=/usr/up-1.1.iso
UPCD=/usr/ultrapenguin-1.1/sparc
MNT=/mnt/cdrom
mkisofs -A "UltraPenguin 1.1" -o $FILE -P "The UltraLinux team" -p "Jakub Jelinek <jj@ultra.linux.cz>" -R -V "UltraPenguin" $UPCD/
insmod loop
losetup $DEVICE $FILE
mount -r -t iso9660 $DEVICE $MNT
cd $MNT/misc/src/trees/
./mkcdboot $MNT $DEVICE
cd /
umount $MNT
losetup -d $DEVICE

then bring the /usr/up-1.1.iso file to your favourite CD burner and burn it.


Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.127 on a sparc64 machine (498.80 BogoMips).
___________________________________________________________________
