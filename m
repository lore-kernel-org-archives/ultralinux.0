From: Simon Cozens <simon.cozens@pembroke.oxford.ac.uk>
Date: Wed, 21 Apr 1999 15:01:34 +0000
Subject: Audio on Ultra5
Message-Id: <marc-linux-ultrasparc-92470717401395@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


I'm running UltraPenguin 1.1.9 with a 2.2.5 kernel, on an Ultra5, with
cs4231 sound as a module. However, after playing a couple of seconds of
the sample sound, it hangs, giving "pintr" "csr 0xc0042210 acr 0xc3bd2000
bcr 0" as kernel messages. (The csr seems to increase each time, the acr
stays the same.) This comes, apparently from the eb4231_playintr()
function in /usr/src/linux/drivers/sbus/audio/cs4231.c

However, I don't know why this is happening. I tried turning on
debugging and tracing, but this caused the kernel to panic impressively.
(As did upgrading drivers/sbus/audio/on last night's CVS snapshot)

aumix does this:
uks676:simon ~ % aumix -q
sys32_ioctl: Unknown cmd fd(3) cmd(40044dfe) arg(0002563c)
aumix:  unknown error 2: Invalid argument

but that's probably something to do with /dev/mixer not /dev/audio which
is causing the pintrs. Anyone seen this, beaten it, any suggestions?

(BTW, I'm not subscribed to the list, but I'll try and check by the
web interface. I'd appreciate a CC on any responses, though.)

-- 
Jill is a distorting mirror to herself. Jill has to distort herself to appear
undistorted to herself. To undistort herself, she finds Jack to distor her
distorted image in his distorting mirror. She hopes that his distortion of 
her distortion may undistort her image without her having to distort herself.
