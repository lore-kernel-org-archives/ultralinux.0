From: Chris Jackson <cjackson@ctel.net>
Date: Wed, 03 May 2000 14:12:55 +0000
Subject: Help!! sparc Ultra5 w/ RH6.1 crashing
Message-Id: <marc-linux-ultrasparc-95736359507836@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have an Ultra5 that hangs every 2 weeks or so for no reason (that's
clear
to me...) Our in-house solaris guy is jumping up and down with his
solaris
install disk in hand, screaming we should take "an unstable" OS like
Linux
off the net. I could really use some advice/help from a Sparc/Linux guru 
in how to find the problem and fix it. I when out on a limb on this on
after some good experience with our SS20 having no real downtime over
the
last year and the need to have a very compatable OS to run a large,
distributed qmail system on.

The box currently supports 1000+ qmail users, MySQL, apache for
qmailadmin,
ssh and little else.
 
I've been logging kernel messages since the crash before this last one
and
nothing of interest seems to be getting logged.  When the box freezes, I
can't get any video output to see what happened.  Ctrl+Alt+Del doesn't
reboot it so we power cycle. How do I get more info? 
I'm running a hand built 2.2.14 kernel this time,  but the last two
crashes
happened with the stock RH 6.1 kernel.

The only log entries in any of the logs during the time just before the
last crash was someone probing our ftp server (proftpd 1.2.0pre10) Is
there
any script kiddie methods of bringing down the box that I haven't heard
of?
I didn't see any real bandwidth usage for that switch port (mrtg) so I
can't see as though it is a DoS or network load problem.  

Any help would be great - I fact, login help would be great (this ISN'T
an
"no-budget" operation ;-)
