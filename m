From: "Eric FEILLANT" <eric.feillant@laposte.fr>
Date: Fri, 11 May 2001 07:41:13 +0000
Subject: Re: SUN KEYBOARD PROBLEM, please help
MIME-Version: 1
Content-Type: multipart/mixed; boundary="----------7NhE3WuB9OnU6N9D2A0R5Y7"
Message-Id: <marc-linux-ultrasparc-98956697607881@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98940743306355@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98940743306355@msgid-missing>
To: ultralinux@vger.kernel.org


This is a multi-part message in MIME format.

------------7NhE3WuB9OnU6N9D2A0R5Y7
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit



dan carter wrote:

> Eric FEILLANT wrote:
> >
> > Hi,
> >
> > I just installed SUSE 7.0 on my ULTRA SPARC 5 WS.
> >
> > My keyboard (Sun type 5) works well in console mode but
> > have problem with Xfree86 (v3).
> >
> > When i press the 'H' key i get 'G', when i press 'T' i get 'R', when i
> > press
> > 6 i get '5' ...and so on ....
>
> Subject: Re: [suse-sparc] Type 6 Keyboard
> From: Thorsten Kukuk (kukuk@suse.de)
> Date: Tue Nov 28 2000 - 23:34:50 PST
>
> New Message Reply Messages sorted by: [ date ] [ thread ] [ subject ] [
> author ]
>
> Hi,
>
> On Tue, Nov 28, Robert V. Sigillito wrote:
>
> > I just installed SuSe 7.0 for the Sparc on an Ultra 5 with a type 6
> > Keyboard. Everything went fine till I went to login. All the key's were
> > offset. By that I mean to type an 's' you had to hit an 'a' to type a 'j'
> > you hit a 'h'.
>
> This is a known problem with ATI graphiccards, YaST2 and english/US
> Keyboards. Switch to runlevel 2 and start "sax" to configure X11.
> After this the keyboard should work correct.
>
>   Thorsten
>
> Subject: Re: [suse-sparc] Type 6 Keyboard
> From: Joshua Uziel (uzi@suse.com)
> Date: Tue Nov 28 2000 - 18:52:02 PST
>
> New Message Reply Messages sorted by: [ date ] [ thread ] [ subject ] [
> author ]
>
> * Robert V. Sigillito <rsigill@aplcenMP.apl.jhu.edu> [001128 18:37]:
> > I just installed SuSe 7.0 for the Sparc on an Ultra 5 with a type 6
> > Keyboard. Everything went fine till I went to login. All the key's
> > were offset. By that I mean to type an 's' you had to hit an 'a' to
> > type a 'j' you hit a 'h'.
> >
> > I have a type 5 keyboard that I plan on connecting tomorrow. I was
> > wondering if anyone else has had this problem. And yes, it was set for
> > "U.S English". The only thing I can think is that SuSe 7.0 does not
> > support the type 6 keyboard. Strange thing was when I was going
> > through the install screens I was able to type in letters and numbers
> > with no problem.
>
> Yes, I saw this issue as well... the way I got around it was to do the
> following:
>
> * Start up the machine without using [xgk]dm (text console) one way or
>   another... I managed to do this by repetetively hitting ctrl-alt-f1 as
>   X was loading.
> * Stop [xgk]dm... in fact, go and configure the machine not to run them
>   while you do this (just in case).
> * Run SaX and configure X to be either 8 or 24 bits... but not 16 bits
>   (which in my theory is part of the issue)... try this and see that you
>   get it working. If you don't, I can send you my XF86Config file
>   tommorow.
> * Test it with a "startx"... if it works, get [xgk]dm running again.
>
> It was just something strangely misconfigured for my (on my U10, which
> is the same as a U5, just a different riser card and case)... give this
> a whirl and see how it goes. :)
> -
> To unsubscribe from this list: send the line "unsubscribe ultralinux" in
> the body of a message to majordomo@vger.kernel.org

It does not work for me , can u send me u'r XF86config file ?

Thanks,
Eric.



------------7NhE3WuB9OnU6N9D2A0R5Y7
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: Quoted-Printable

Post-scriptum La Poste

Ce message est confidentiel. Sous r=E9serve de tout accord conclu par
=E9crit entre vous et La Poste, son contenu ne repr=E9sente en aucun cas un=

engagement de la part de La Poste. Toute publication, utilisation ou
diffusion, m=EAme partielle, doit =EAtre autoris=E9e pr=E9alablement. Si vo=
us
n'=EAtes pas destinataire de ce message, merci d'en avertir imm=E9diatement=

l'exp=E9diteur.



------------7NhE3WuB9OnU6N9D2A0R5Y7--
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
