From: "David S. Miller" <davem@redhat.com>
Date: Fri, 03 Sep 1999 16:08:09 +0000
Subject: Re: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93637513003690@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93637236300459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93637236300459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
   Date: Fri,  3 Sep 1999 12:02:05 -0400 (EDT)

   David S. Miller writes:
    > This depends upon your frame buffer type.  If you are having
    > X instabilities using the Creator3D framebuffer, you need to install
    > the XFree86 updates as a fix is there for the crashes most folks were
    > seeing.
    > 
    > If you are using a different frame buffer I need more details such as
    > the type.

   I have a Creator 3D on an Ultra2.  I am willing to do just about
   anything to help with testing the X server.  My X server crashes
   almost daily and should be good for testing.  I have added the
   following lines to my "/etc/X11/X" file.

Have you installed the XFree86-Sun24 rpm updates for 6.0?

Later,
David S. Miller
davem@redhat.com
