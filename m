From: Juergen Kreileder <kreilede@issan.cs.uni-dortmund.de>
Date: Fri, 27 Nov 1998 20:06:02 +0000
Subject: UltraPengiun 1.0.9 on Ultra 60
Message-Id: <marc-linux-ultrasparc-91220254914659@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

I've installed 1.0.9  on an Ultra 60. After the installation
the machine didn't boot because it didn't load the ncr53c8xx
module. I built a new kernel (2.1.126-UP) with ncr53c8xx compiled
in and the machine booted.

Now I still have two problems:
* modules don't work, it seems that depmod -a can't resolve any
  symbol.
* autofs doesn't work, first there was an syntax error in 
  /etc/rc.d/init.d/autofs, and now automount hangs while trying
  to mounting file systems

Any idea about what's going wrong?


        Juergen
