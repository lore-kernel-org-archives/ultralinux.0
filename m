From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Wed, 28 Apr 1999 14:09:23 +0000
Subject: Re: RedHat 6.0 runs on UltraSPARC?
Message-Id: <marc-linux-ultrasparc-92530867732373@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92530848032119@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92530848032119@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> 
> > > Do you mean RedHat 6.0 runs on UltraSPARC systems?
> > > 
> > 
> > Yes, it does. Most of the things being merged from UltraPenguin were exactly
> > changes to support sparc64.
> > It is probably RHs fault not to put that in any kind of
> > announcements, at least none of those I saw.
> 
> Dang... I would think it would be incredibly good to "support" UltraSparc
> machines...  

It is supported.

> I would certainly have a market for UltraSparc/Linux for my
> customers.  They need to have a $39 version though :)  Most of us with
> UltraSparcs don't need 'official support' :-)

I guess you have a choice right now. Either you go for the $0 version
(either install from FTP/HTTP or burn your own CD - these two are the only
options in UltraPenguin you had), or you go for a $40 version, or $80
version (I don't know how much does it cost exactly but think I've read
those two numbers for CD sets without/with installation support).

I really don't think it would make any sense to cp -a redhat-6.0 ultrapenguin-1.2
and with the exception of tape install and maybe two or three little other things
everything what was in ultrapenguin is in redhat, plus redhat 6.0 is based on
glibc-2.1 and many things have changed since rh5.2 ultrapenguin-1.1.9 was
forked from.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
