From: Lencses Gabor <lgaby@mail.euroweb.hu>
Date: Wed, 06 May 1998 10:52:15 +0000
Subject: X files
Message-Id: <marc-linux-ultrasparc-90222356530972@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

The X invert bug disappeared, that was really a quick fix. :) So I am
emboldened to tell you more.

First of all, the domainname is present on my UE1 too, it appears that
it's ok on certain length domainnames [exactly 1,2,3,8,9,10,20+ chars].

Second any time I press the control key under X, it does something [a sync
hop?] and the monitor does the same as when you degauss it. It shatters
and deshatters. 

The icons from the control-panel still missing. They are empty boxes.

The gimp segfaults on start.

The exit from Xserver [maybe fwvm?] does not work, the xinit has to kill
the server.

The screen is not refreshed after the exit.


Thats for now :), after I ruined our whole BGP I try to collect and look
at more things.

LGaby
ps. SUN Micro still envy Linux :)
