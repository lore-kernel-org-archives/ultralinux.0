From: Steve Dunham <dunham@cse.msu.edu>
Date: Sat, 13 Mar 1999 06:02:12 +0000
Subject: Re: Run Level 5 problems
Message-Id: <marc-linux-ultrasparc-92130484822132@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92127776107725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92127776107725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David Andrew - Sun MDE <David.Andrew@East.Sun.COM> writes:

> I have been successful in loading UltraPenguin-1.1.9 in many Ultra
> platforms, but have not been able to log in at Run level 5.  Is
> there something I am missing?  I have done it as root, as well as
> with another username.  As soon as the name and password are
> entered, it tries to do something, then comes back up with the same
> login screen, with no reasonable exit.  I am running the newest UP
> RPMS, including the 2.2.2-3 kernel files, but this happened on
> earlier versions as well.

> I can get the X up with startx, but not by going to run level5.
> This happens even if I have already logged in at level 3.

> Is this a known bug?

This generally happens when the startup scripts that xdm spawns
(Xsession) tries to run something like a window manager and fails
(when the script that runs the window manager exits, X will exit and
xdm will restart).  There _should_ be a file with a name similar to
".xsession.log" or ".xsession-errors" in the user's home directory
which may provide more insight into what exactly is going wrong (I'd
suspect a missing program or a bad path.)


Steve
dunham@cse.msu.edu
