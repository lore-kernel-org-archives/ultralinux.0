From: Walter Keeler <wkeeler@acm.org>
Date: Fri, 03 Sep 1999 17:52:29 +0000
Subject: Introduction
Message-Id: <marc-linux-ultrasparc-93638147109831@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi! My name is Walter Keeler, and I've been working with the Debian Linux
for Sparc CD set for about two weeks now.

I have Linux up and running on a Sparc 5 at home, which will be my DSL
gateway/firewall once I get DSL installed a week from now. I've been
trying to get Linux running on an Ultra 5 at work, with considerably less
success.

First off, during the installation process, I can set aside a swap
partition, but when I try to format it as swap, the process fails. The VC
with system messages indicates inability to read a swap filesystem
signature in the swap partition, but I have no clue how to create such a
signature.

Secondly, Linux is in place, X won't run. Whether I run startx or Xsun
directly, I get a blank screen with a line cursor in the upper right-hand
corner; I can switch VC's, and when I come back, the server has died with
two messages, the first saying X should be up on VC 7, the second a
segmentation fault.

I thought compiling a new kernel might help, so I got 2.2.9 source off the
net; however, when I tried to make vmlinux, the compilation dies right
away with sparc64-linux-gcc - no such file. 

I found a sparc 64 RPM on the net, used Debian's alien package to convert
it to .deb and installed it; however, it seemed to need glibc 2.1, and
Debian installed 2.0. Attempting to upgrade the glibc to 2.1 resulted in
predictable havoc (all gettys died during the next reboot, trying to find
2.0 symbols and failing), so I'm pretty much stuck for the moment.

Once I get to feeling more ambitious, I'll probably take a stab at
installing the next, unstable Debian release (potato) over the net off the
boot CD I have with slink (current stable Debian). I'd do without a boot
CD at all, except that setting up a RARP server is such a pain.

This is sorta fun!

--Walter Keeler


wkeeler@acm.org                        *******************************
Walter Keeler                          *  If my words did glow...    *
San Francisco, CA                      *******************************
