From: Fredrik Lundholm <exce7@ce.chalmers.se>
Date: Tue, 26 May 1998 12:22:46 +0000
Subject: Re: XFree86-3.3.1-22 screen corruption?
Message-Id: <marc-linux-ultrasparc-90222356531070@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531065@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531065@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


> >Hello, when runnning gimp on a 2x66MHz HyperSPARC SS10 with Ultralinux-1.09
> >I get screen corruption as per attachement (freefonts/sharefonts installed)
....

> This is exactly the same problem I have on RedHat 4.2/Sparc on an SS20
> (150MHz HyperSparc, X11R6.1-Sun-pl1-23, dual cg6). I don't know if it's
> a fault in the X server, some HyperSparc specific problem or something
> else. It seems to be related to shared memory. gimp --no-shm --no-x-shm

Yes definately shared-memory related, gimp work to and from the 
Ultralinux-machine just fine! Well I'll give the XF 3.3.2
release a shot and try that..
Apart from that gimp 0.99.12 is really showing its age..


> I had been hoping that when I finally get round to upgrading to UltraPenguin
> the problem would vanish. From this bug report, apparently not. Any ideas
> welcome.

Are you running an SMP kernel by any chance??

> Tet

/wfr/
-- 
Fredrik Lundholm
exce7@ce.chalmers.se
