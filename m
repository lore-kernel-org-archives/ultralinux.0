From: Roland Turner <raz@arrakis.com.au>
Date: Mon, 26 Oct 1998 22:35:30 +0000
Subject: Difficulty with network+serial console install
Message-Id: <marc-linux-ultrasparc-90944611310785@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi there.

Sorry if this has already been covered in this list, I can't find its
archive. This is more a "help with installation" issue than a bug.

I am attempting to install ultrapenguin-1.0.9 on a Sun "Ultra Enterprise
1". This machine has no floppy drive and no frame buffer, so I am
attempting to perform a network install with a serial console.

Whilst I know Linux rather well, I know very little about SPARC
hardware.

I have not been able to work out from the user's guide how to proceed.
The section on installing via a serial console suggests that I type
"linux serial" at the SILO prompt, but the SILO installation
instructions assume that I already have Linux installed. This sounds
like a chicken and egg problem.

I have tried "boot net linux serial" and "boot net serial", but in both
cases I see "Resetting ..." on the serial console, then nothing.

Snooping the network from elsewhere, I see the RARP query and answer and
the complete TFTP transfer (>5000 512 byte packets, all acknowledged),
then nothing. No network activity, no serial console output.

I have tried all three boot images. Their md5sums are:

0143f3e25fc446bf94f4ced54478d718  tftpboot.img
52aad0a57d86c1ad70221967b2a03074  tftpboot.img.old
cbedf6ffad15888c3310d523ea4c947d  tftpboot.img.veryold

Can anyone suggest what's wrong?

Thanks

- Raz
