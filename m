From: Andrew Tridgell <tridge@samba.anu.edu.au>
Date: Thu, 23 Jul 1998 01:30:02 +0000
Subject: Re: Ultra 5...
Message-Id: <marc-linux-ultrasparc-90222358531076@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222358531071@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222358531071@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Merely having the adapter won't help if you can't get the devices to
> agree on sync.

If you are willing to take risks then you can cut open the cable in
the adapter and solder together the H and V sync lines to form a
composite sync line. This is only safe if the input impedence on your
H and V sync pins is high enough to stop excessive current.

I'm using this for my system at home, allowing me to use a nice 19"
sun monitor on my intel linux box. I've tested it on 4 different video
cards and 3 different sun monitors with no problems, but please
realise that you might fry your video card (or worse) if this doesn't
work out.

The adapter I'm using is one given to me by the local sun people. It
came off one of their javastations. 

Note that their are circuits floating around on the net that show how
to properly convert H+V into composite sync. In my experience they
aren't necessary (and most require a separate power source).

     - Tridge
