From: Rich Sahlender <rsahlen@voicenet.com>
Date: Mon, 26 Oct 1998 17:16:12 +0000
Subject: Re: sparc64 autofs - Almost
Message-Id: <marc-linux-ultrasparc-90942563832530@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek wrote:
> > 
> > I saw a post about this a few weeks ago and the response was that it was
> > fixed in the newer kernels. I pulled the source from vger cvs last week
> > for 2.1.125 and I still get:
> > 
> > [root@skater /root]# automount /home yp auto.home
> > [root@skater /root]# sys32_ioctl: Unknown cmd fd(5) cmd(c0049364) arg(effffc64)
> > 
> > I took all the defaults in "make config"...
> > 
> > [root@skater /root]# uname -a
> > Linux skater.micro.lucent.com 2.1.125 #1 Mon Oct 26 08:17:54 EST 1998 sparc64 unknown
> > [root@skater /root]#
> > 
> > What have I missed? This works fine on an ss20 even with 2.1.99.
> 
> Oopsie, there was an attempt to fix it apparently, but contained a thinko.
> So, please, try again...
> 

Almost there... I can now start automount via command line without any
console messages. However, when I try to login as a user with an automounted
home it just hangs. Here's an extract from syslog:

Oct 26 11:55:02 skater automount[338]: starting automounter version 0.3.14, path = /home, maptype = yp, mapname = auto.home
Oct 26 11:55:02 skater automount[338]: using kernel protocol version 3
Oct 26 11:55:15 skater kerneld: error: exit: Identifier removed
Oct 26 11:55:30 skater automount[338]: attempting to mount entry /home/
Oct 26 11:55:30 skater automount[346]: lookup(yp): lookup for  failed: Request arguments bad
Oct 26 11:55:30 skater automount[338]: AUTOFS_IOC_READY: Invalid argument

And just to show nis is working:

root@skater /root]# ypwhich
borg
[root@skater /root]# ypcat -k auto.home | wc
    577    1179   18088
[root@skater /root]#

Again, this same auto.home is working fine on an ss20 2.1.99.

Anything else I can provide that may help?

Thanks,

Rich
