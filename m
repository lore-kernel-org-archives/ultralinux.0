From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Mon, 20 Jul 1998 08:38:42 +0000
Subject: quota not working? (it just hangs the whole computer)
Message-Id: <marc-linux-ultrasparc-90222358531063@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

i was wondering, if quota is not working ok
i tried it yesterday (kernel 2.1.106)


done thi :


touch /quota.user
reboot
quota -v gives nothing
so i have done manual quotacheck

waiting few minutes
then back shell


quota -v
and  machine hangs
response on nothing



quota -V
quota 1.60, with RPC and EXT2_DIRECT options



and i wonder about this :

rpm -qf /usr/bin/quota
quota-1.66-1


while in redhat 5.1 on my intel i have quota-1.55-9.i386.rpm

P.s also when i do quota -v as a user it just hangs
so i think its a kernel problem (i have compiled quota into the kernel)
