From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Fri, 03 Sep 1999 15:30:05 +0000
Subject: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93637236300459@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Confusion abounds regarding the X crashes on my Ultra2 box.  I have
installed all RPM updates from ftp://updates.redhat.com.  I have also
compiled kernel version 2.2.12 and am running that kernel.

Today I decided to look on http://www.deja.com and was led to the
following address.

http://www.redhat.com/corp/support/errata/sparc99_05_27.html

This page indicates the existence of an RPM package with the name
"egcs64-1.1.2-13.sparc64.rpm".  I cannot find it on their ftp site,
nor do I have it installed.  I do, however have a similar package
named "egcs64-19980921-4.sparc.rpm".  Here is a list of all the egcs
packages I have installed.

grimlock:~# rpm -qa | grep egcs
compat-egcs-5.2-1.0.3a.1
compat-egcs-c++-5.2-1.0.3a.1
compat-egcs-g77-5.2-1.0.3a.1
compat-egcs-objc-5.2-1.0.3a.1
egcs-g77-1.1.2-13
egcs-objc-1.1.2-13
egcs-1.1.2-13
egcs64-19980921-4
egcs-c++-1.1.2-13

Should I have a stable X server since I have compiled 2.2.12 after
installing all these compiler RPM updates?

Does the egcs64 RPM to which Redhat references exist?

-- 
Ryan
