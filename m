From: Steve Dunham <dunham@cps.msu.edu>
Date: Wed, 03 Jun 1998 14:54:42 +0000
Subject: Re: Some problems using ultalinux (who /group/ps)
Message-Id: <marc-linux-ultrasparc-90222357630982@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357630981@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357630981@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Stephan van Hienen <ddx@cable.a2000.nl> writes:

> and as root :

> [root@ddx /root]# id
> uid=0(root) gid=0(root)
> groups=0(root),1(bin),2(daemon),0(root),0(root),0(root),0(root)

> but why gives it so much root groups ? 

It's supposed to have that many groups, they're just supposed to be
something other than "0".  It's probably the groups bug in glibc, get:

 ftp://ftp.cobaltmicro.com/pub/users/davem/bugfixes/glibc-2.0.7-9.sparc.rpm

install it, and reboot your system.  


Steve
dunham@cps.msu.edu
