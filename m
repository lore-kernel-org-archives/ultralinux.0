From: David Andrew - Sun MDE <David.Andrew@East.Sun.COM>
Date: Fri, 30 Oct 1998 17:30:28 +0000
Subject: Re: Mixed news: new UP 1.0.9 on Ultra5
Message-Id: <marc-linux-ultrasparc-90976897727987@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90976646926603@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90976646926603@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Malcolm,

To find the actual OBP version on an Ultra5 or any Sparc, I think, you can 
do "prtconf -V" in bash, or ".version" at the OK prompt.  If your Ultra5 
version is not at least 3.11.7, please send ME a note; I can help you with 
that. 

I had the same timezone problem with the install yesterday; Jakub said he 
was looking into it.  I had no trouble installing Linux on my Ultra5 with 
the previous kernel and boot image on Jakub's cz site (2.1.106).

David
---
> Subject: Mixed news: new UP 1.0.9 on Ultra5
> To: ultralinux@vger.rutgers.edu
> Date: Fri, 30 Oct 1998 16:52:36 +0000 (GMT)
> MIME-Version: 1.0
> Content-Transfer-Encoding: 7bit
> From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
> X-Orcpt: rfc822;ultralinux@vger.rutgers.edu
> X-Loop: majordomo@vger.rutgers.edu
> 
> I had a go at installing the latest UltraPenguin 1.0.9 on my Ultra5.
> The previous version of 1.0.9 I tried had difficulties with booting
> due to various bits of the ultra and, thanks to a flurry of new
> kernel images from Eddie Dost, it got booting but didn't appear in
> installable form for a while.
> 
> The spec of this thing is: Ultra5 270MHz UltraSPARC IIi CPU,
> 128MB RAM, 4GB IDE disk, SunSwift card (SCSI HBA + extra hme NIC).
> The boot PROM is "Openboot 3.11". I set up the new tftpboot.img and
> did a "boot net". The good news is that in this configuration, the
> new UP1.0.9 boots OK into the installation menus (539 BogoMIPS :-).
> The extra hme on the sunswift card gets seen as eth0 and the built-in
> hme as eth1. After switching cables, it turns out that Linux refuses
> to use the sunswift hme properly. Using tcpdump shows the ultra
> sending out lots of arp queries (and the replies heading for the
> ultra) but nothing else. It won't respond to ping requests, nor will
> NFS work. I confirmed this by setting up the box in a completely
> different location on another network and the same happens: the kernel
> log shows detection of both hme's OK (eth0: HAPPY..., eth1: HAPPY...)
> and the successful bringing up of the link (100/FD in the first test,
> 10/HD in the second) but no replies. I did configure IP properly.
> 
> So then I removed the sunswift card and just used the builtin
> hme and eth0. Good news: it boots fine and gets a long way through
> installation. All the necessary RPMs were installed and I manually
> answered the X questions. Then it failed with
>     Error during "Configure timezone"
> with the log on VC3 saying
>     running /usr/sbin/timeconfig
>       tool failed
> So I did the next steps manually from the installation menu. The
> "Install bootloader" step failed with
>     cannot run /bin/rmmod: No such file or directory
> so I made a symlink to install2 just as /usr/bin/rmmod has. However,
> even after sorting out rmmos/insmod of loop.o the boot loader still
> fails to install. I ended up writing an attempted silo.conf from
> scratch: I can't remember what my old sparc at home has so I guessed
>     boot=/dev/hda
>     map=/boot/map
>     install=/boot/ultra.b
>     image=1/kernel/unix
>       label=solaris
>       solaris
>     image=8/boot/vmlinux-2.1.125.gz
>       label=linux
>       root=/dev/hda8
>       read=only
> since I installed Linux on partition 8 (counting 1-8). Running
>     silo -r /mnt
> gave me the error "failed to open superblock on /dev/hda8".
> So I did a "sync;sync;sync;halt". That leaves me in the state where
> Linux has successfully installed (as far as I'm aware) but I need to
> boot it somehow. I tried a net boot and a floppy boot:
>     boot net linux root=/dev/hda8
>     boot net root=/dev/hda8
> with the same UP1.0.9 installation tftpboot.img. Both put me straight
> into the installation dialog rather than mounting my installed
> partition as root. Then I wrote the UP1.0.9 boot.img to floppy and did
>     boot floppy
>     boot floppy linux root=/dev/hda8
>     boot floppy root=/dev/hda8
> but "boot floppy" with anything just says
> 
>     Boot device: /pci@1f,0/pci@1,1/ebus@1/fdthree File and args: ...
>     Bad magic number in disk label
>     Can't open disk label package
> 
>     Can't open boot device
> 
> Finally the question: how can I boot this thing now?
> If anyone wants more details of the problems along the way (sunswift,
> multiple ethernet cards, timeconfig, silo etc.) then let me know.
> 
> --Malcolm
> 
> -- 
> Malcolm Beattie <mbeattie@sable.ox.ac.uk>
> Unix Systems Programmer
> Oxford University Computing Services

David Andrew                Tel:  978-442-2316   Internal:   22316
Market Development Engineer - I/O Technologies   FAX:  978-442-1520	
Sun Microsystems, 2 Omni Way - M/S UCHL02-102,   Chelmsford, MA 01824	 
e-mail:  david.andrew@sun.com
