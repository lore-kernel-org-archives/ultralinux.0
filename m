From: Marco Colombo <marco@esi.it>
Date: Thu, 07 Feb 2002 18:09:47 +0000
Subject: RNDGETENTCNT ioctl
Message-Id: <marc-linux-ultrasparc-101310553528841@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi, I'd like to read the entropy count via the RNDGETENTCNT
ioctl, as in the following code:

	int     rfd, res;
	int     avail_entropy;

	...
	rfd = open("/dev/random", O_RDONLY);
	...
	res = ioctl(rfd, RNDGETENTCNT, &avail_entropy);

this happens to work on ix86, but fails on sparc64, with EINVAL.
I think I've tracked this down to:

arch/sparc64/kernel/ioctl32.c

where RNDGETENTCNT isn't even mentioned. Is there a patch to add support
for these "big R" ioctls to ioctl32.c?  Can RNDGETENTCNT simply be 
added to the list of those that get passed to sys_ioctl() without any
32->64bit translation? (I'm sorry but I can only vaguely understand the
issues behind than, so if some hacking is needed, more than just adding
#includes and case RNDGETENTCNT:, I won't be able to do it myself)

I'm currently running RH 2.2.19-6.2.12 (sparc64) kernel, please flame me
if I need to switch to the latest vanilla 2.2.x before further reporting.

The HW is Ultra 1 145Mhz.

TIA,
.TM.

