From: "David A. Cooley" <n5xmt@bellsouth.net>
Date: Sat, 04 Sep 1999 17:51:54 +0000
Subject: Re: SUN StorEdge D1000
Message-Id: <marc-linux-ultrasparc-93646731001620@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93642093308384@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93642093308384@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

At 10:33 AM 9/4/99 -0700, Matthew Jacob wrote:
> > There's some messy bug with the Qlogic firmware we use in the
> > driver, I never got my hands on an A1000/D1000 long enough to
> > fully resolve this.  As a workaround you can change line 632
> > in drivers/scsi/qlogicpti.c to read
> >
> >                       qpti_host->max_id = 14;
> >
> > Which will just make the driver not try to scsi probe the
> > internal controller of these disk arrays.
>
>The GEM chip has problems when you try and go to other luns. I believe
>that 7.55 F/W corrected this problem.


Where can I get the firmware? Qlogic or SUN?

=============================            David Cooley N5XMT           Internet: N5XMT@bellsouth.net
      Packet: N5XMT@KQ4LO.#INT.NC.USA.NA   T.A.P.R. Member #7068
    Sponges grow in the ocean... Wonder how deep it would be if they didn't?!
=============================
