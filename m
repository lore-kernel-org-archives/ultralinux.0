From: Janne Johansson <jj@it.kth.se>
Date: Mon, 29 Jun 1998 08:57:11 +0000
Subject: Re: Installation of 1.0.9 fails on Sun Ultra 5 (PCI/EIDE)
Message-Id: <marc-linux-ultrasparc-90222357631043@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357631035@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357631035@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> I have a SUN Ultra5 UPA/PCI (Sparc 300MHz monocpu), I download from 
> ultra.linux.cz the 1.0.9 distrib but I have some problems about 
> installation. The boot is OK, but during the installation phase I have a 
> RPM error message about some packages, as readline, gcc and so on...
> Moreover when I install SILO, I have a "device busy" error, and SILO is 
> obviously not installed, then I cannot start my machine, with linux.

Restart the installation the same way you did before (in my case "boot net")
and then choose "upgrade". It will of course see that all rpm's are
amazingly current and take a very short time, and then you get the Q about 
installing SILO again, and it will work. Seems to me (wild guess) that if it 
is to install SILO on a newly formatted drive it fails, but if it already is 
formatted and everything else is ok, it will install nicely.

PS. The "install nicely" part wasn't the wild guess, I've had to do this more than 
once.
DS.
