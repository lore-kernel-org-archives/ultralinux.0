From: David Van Beveren <dvb@eis.com>
Date: Thu, 06 Aug 1998 01:29:57 +0000
Subject: UP 1.0.9 on Ultra AX or Ultra AXi
Message-Id: <marc-linux-ultrasparc-90238261800743@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Completely new to Linux.

Today I downloaded the tftpboot.img image from the
/pub/Linux/distributions/ultra/sparc64/images directory on Sunsite
(UNC). I know how to set up tftp and rarp, and can watch both an Ultra
AX and Ultra AXi board from Sun download the tftp image (2.5MB).
Immediately on completion of the download, I get "Illegal Instruction"

(From Solaris 2.6)
#cd /tftpboot
#sum tftpboot.img
6024 5059 tftpboot.img

Either:
1. I am doing something wrong

2. This distribution does not work on the Ultra AX and AXi boards from
Sun Microelectronics.

3. Something else.

***

If anyone has any idea which is the right answer, please advise. We are
interested in putting the low-cost UltraSPARC II(i) boards together with
UltraPenguin at the earliest opportunity.

If this board is not supported and someone qualified wants to work in
this area, we will donate hardware.

David Van Beveren
dvb@eis.com
