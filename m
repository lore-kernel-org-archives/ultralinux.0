From: Peter Jones <pjones@redhat.com>
Date: Thu, 15 Apr 1999 22:03:56 +0000
Subject: Re: Compile warning...
Message-Id: <marc-linux-ultrasparc-92421402300529@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92419958220068@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92419958220068@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 15 Apr 1999, David Miller wrote:

>    Date: 	Thu, 15 Apr 1999 13:52:08 -0400 (EDT)
>    From: Peter Jones <pjones@redhat.com>
> 
>    gargleblaster:/usr/src/linux$ make
>    sed: -e expression #1, char 37: Unknown option to 's'
>    rm -f include/asm
> 
> I don't get this...  The first thing I do after a beta RH install is
> to cvs checkout and build a kernel, so I'd notice something like this,
> or else it goes by in the build output so fast I don't catch it :-)

Well, I guess I'll look harder for having done something stupid then ;)

>    Which looks like its not pertenant to anything else, at all, anywhere (I
>    just grepped the whole source tree for MAKEOVERRIDES ;)
> 
>    Can we just take this out?
> 
> MAKEOVERRIDES is an internal 'make' variable, it is used even though
> it is not explicitly referenced.

Oh, ok.  I guess I'll have to pull it appart some more and figure out why
my system is doing odd things with it, and read some more make docs...

> Later,
> David S. Miller
> davem@redhat.com

 -- Peter

"An age is called dark not because the light fails to shine, but because
people refuse to see it."
		-- James Michener, "Space"
