From: Marc Aurele La France <tsi@ualberta.ca>
Date: Thu, 05 Apr 2001 13:49:55 +0000
Subject: Re: XFree4.0.3 on Ultralinux (kernel 2.4.3)
Message-Id: <marc-linux-ultrasparc-98647864116573@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-98644352025191@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-98644352025191@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 5 Apr 2001, David Andrew - Sun MDE wrote:

> > > Has anyone managed to get the very latest XFree86 (4.0.3) working on 
> > > an Ultra 5? (ATI Mach64 3d Rage Pro) I keep getting system lockups 
> > > whenever I attempt to startx.

> >Only the SBUS and UPA framebuffers work, no PCI devices work yet.

> We loaned an Ultra10 to Marc LaFrance at the University of Alberta in 
> December for XFree86 work, but I don't know the status.  Marc?

Yes, and I've already accumulated about 10,000 lines of changes for this.
I don't have anything working yet as I'm still dealing with a number of
XFree86 infrastructure issues.  Mostly SunOS/Linux differences and PCI
handling.  It'll be at least a month before I feel comfortable with making
this work available to others, whether through CVS or not.  At this point,
even its compilability isn't as stable as I'd like it.

Marc.

+----------------------------------+-----------------------------------+
|  Marc Aurele La France           |  work:   1-780-492-9310           |
|  Computing and Network Services  |  fax:    1-780-492-1729           |
|  352 General Services Building   |  email:  tsi@ualberta.ca          |
|  University of Alberta           +-----------------------------------+
|  Edmonton, Alberta               |                                   |
|  T6G 2H1                         |     Standard disclaimers apply    |
|  CANADA                          |                                   |
+----------------------------------+-----------------------------------+
XFree86 Core Team member.  ATI driver and X server internals.

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
