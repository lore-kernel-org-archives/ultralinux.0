From: Elliott Hughes <Elliott.Hughes@genedata.com>
Date: Sun, 21 Mar 1999 15:17:49 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92202974309571@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


ok, mixed results. on the one hand, the new stuff is _much_ faster,
and the mouse cursor no longer disappears at the edges of the
screen. unfortunately, i've been having crashes that kill my system (to
the extent that i can't Stop-A, never mind change virtual console
or even ping!).

it seems to happen with bitblts. i use 9term and wily a lot, and
i've now had both of these cause a crash. the first was clicking
on 9term's scrollbar; the window was partially redrawn, and then
the machine froze. with wily, i'd selected some text to overwrite.
i started to type, and the area to be overwritten was cleared, but
the text below this area wasn't bitbltted up. (come to think of
it, this was basically what happened with 9term too; i was
scrolling down, so what remained on the screen was bitbltted
up to the top, but this time not all of the area to be cleared
was cleared before the machine stiffed.)

i hope this is enough to get you on the right track. if you want
my binaries for 9term or wily, i can make them available.

thanks,
Elliott

-- 
"Plan 9? Ah, yes: Plan 9 deals with the resurrection of the dead."
	http://plan9.bell-labs.com/plan9/
