From: Peter Jones <pjones@redhat.com>
Date: Mon, 22 Mar 1999 00:46:26 +0000
Subject: questions about FBCON stuff...
Message-Id: <marc-linux-ultrasparc-92206416028188@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I've noticed that CONFIG_FB_ATY is defined at more than a few places, and
have been working on consolidating this a bit to make the entire script
at least a little more sane.  I'm wondering several things, for anybody
who might know:

Is CONFIG_FB_ATY supposed to be dependant on CONFIG_EXPERIMENTAL ?  At
some places it is, and at some it isn't. (same with CONFIG_FB_MATROX and
CONFIG_FB_IGA)  Also, is CONFIG_FB_IGA sparc only, as it appears to be
currently defined, or will it work on other hardware as well.  Its PCI, so
unless there is some very specific reason it should only be in the sparc
tree, I think in my cleanup I'm going to make it more generic...

 -- Peter

"A witty saying proves nothing."
		-- Voltaire
