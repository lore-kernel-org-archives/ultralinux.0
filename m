From: Grant Beattie <gb@zero.net.au>
Date: Mon, 11 May 1998 00:05:52 +0000
Subject: Ultralinux 1.0.9
Message-Id: <marc-linux-ultrasparc-90222356531000@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi all,

I've just finished installing Ultralinux 1.0.9 on my SparcClassic. Apart
from a few small things, everything went smoothly.

Couple of things I've noticed after using it for a little while. I can't
seem to get xdm to work properly, whenever I log in, it just boots me out
straight away and presents me with an xlogin again.

Another thing that is annoying but I can live with - serial console. I'd
like to be able to easily change between a serial and a keyboard/monitor
console, without having to change the /dev/console symlink all the time.

Can this be done? The kernel detects either serial or Sun console - why
can't this be used as the console for the rest of the session rather than
having to change /dev/console and reboot... ?

Apart from that, everything seems fine so far .. now I just want xdm to
work and I can use Ultralinux instead of Solaris at work :-)

comments and suggestions appreciated..
grant.
