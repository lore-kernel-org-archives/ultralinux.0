From: Darren Tom <darren@pluris.com>
Date: Tue, 27 Oct 1998 04:44:03 +0000
Subject: Trouble installing on Ultra 60
Message-Id: <marc-linux-ultrasparc-90946703917734@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I tried installing UltraPenguin 1.09 on the Ultra 60, dual 360MHZ and
encountered problems
with the built-in peripherals.  

1) The kernel itself booted successfully from the
net, but the built-in NCR 53C875 rev 0x14 was not properly recognized. 
The error shown on the diagnostic console indicates the controller's
cache is not configured correctly.  How do I configure the cache and/or
work around this problem?

2) The PCI HappyMeal ethernet controller claims to have been recognized,
but any attempt to set the ip addr, etc. results in either a complaint
about setting the netmask or a hang while the system is trying to
determine the hostname. Is there something special about the addresses
that I'm missing?  The ip that I'm specifying is set in our dns server.

Thanks!  any help is much appreciated!

p.s.  solaris 2.6 works perfectly on this workstation.
