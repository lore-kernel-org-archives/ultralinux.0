From: <pau@readysoft.es>
Date: Thu, 16 Sep 1999 14:37:50 +0000
Subject: bug in 2.2.13pre8 on Ultras (more oops)
MIME-Version: 1
Content-Type: multipart/mixed; boundary="131399203-1963491710-937492670=:23440"
Message-Id: <marc-linux-ultrasparc-93749568905459@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

--131399203-1963491710-937492670=:23440
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 15 Sep 1999 pau@readysoft.es wrote:

> On Wed, 15 Sep 1999, David S. Miller wrote:
> 
> > Please try the following:
> > 
> > 1) Grab 2.2.13pre8
> > 2) remove the NCR driver patch
> > 3) make sure the egcs64 package is the most updated one
> > 
> > 	? rpm -qvf /usr/bin/sparc64-linux-gcc
> > 	egcs64-19980921-4
> > 	? 
> 
> I have applied the 2.2.13pre8 patch + raid0145-19990824-2.2.11.bz2
> as ioctl32.c needed linux/raid/md.h. Otherwise it didn't compile.
> 
> The system is working right now. No oops in 10 minutes :)

After 22 hours the system stopped working :(
I attach the ksymoops.

If you need any help in tracing the bugs or testing a patch just drop an
email ;)

Thanks
Pau

--131399203-1963491710-937492670=:23440
Content-Type: APPLICATION/octet-stream; name="ultra_sparc_ksymoops-1999091601.bz2"
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.10.9909161637500.23440@pc254.worldonline.es>
Content-Description: 
Content-Disposition: attachment; filename="ultra_sparc_ksymoops-1999091601.bz2"

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
--131399203-1963491710-937492670=:23440--
