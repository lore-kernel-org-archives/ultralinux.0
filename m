From: David Miller <davem@twiddle.net>
Date: Fri, 02 Apr 1999 11:45:42 +0000
Subject: Re: X server cannot start
Message-Id: <marc-linux-ultrasparc-92305399120295@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92305145319111@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92305145319111@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Edit /etc/X11/XF86Config and change the keyboard section
to read:

    XkbRules    "xfree86"
    XkbModel    "pc101"
    XkbLayout  "us"
    XkbVariant ""
    XkbOptions ""

It's trying to use the sun keyboard type when it should be using
ps/2.  I ram into this problem on one of my machines too.

Later,
David S. Miller
davem@redhat.com
