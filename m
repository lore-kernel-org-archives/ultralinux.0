From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Wed, 13 May 1998 17:10:41 +0000
Subject: Wrong 'w' and 'ps' (bug in procps?)
Message-Id: <marc-linux-ultrasparc-90222356531022@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

hi just installed 1.0.9
and now this 'bug' ?

:

[ddx@sun ddx]$ w
  6:07pm  up 16:51,  4 users,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM              LOGIN@   IDLE   JCPU   PCPU  WHAT
root     tty9                       6:59am 11:06m  0.00s   ?     -
ddx      ttyp0    ddx.ml.org        8:25am  1:56m  0.00s   ?     -
ddx      ttyp1    ddx.ml.org        6:07pm 26.00s  0.00s   ?     -
ddx      ttyp2    ddx.ml.org        6:07pm  0.00s  0.00s   ?     -
[ddx@sun ddx]$ ps
  PID TTY STAT TIME COMMAND
  655  ?  S    0:00 /bin/login -h ddx.ml.org -p
  656  ?  S    0:00 -bash
  667  ?  S    0:05 BitchX
 1127  ?  S    0:00 login -p -h ddx.ml.org -f ddx
 1128  ?  S    0:00 -bash
 1147  ?  S    0:00 login -p -h ddx.ml.org ddx
 1148  ?  S    0:00 -bash
 1157  ?  R    0:00 ps                           

PCPU and the TTY are not logged ok i think

but :

[ddx@sun ddx]$ who
root     tty9     May 13 06:59
ddx      ttyp0    May 13 08:25 (ddx.ml.org)
ddx      ttyp1    May 13 18:07 (ddx.ml.org)
ddx      ttyp2    May 13 18:07 (ddx.ml.org)     

gives it ok
