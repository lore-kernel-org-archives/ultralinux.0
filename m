From: Marco Colombo <marco@esi.it>
Date: Mon, 11 Feb 2002 09:56:26 +0000
Subject: Re: [Re: [RNDGETENTCNT ioctl]]
Message-Id: <marc-linux-ultrasparc-101342137630922@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101319395211743@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101319395211743@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On 8 Feb 2002, Eric wrote:

> Marco Colombo <marco@esi.it> wrote:
> 
> > I'm pretty willing to grab another tree and compile it, 
> > but I'd like to know which one in advance instead of going 
> > on by trial & error. The system is Red Hat 6.2 so I need a 
> > 2.2.x kernel.
> 
> As DaveM mentioned, that was a patch against the 2.4.x series
> but the patch is remarkably similar for the 2.2.x kernels.  
> This is against the linux_2_2 branch of CVS at vger.samba.org.
> If this does not patch cleanly into your RedHat sources, I am
> certain a little initiative will get you the rest of the way:

Eric, patching is no problem B-)
that's what I was meaning with my first message.

Now, I've discovered that my Ultra 1 has a very low entropy bits count,
as I was suspecting (it's an "headless" server, only network and disk
I/O). I guess I need an entropy source of some kind, but this is
a story for another list. B-)
I'll look closer at the code to try and understand the issues of 32->64bit
conversion. Before running an entropy collector daemon, I need the 
others 'R' ioctls (RNDADDENTROPY as a minumum). Some of them do take 
int * as the third argument, so I guess I need some hacking. If I manage
to produce an useful patch, I'll post it.

Thanks for your support.

.TM.
-- 
      ____/  ____/   /
     /      /       /			Marco Colombo
    ___/  ___  /   /		      Technical Manager
   /          /   /			 ESI s.r.l.
 _____/ _____/  _/		       Colombo@ESI.it

