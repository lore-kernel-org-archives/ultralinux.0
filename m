From: Eric <ebrower@usa.net>
Date: Wed, 31 Jan 2001 16:07:54 +0000
Subject: Re: [Linux Status for Sun Netra T1 200 ]
Message-Id: <marc-linux-ultrasparc-98098612210562@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98079874113446@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98079874113446@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Brasseur Val=E9ry <Valery.Brasseur@atosorigin.com> wrote:
> (note : I can be new kernel if needed as I have already a t1
> 105 running under ultralinux )

From glancing the prtconf output, I'd guess that environmental
control (envctrl) and hardware watchdog (cpwatchdog) drivers
will work without modification on the Netra t1-105.  I can't=20
recall if t1-105 has a visible 7-segment display and error
LED on the front, but they should be supported as well (d7s). =20
Be sure you have the latest source for these drivers, as most=20
are new and envctrl has changed quite a bit in the last few=20
kernel versions.

If you have any need for these drivers, I'd be interested in
hearing if they worked for you or not.  I may have userflash
licked soon, but Pete's jsflash might be modified to work as
well.

E

____________________________________________________________________
Get free email and a permanent address at http://www.netaddress.com/?N=3D1
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
