From: "R. Marc" <rmarc@dimension.net>
Date: Thu, 05 Nov 1998 10:48:05 +0000
Subject: Re: UltraPenguin 1.1 release
Message-Id: <marc-linux-ultrasparc-91031051111669@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> So, UltraPenguin 1.1 is on FTP. 

So now that 1.1 is out, I'm going to ask about mysql again.  I've been
running UltraPenguin since 1.0.9 came out and have not managed to get 
mysqld to work yet.  David Miller responded to me a few times saying
that it was some problem with this or that (don't exactly remember what
he said) and that the problem was fixed, just not put into the
distribution yet.

So, I tried it again today with 1.1 figuring it would all be better and I
can get rid of every copy of solaris in the building.

No such luck *sob*

Starting mysqld demon with databases from /usr/local/mysql-3.21.33b/var
/usr/local/mysql-3.21.33b/bin/safe_mysqld: line 125: 16682 Segmentation
fault      nohup $ledir/mysqld --basedir=$MY_BASEDIR_VERSION
--datadir=$DATADIR --skip-locking "$@" >>$err 2>&1
mysqld demon ended

Somebody please tell me there's an easy solution, "just do X."...or "you
for got to set the --work-properly flag when you ran configure."  Please.

The client works fine, BTW, just not the daemon.

R. Marc

P.S.  The 1.1 install went remarkably smooth.  Keep up the good work.
