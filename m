From: lars.johansson@ic.ac.uk
Date: Tue, 13 Mar 2001 12:10:26 +0000
Subject: iBCS
Message-Id: <marc-linux-ultrasparc-98448555314821@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello!
I'm trying to compile iBCS for kernel v2.2.18 on a sparc32.
My aim is to get SunOS/Solaris emulation to work. 
As I understand, the built in emulation only works on sparc64.
(I tried, but it get segfaults. I have the SunOS/Solaris binaries)
My problem is; iBCS build scripts doesn't seem to do verry much. They
definitely does not install any modules anywhere.
I have supplied the kernel source tree, with a just used configuration
(the kernel works allright). 
My questions are; does it requier extra magic?
Should the "SunOS binary emulation" option be on or off when compileing
the kernel? (I had it on)

Thanx!

/Lars Johansson

-- 
Lars M. Johansson                                     +44 (0)7880 633134 
lars.johansson@ic.ac.uk

"The UNIX system has a command, nice, which allows a user to voluntarily
 reduce the priority of his process, in order to be nice to other users.
 Nobody ever uses it"
                               A. S. Tanenbaum, Modern Operating Systems
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
