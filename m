From: Matt R Hall <mhcomputing@gmail.com>
Date: Tue, 21 Sep 2004 01:38:13 +0000
Subject: Kernel.org Bugzilla Bug: Ultra 2 Enterprise: All 2.6.xx SMP kernels hardlock
Message-Id: <703d4eaa0409201838768c0ff4@mail.gmail.com>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

http://bugme.osdl.org/show_bug.cgi?id428

I filed a report about this in kernel.org's bugzilla and it has not
received any comments. I would appreciate it if people could read this
and provide input. Here is a shortened version of the full report:

Distribution: Debian Unstable (Sid) 2004-09-20
Hardware Environment:
Sun Ultra Enterprise II
2x200 mHz UltraSPARC I Processor
512MB RAM
2x4.3GB 7200RPM SCSI Disc
Toshiba SCSI CD-ROM

Kernel configuration and dmesg output are pasted below for reference purposes.

Software Environment:
Standard Debian Unstable System

Problem Description:
Sun Ultra Enterprise 2 was hardlocking in 2.6.xx. Never responded to keyboard
input. Sometimes would respond to pings and SSH connections for a while, but
would always lock hard eventually with no errors. Note that this exact same
system works perfectly in 2.4.xx. I reiterate, SMP functions correctly there.
Obviously something has changed and caused functionality to break, hence why I
have marked this bug high severity. IMHO, "stable" kernel series should not
result in a step back in hardware compatibility.

Disabling SMP resulted in a working system.

Steps to reproduce:
Compile with the following kernel configuration, except add the SMP option.
Witness the machine fail to continue functioning.
