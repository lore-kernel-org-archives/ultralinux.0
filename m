From: Stephan van Hienen <ultra@a2000.nu>
Date: Sun, 05 May 2002 16:35:08 +0000
Subject: Iptables counters not working on Ultrasparc10 ?
Message-Id: <marc-linux-ultrasparc-102072329522531@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

after upgrading to iptables (kernel 2.4.19-pre1)
i noticed that the counters of iptables are not working correctly
also upgrading to 2.4.19-pre4/7 and pre8 don't fix this problem

:

---
[root@ddx root]# iptables -L -vx
Chain INPUT (policy ACCEPT 16765358 packets, 18446744073708030807 bytes)
    pkts      bytes target     prot opt in     out     source
destination
10370665672134623548 11136161423212670306 ACCEPT     tcp  --  eth0   any
anywhere             anywhere           tcp dpt:ftp-data
18446744073709550910 18446744073709506011 ACCEPT     tcp  --  eth0   any
anywhere             anywhere           tcp dpt:ftp
18446744073709550907 16690754 ACCEPT     tcp  --  eth0   any     anywhere
anywhere           tcp dpt:ssh
---and more of these high counters---

so then iptables -Z (which should clear the counters)
gives the same counters (almost, since there is network traffic)

sometimes it gives me this :

---
Chain INPUT (policy ACCEPT 18446744073692785501 packets, 1463844 bytes)
    pkts      bytes target     prot opt in     out     source
destination
8076078401574928068 7310582650496881310 ACCEPT     tcp  --  eth0   any
anywhere             anywhere           tcp dpt:ftp-data
     706    45605 ACCEPT     tcp  --  eth0   any     anywhere
anywhere           tcp dpt:ftp
     709 18446744073692860862 ACCEPT     tcp  --  eth0   any     anywhere
anywhere           tcp dpt:ssh
---

doing some times -Z gives me almos identical values
(sometimes like first dump, sometimes like second)

Any ideas ?



