From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Sun, 05 Sep 1999 01:52:19 +0000
Subject: raidtools
Message-Id: <marc-linux-ultrasparc-93649633825701@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi All,
Trying to run raidtools on my Ultra Enterprise 2...
I have the raidtools 0.90, but the documentation is showing that I should 
have mdadd, mdrun, mdstart etc...
All I have is raidstart, raidstop, raidhotadd and raidhotremove
I have tried setting it up like the doc's show, substituting raidstart for 
mdadd (man page for raidstart shows syntax is pretty much identical)
but I get the following errors:

[root@bigdaddy /root]# raidstart -a
sys32_ioctl: Unknown cmd fd(4) cmd(400c0910) arg(00025774)
sys32_ioctl: Unknown cmd fd(4) cmd(20000931) arg(00000821)
/dev/md0: Invalid argument
sys32_ioctl: Unknown cmd fd(4) cmd(20000931) arg(00000881)
/dev/md1: Invalid argument
[root@bigdaddy /root]#

my /etc/raidtab is as follows:

raiddev /dev/md0
     raid-level                5
     nr-raid-disks             6
     nr-spare-disks            0
     chunk-size                16

     device                    /dev/sdc1
     raid-disk                 0
     device                    /dev/sdd1
     raid-disk                 1
     device                    /dev/sde1
     raid-disk                 2
     device                    /dev/sdf1
     raid-disk                 3
     device                    /dev/sdg1
     raid-disk                 4
     device                    /dev/sdh1
     raid-disk                 5


raiddev /dev/md1
     raid-level                5
     nr-raid-disks             6
     nr-spare-disks            0
     chunk-size                16

     device                    /dev/sdi1
     raid-disk                 0
     device                    /dev/sdj1
     raid-disk                 1
     device                    /dev/sdk1
     raid-disk                 2
     device                    /dev/sdl1
     raid-disk                 3
     device                    /dev/sdm1
     raid-disk                 4
     device                    /dev/sdn1
     raid-disk                 5


Any ideas???

=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
