From: <ddx@ddx.ml.org>
Date: Sat, 16 May 1998 17:12:04 +0000
Subject: 2.1.102 and ipfwadm
Message-Id: <marc-linux-ultrasparc-90222356531042@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

hmms what happened to ipfwadm support ? :(

don't like this
cause i just upgraded from the stnd 2.1.99 which crashed on my sun ultra
10
when inserted the scsi/ethernet card

so my problem is :

how do i get back to the 2.1.101 ?  (i updated using cvs)
so where to get a tgz or rpm with it ?

or where to get a patch so i can use ipfwadm on 2.1.102  
or better how do i use that new tool ?

i used to do this :



ipfwadm -F -p deny
ipfwadm -F -a m -S 192.168.0.0/24 -D 0.0.0.0/0



but that gives now :

[root@ddx /root]# ipfwadm -F -p deny
ipfwadm: setsockopt failed: Invalid argument
[root@ddx /root]# ipfwadm -F -a m -S 192.168.0.0/24 -D 0.0.0.0/0              
ipfwadm: setsockopt failed: No such file or directory
