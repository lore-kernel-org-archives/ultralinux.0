From: Valery Brasseur <vbrasseur@laposte.net>
Date: Tue, 06 Feb 2001 17:32:08 +0000
Subject: Re: [Linux Status for Sun Netra T1 200 ]
Message-Id: <marc-linux-ultrasparc-98148077500700@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98079874113446@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98079874113446@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

for the LED... only one small LED on the front panel indicating the
"state"
ie: good/nok etc...
for other drivers I have not already test ! what did they give ?
I don't know what is envctrl and cpwatchdog ? (is the hardware wathcodg
what's
provide the famous "watchdog reset" ? )

what is "jsflash" ?

>Brasseur Val=E9ry <Valery.Brasseur@atosorigin.com> wrote:
>> (note : I can be new kernel if needed as I have already a t1
>> 105 running under ultralinux )
>
From glancing the prtconf output, I'd guess that environmental
>control (envctrl) and hardware watchdog (cpwatchdog) drivers
>will work without modification on the Netra t1-105.  I can't=20
>recall if t1-105 has a visible 7-segment display and error
>LED on the front, but they should be supported as well (d7s). =20
>Be sure you have the latest source for these drivers, as most=20
>are new and envctrl has changed quite a bit in the last few=20
>kernel versions.

>If you have any need for these drivers, I'd be interested in
>hearing if they worked for you or not.  I may have userflash
>licked soon, but Pete's jsflash might be modified to work as
>well.

>E

____________________________________________________________________
>Get free email and a permanent address at http://www.netaddress.com/?N=3D1
>

--=20
Valery BRASSEUR                | Phone # +33 320 60 7982=20
Atos Branche Multimedia        | Fax   # +33 320 60 7649
Ce que vous voyez est tout ce que vous obtenez
  -- Brian Kernigham
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
