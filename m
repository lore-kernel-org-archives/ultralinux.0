From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
Date: Fri, 03 Sep 1999 16:11:10 +0000
Subject: Re: RH 6.0 and X crashes
Message-Id: <marc-linux-ultrasparc-93637513203705@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93637236300459@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93637236300459@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

David S. Miller writes:
 >    From: Ryan Cresawn <cresawn@arbs1.larc.nasa.gov>
 >    Date: Fri,  3 Sep 1999 12:02:05 -0400 (EDT)
 > 
 >    David S. Miller writes:
 >     > This depends upon your frame buffer type.  If you are having
 >     > X instabilities using the Creator3D framebuffer, you need to install
 >     > the XFree86 updates as a fix is there for the crashes most folks were
 >     > seeing.
 >     > 
 >     > If you are using a different frame buffer I need more details such as
 >     > the type.
 > 
 >    I have a Creator 3D on an Ultra2.  I am willing to do just about
 >    anything to help with testing the X server.  My X server crashes
 >    almost daily and should be good for testing.  I have added the
 >    following lines to my "/etc/X11/X" file.
 > 
 > Have you installed the XFree86-Sun24 rpm updates for 6.0?

Yes...here's a list of what's installed.

grimlock:~# rpm -qa | grep XFree86
XFree86-xfs-3.3.3.1-52
XFree86-Sun-3.3.3.1-52
XFree86-75dpi-fonts-3.3.3.1-52
XFree86-Mach64-3.3.3.1-52
XFree86-Sun24-3.3.3.1-52
XFree86-SunMono-3.3.3.1-52
XFree86-VGA16-3.3.3.1-52
XFree86-Xnest-3.3.3.1-52
XFree86-Xvfb-3.3.3.1-52
XFree86-cyrillic-fonts-3.3.3.1-52
XFree86-doc-3.3.3.1-52
XFree86-libs-3.3.3.1-52
XFree86-ISO8859-2-1.0-8
XFree86-ISO8859-2-100dpi-fonts-1.0-8
XFree86-ISO8859-2-75dpi-fonts-1.0-8
XFree86-ISO8859-2-Type1-fonts-1.0-8
XFree86-ISO8859-9-2.1.2-9
XFree86-ISO8859-9-100dpi-fonts-2.1.2-9
XFree86-ISO8859-9-75dpi-fonts-2.1.2-9
XFree86-100dpi-fonts-3.3.3.1-52
XFree86-3.3.3.1-52
XFree86-devel-3.3.3.1-52

-- 
Ryan
