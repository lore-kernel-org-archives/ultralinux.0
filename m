From: "David S. Miller" <davem@redhat.com>
Date: Wed, 09 May 2001 11:30:23 +0000
Subject: Re: SUN KEYBOARD PROBLEM, please help
Message-Id: <marc-linux-ultrasparc-98940783007559@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98940743306355@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98940743306355@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Eric FEILLANT writes:
 > I just installed SUSE 7.0 on my ULTRA SPARC 5 WS.
 > 
 > My keyboard (Sun type 5) works well in console mode but
 > have problem with Xfree86 (v3).
 > 
 > When i press the 'H' key i get 'G', when i press 'T' i get 'R', when i
 > press
 > 6 i get '5' ...and so on ....
 > 
 > Any idea ?

It's possible Suse forgot to apply one of the patches to the X server.

At least in the 3.3.x based ATI/mach64 code we did, there was
a hack to subtract 1 from the Sun keyboard code before feeding
it to X.

I could be wrong, I haven't looked at the sources they are using.

Later,
David S. Miller
davem@redhat.com
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
