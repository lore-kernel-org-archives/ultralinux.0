From: Peter Jones <pjones@redhat.com>
Date: Wed, 21 Apr 1999 15:18:29 +0000
Subject: Re: Audio on Ultra5
Message-Id: <marc-linux-ultrasparc-92470949805006@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92470717401395@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92470717401395@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

The ioctl() problem and the aumix problem are probably pretty unrelated to
the csr/acr problem.  The unknown ioctl() is something that I've been
meaning to look at for a while; I get the same problem with PCI sound
cards (did davem fix this recently?  It might have been in a patch
somewhere, I'll check later). Aumix is horribly broken on sparcs anyway
when you try to use its curses interface. try using it command-line only,
or finding some utility like gmix if you're in X.

 -- Peter

"Imagination is more important than knowledge."
		-- Einstein

On Wed, 21 Apr 1999, Simon Cozens wrote:

> 
> I'm running UltraPenguin 1.1.9 with a 2.2.5 kernel, on an Ultra5, with
> cs4231 sound as a module. However, after playing a couple of seconds of
> the sample sound, it hangs, giving "pintr" "csr 0xc0042210 acr 0xc3bd2000
> bcr 0" as kernel messages. (The csr seems to increase each time, the acr
> stays the same.) This comes, apparently from the eb4231_playintr()
> function in /usr/src/linux/drivers/sbus/audio/cs4231.c
> 
> However, I don't know why this is happening. I tried turning on
> debugging and tracing, but this caused the kernel to panic impressively.
> (As did upgrading drivers/sbus/audio/on last night's CVS snapshot)
> 
> aumix does this:
> uks676:simon ~ % aumix -q
> sys32_ioctl: Unknown cmd fd(3) cmd(40044dfe) arg(0002563c)
> aumix:  unknown error 2: Invalid argument
> 
> but that's probably something to do with /dev/mixer not /dev/audio which
> is causing the pintrs. Anyone seen this, beaten it, any suggestions?
> 
> (BTW, I'm not subscribed to the list, but I'll try and check by the
> web interface. I'd appreciate a CC on any responses, though.)
