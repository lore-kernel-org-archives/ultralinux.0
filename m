From: Eric <ebrower@usa.net>
Date: Mon, 29 Jan 2001 12:04:20 +0000
Subject: Re: [Linux Status for Sun Netra T1 200 ]
Message-Id: <marc-linux-ultrasparc-98079874113446@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Can you send the boot-sequence output from Linux and the
'prtconf -pv' output to the list?  If the boardset is not
already supported to a bootable level, I'd suggest we wait
for DaveM, et. al. to get their hands on one of those
boards-- I'm probably not qualified to do that kind of work
without having a box and documentation in front of me. =20

If it does boot, and is simply lacking support for a few
onboard components, that would be another issue with which
I probably could be of help.

E



Brasseur Val=E9ry <Valery.Brasseur@atosorigin.com> wrote:
I have access for a small amount of time (# 1 month) to a Netra t1 200 ...
I have try to net-boot Linux on it and for now, it doesn't work...

I have seen your mail from 2001-01-25 12:46:35,
may be looking from the Solaris 8 already installed I can help to identify
what's going wrong ?

You look interested in seeing the prtconf, I can't already send you the
output as the netra isn't on my network for now and output is very huge !!!
but from running it on the console I cant give you some hints :
  the first line said "SUNW,UltraAX-2"
  there is a lom, a flashprom, pci, i2c, usb port....

If I can be of any help, I will try, as I am very interested in making Linux
working on it (note : I can be new kernel if needed as I have already a t1
105 running under ultralinux )

thanks in advance for your help
valery
---
Valery BRASSEUR                      | Phone # +33 320 60 7982=20
Atosorigin Branche Multimedia        | Fax   # +33 320 60 7649
Unix is like a wigwam -- no Gates, no Windows, and an Apache inside.


____________________________________________________________________
Get free email and a permanent address at http://www.netaddress.com/?N=3D1
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
