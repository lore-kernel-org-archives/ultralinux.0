From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Mon, 22 Mar 1999 03:43:35 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92207824201118@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Elliott Hughes writes:
 > 
 > ok, mixed results. on the one hand, the new stuff is _much_ faster,
 > and the mouse cursor no longer disappears at the edges of the
 > screen. unfortunately, i've been having crashes that kill my system (to
 > the extent that i can't Stop-A, never mind change virtual console
 > or even ping!).
 > 
 > it seems to happen with bitblts. i use 9term and wily a lot, and
 > i've now had both of these cause a crash. the first was clicking
 > on 9term's scrollbar; the window was partially redrawn, and then
 > the machine froze. with wily, i'd selected some text to overwrite.
 > i started to type, and the area to be overwritten was cleared, but
 > the text below this area wasn't bitbltted up. (come to think of
 > it, this was basically what happened with 9term too; i was
 > scrolling down, so what remained on the screen was bitbltted
 > up to the top, but this time not all of the area to be cleared
 > was cleared before the machine stiffed.)

I've had very similar problems.  I use WindowMaker and sometimes when
I click on a title bar and begin to move a window the whole computer
will lock up.  Lock up prevents Stop-A, ping, etc.  I using kernel
2.2.0-pre5.

The speed increase is incredible, however the lock ups are a pain.  If 
there is some information you need just let me know.  I will help if I 
can.  Oh yeah, I have an Ultra2 w/Creator 3D.

-- 
Ryan
