From: Eric <ebrower@usa.net>
Date: Sat, 01 Dec 2001 09:32:30 +0000
Subject: Re: [Ultra1 monitor]
Message-Id: <marc-linux-ultrasparc-100722784927078@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi Ralphe,

This all depends upon what framebuffer you have
installed in the Ultra1 boxes-- I'll punt and give
you the following advice:

  Check the excellent Sun Framebuffer FAQ available
  at www.sunhelp.org.  Find your framebuffer and check
  the supported resolutions.  You can then check them
  against what the monitor will support.  Be sure to
  double check the OBP settings for the framebuffer
  (as described within the FAQ) to be sure they don't
  default to something wierd.

E

Ralphe Neill <ran@oberon.sub.net.au> wrote:
> Hi all,
> 
> I'm probably taking a bit of a liberty again by asking what is
> essentially a hardware question but I never seem to get much response
> from comp.sys.sun.hardware and I figure there's got to be a great deal
> of UltraSPARC expertise on this mailing list.
> 
> Now, I've got to admit that I've always had some reservations about
> Linux but I guess that I'm a new convert from SunOS after acquiring two
> Ultra1 boxes running UltraLinux. At the moment the systems are networked
> to an old (is there any other kind) Sun 386i and using it as an
> X-terminal. It is, of course, far from ideal and, because the systems
> came without a monitor, I'm looking at getting one.
> 
> The monitor that used to be with one of the boxes was a Sun-badged
> GDM-17E20 (17"). Sony cannot tell me if they have an exact equivalent
> but I'm looking at a 19" CPDG420 (which, I gather, replaced the earlier
> C

PDE420). Sony's consultant assures me that it will work (it has the
> usual multisync/resolution ranges).
> 
> Does anybody have any experience with this monitor or can offer me some
> advice?
> 
> Thanks,
> 
> Ralphe Neill
> -
> To unsubscribe from this list: send the line "unsubscribe ultralinux" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

