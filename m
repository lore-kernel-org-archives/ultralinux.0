From: David Miller <davem@twiddle.net>
Date: Thu, 18 Mar 1999 02:40:58 +0000
Subject: Re: [ANNOUNCE] Test release of rewritten Creator/Creator3D/Elite3D support
Message-Id: <marc-linux-ultrasparc-92173096605223@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92169272206527@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92169272206527@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Wed, 17 Mar 1999 23:59:12 +0000
   From: Matthew Hawkins <matt@mail.goldweb.com.au>

   Is this a chipset-specific feature, or is it possible for other X
   servers to be similarly modified?

Yes and no.  It can be done in software, but slowly.

Most modern cards support 8bpp and 32bpp by way of WIDs (Window IDs),
but mostly they do this for the sake of efficient direct rendering in
OpenGL etc.  See this magnificant paper by the SGI OpenGL people to
see how this all works:

http://reality.sgi.com/opengl/direct

Essentially the WIDs are there to provide advanced and efficient
clipping facilities.  A WID specifies who can write into that window,
and what his depth/colormap setting look like, and on most Sun cards
it also can specify the buffer (when using double buffering) that is
currently displayed for that WID's pixels.

So say window 1 has WID 1 and window 2 has WID 2.  The visible pixels
of window 1 are written with the 8-bit WID of 1.  So if window 2
partially is behind window 1, when window 2 tries to write pixels into
that hidden area, the graphics card just throws away the written
pixels because it sees the WID 1 pixels there already.  So an OpenGL
application doing direct rendering need not check for any clips as it
renders into it's X window.

SGI splits out WIDs into CIDs and DIDs in their architecture.  How to
encode the WID or whatever information is a hardware tradeoff
decision, some methods allow you to run-length encode the buffer and
colormap id's for each pixel so that the retrace scan logic can work
with less information as it refreshes the screen.

Anyways, go read the SGI paper, it's cool technology.

Later,
David S. Miller
davem@redhat.com
