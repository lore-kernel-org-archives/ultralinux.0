From: David Van Beveren <dvb@eis.com>
Date: Thu, 14 Jan 1999 12:51:37 +0000
Subject: Need SILO.conf help
Message-Id: <marc-linux-ultrasparc-91631909308405@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This is a basic question, if an answer is posted somewhere, please
advise.

I am sorry if the answer is obvious and I just cannot find it.

At the end of install, the boot loader fails to install. We have a
separate disk with Solaris 2.6 on it. If I disconnect that disk from the
SCSI chain, boot loader install works fine.

I cannot find a silo.conf man page. Is there one?

Would someone explain the silo.conf syntax or mechanism for
dual-booting, in the even tthe silo.conf fails? We have Solaris 2.6 on
the other disk, rootfs on slice 0. We would also like to build
configurations where Solaris and Linux  live on the same disk, in
different slices.

If you have a silo.conf file for a working environment like this, please
email it to me along with a simple "my Solaris is version X, its rootfs
is on slice X on a disk at target Y controller Z, and my silo.conf looks
like this:" 

Thanks so much in advance. 

David Van Beveren
dvb@eis.com
