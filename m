From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Fri, 30 Oct 1998 16:52:36 +0000
Subject: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-90976646926603@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I had a go at installing the latest UltraPenguin 1.0.9 on my Ultra5.
The previous version of 1.0.9 I tried had difficulties with booting
due to various bits of the ultra and, thanks to a flurry of new
kernel images from Eddie Dost, it got booting but didn't appear in
installable form for a while.

The spec of this thing is: Ultra5 270MHz UltraSPARC IIi CPU,
128MB RAM, 4GB IDE disk, SunSwift card (SCSI HBA + extra hme NIC).
The boot PROM is "Openboot 3.11". I set up the new tftpboot.img and
did a "boot net". The good news is that in this configuration, the
new UP1.0.9 boots OK into the installation menus (539 BogoMIPS :-).
The extra hme on the sunswift card gets seen as eth0 and the built-in
hme as eth1. After switching cables, it turns out that Linux refuses
to use the sunswift hme properly. Using tcpdump shows the ultra
sending out lots of arp queries (and the replies heading for the
ultra) but nothing else. It won't respond to ping requests, nor will
NFS work. I confirmed this by setting up the box in a completely
different location on another network and the same happens: the kernel
log shows detection of both hme's OK (eth0: HAPPY..., eth1: HAPPY...)
and the successful bringing up of the link (100/FD in the first test,
10/HD in the second) but no replies. I did configure IP properly.

So then I removed the sunswift card and just used the builtin
hme and eth0. Good news: it boots fine and gets a long way through
installation. All the necessary RPMs were installed and I manually
answered the X questions. Then it failed with
    Error during "Configure timezone"
with the log on VC3 saying
    running /usr/sbin/timeconfig
      tool failed
So I did the next steps manually from the installation menu. The
"Install bootloader" step failed with
    cannot run /bin/rmmod: No such file or directory
so I made a symlink to install2 just as /usr/bin/rmmod has. However,
even after sorting out rmmos/insmod of loop.o the boot loader still
fails to install. I ended up writing an attempted silo.conf from
scratch: I can't remember what my old sparc at home has so I guessed
    boot=/dev/hda
    map=/boot/map
    install=/boot/ultra.b
    image=1/kernel/unix
      label=solaris
      solaris
    image=8/boot/vmlinux-2.1.125.gz
      label=linux
      root=/dev/hda8
      read=only
since I installed Linux on partition 8 (counting 1-8). Running
    silo -r /mnt
gave me the error "failed to open superblock on /dev/hda8".
So I did a "sync;sync;sync;halt". That leaves me in the state where
Linux has successfully installed (as far as I'm aware) but I need to
boot it somehow. I tried a net boot and a floppy boot:
    boot net linux root=/dev/hda8
    boot net root=/dev/hda8
with the same UP1.0.9 installation tftpboot.img. Both put me straight
into the installation dialog rather than mounting my installed
partition as root. Then I wrote the UP1.0.9 boot.img to floppy and did
    boot floppy
    boot floppy linux root=/dev/hda8
    boot floppy root=/dev/hda8
but "boot floppy" with anything just says

    Boot device: /pci@1f,0/pci@1,1/ebus@1/fdthree File and args: ...
    Bad magic number in disk label
    Can't open disk label package

    Can't open boot device

Finally the question: how can I boot this thing now?
If anyone wants more details of the problems along the way (sunswift,
multiple ethernet cards, timeconfig, silo etc.) then let me know.

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
