From: Wesley Hosking <wes@atlantek.com.au>
Date: Fri, 23 Apr 1999 01:31:07 +0000
Subject: Updates in UltraPenguin 1.1.9
Message-Id: <marc-linux-ultrasparc-92483061113668@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92412756103438@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92412756103438@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:
 > Hi!
 > 
 > Updates in UP1.1.9:
 > kernel-2.2.5-4		should fix some further sparc32 problems
 > quota-1.66-2		should actually work on sparc64
 > ethtool-1.0-1		if autonegotiation does not work for you
 > 			on sunhme, you can adjust the speed/duplexity etc.
 > 			of SBUS or PCI sunhme
 > XFree86-3.3.3.1-5	further FFB fixes, Mach64 fixes (requires the above
 > 			kernel), Leo/ZX support (including acceleration).
 > 
 > plus kernel updated in install images.
 > 
 > If you have Leo/ZX, please test this and tell me if it works for you.
 > Also, if you can, test the quota, mach64 and ffb to make sure things are
 > really ready for UP-1.2 release.


I have a kernel from cvs yesterday and 
and Ultra 30 with creator.

Apr 23 09:40:20 scotty syslogd 1.3-3: restart.
Apr 23 09:40:20 scotty kernel: klogd 1.3-3, log source = /proc/kmsg started.
Apr 23 09:40:21 scotty kernel: Loaded 8313 symbols from /boot/System.map.
Apr 23 09:40:21 scotty kernel: Symbols match kernel version 2.2.5.
Apr 23 09:40:21 scotty kernel: No module symbols loaded.
Apr 23 09:40:21 scotty kernel: PROMLIB: Sun IEEE Boot Prom 3.9.5 1997/04/11 10:03
Apr 23 09:40:21 scotty kernel: Linux version 2.2.5 (root@scotty.atlantek.com.au) (gcc version egcs-2.92.11 19980921 (gcc2 ss-980609 experimental)) #2 Thu Apr 22 10:18:52 CST 1999
Apr 23 09:40:21 scotty kernel: ARCH: SUN4U
Apr 23 09:40:21 scotty kernel: Ethernet address: 08:00:20:8f:bf:0a
Apr 23 09:40:21 scotty kernel: Console: colour dummy device 80x25
Apr 23 09:40:21 scotty kernel: Calibrating delay loop... 591.46 BogoMIPS
Apr 23 09:40:21 scotty kernel: Memory: 125808k available (1544k kernel code, 2456k data, 144k init) [fffff80000000000,fffff80067f22000]
Apr 23 09:40:21 scotty kernel: POSIX conformance testing by UNIFIX
Apr 23 09:40:21 scotty kernel: PCI: Probing for controllers.
Apr 23 09:40:21 scotty kernel: PCI: Found PSYCHO, main regs at fffff9fe00000000
Apr 23 09:40:21 scotty kernel: PSYCHO: PCI config space at fffff9fe01000000
Apr 23 09:40:21 scotty kernel: PCI: Probing PCI hardware
Apr 23 09:40:21 scotty kernel: ebus0: fffff9fff0000000[1000000] fffff9fff1000000[800000]
Apr 23 09:40:21 scotty kernel: Linux NET4.0 for Linux 2.2
Apr 23 09:40:21 scotty kernel: Based upon Swansea University Computer Society NET3.039
Apr 23 09:40:21 scotty kernel: NET4: Unix domain sockets 1.0 for Linux NET4.0.
Apr 23 09:40:21 scotty kernel: NET4: Linux TCP/IP 1.0 for NET4.0
Apr 23 09:40:21 scotty kernel: IP Protocols: ICMP, UDP, TCP
Apr 23 09:40:21 scotty kernel: Starting kswapd v 1.5 
Apr 23 09:40:21 scotty kernel: Console: switching to colour frame buffer device 144x54
Apr 23 09:40:21 scotty kernel: fb0: Creator at 000001fc00000000 type 40 DAC 10
Apr 23 09:40:21 scotty kernel: PCIO serial driver version 1.18


bash-2.02# rpm -q -a | grep XF
XFree86-ISO8859-2-1.0-4
XFree86-Mach64-3.3.3.1-5
XFree86-Sun-3.3.3.1-5
XFree86-100dpi-fonts-3.3.3.1-5
XFree86-xfs-3.3.3.1-5
XFree86-ISO8859-2-75dpi-fonts-1.0-4
XFree86-ISO8859-2-100dpi-fonts-1.0-4
XFree86-Xvfb-3.3.3.1-5
XFree86-ISO8859-2-Type1-fonts-1.0-4
XFree86-ISO8859-9-2.1.2-4
XFree86-cyrillic-fonts-3.3.3.1-5
XFree86-SunMono-3.3.3.1-5
XFree86-Sun24-3.3.3.1-5
XFree86-75dpi-fonts-3.3.3.1-5
XFree86-3.3.3.1-2
XFree86-libs-3.3.3.1-5
XFree86-ISO8859-9-100dpi-fonts-2.1.2-4
XFree86-ISO8859-9-75dpi-fonts-2.1.2-4
XFree86-VGA16-3.3.3.1-5
XFree86-Xnest-3.3.3.1-5
XFree86-devel-3.3.3.1-5


The X windows session dies on me when I display some detailed graphics 
displays with netscape (well, its got a fair few colours).

No problems with :

startx -- -noFFB

Any suggestions on how to help tracking this down ?
(Put back in the signal32.c debugging, and the Alt/SysRq keypress
stuff )...
(Or do you have a fix for this already.

wes

PS: these are the messages just before shutdown - nothing from the
display crashing (the mouse is still running... )

Apr 23 09:50:43 scotty PAM_pwdb[615]: (rsh) session closed for user root
Apr 23 09:50:44 scotty pam_rhosts_auth[641]: allowed to root@server.atlantek.com.au as root
Apr 23 09:50:44 scotty PAM_pwdb[641]: (rsh) session opened for user root by (uid=0)
Apr 23 09:50:44 scotty in.rshd[642]: root@server.atlantek.com.au as root: cmd='/etc/rmt'
Apr 23 10:28:38 scotty PAM_pwdb[594]: (su) session closed for user root
Apr 23 10:28:38 scotty PAM_pwdb[641]: (rsh) session closed for user root
Apr 23 10:29:25 scotty init: Switching to runlevel: 6
Apr 23 10:29:31 scotty named[323]: named shutting down
Apr 23 10:29:31 scotty named[323]: USAGE 924829171 924826222 CPU=0.01u/0s CHILDCPU=0u/0s
Apr 23 10:29:31 scotty named[323]: NSTATS 924829171 924826222
Apr 23 10:29:31 scotty named[323]: XSTATS 924829171 924826222 RR=1 RNXD=0 RFwdR=0 RDupR=0 RFail=0 RFErr=0 RErr=0 RAXFR=0 RLame=0 ROpts=0 SSysQ=1 SAns=0 SFwdQ=0 SDupQ=0 SErr=0 RQ=0 RIQ=0 RFwdQ=0 RDupQ=0 RTCP=0 SFwdR=0 SFail=0 SFErr=0 SNaAns=0 SNXD=0
Apr 23 10:29:31 scotty sshd[327]: log: Received signal 15; terminating.
Apr 23 10:29:31 scotty syslogd: exiting on signal 15
