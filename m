From: Peter Jones <pjones@redhat.com>
Date: Mon, 12 Apr 1999 12:46:18 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92392639229021@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 11 Apr 1999, David Miller wrote:

>    Date: Mon, 12 Apr 1999 00:50:47 -0400 (EDT)
>    From: Peter Jones <pjones@redhat.com>
> 
>    > This bug would explain some problems I had with the gnome mixer applet
>    > and some other sound programs on sparc64...
> 
>    Hrm.  Odd.   When aumix calls that, its sending 0x20044dfe, which is what
>    kernelspace is _expecting_ to get.  somewhere in the middle its becoming
>    0x40044dfe , which is falling through the case.  Any ideas?
> 
> Maybe rebuild aumix with more recent kernel header files.  I saw this
> too with xcdplay, so it might be the same problem.
> 
> Actually, I couldn't completely parse your recollection of the
> debugging printk output, can you show me exactly what the kernel said
> with your debugging statements?  (even better yet, tell me the machine
> where you did this poking so I can go on and snoop around :-)

When I add 

printk("sys32_ioctl(before switch): cmd(%#010x) "
"SOUND_MIXER_READ_DEVMASK(%#010x)\n",cmd,SOUND_MIXER_READ_DEVMASK);

before the switch, and the same surrounding the case in question, I get:

Apr 12 00:40:42 localhost kernel: sys32_ioctl(before switch):
cmd(0x80047482) SOUND_MIXER_READ_DEVMASK(0x20044dfe)
Apr 12 00:40:42 localhost kernel: sys32_ioctl(before case):
cmd(0x80047482) SOUND_MIXER_READ_DEVMASK(0x20044dfe)
Apr 12 00:40:42 localhost kernel: sys32_ioctl(after case): cmd(0x80047482)
SOUND_MIXER_READ_DEVMASK(0x20044dfe)

for most ioctl()'s,  And when I actually try and use
SOUND_MIXER_READ_DEVMASK I get:

Apr 12 00:40:42 localhost kernel: sys32_ioctl(before switch):
cmd(0x40044dfe) SOUND_MIXER_READ_DEVMASK(0x20044dfe)
Apr 12 00:40:42 localhost kernel: sys32_ioctl: Unknown cmd fd(3)
cmd(40044dfe) arg(0002563c)

Which seems strange to me in itself, because It doesn't look like its
actually hitting that case.  Unfortunatly, this is on a friend's box, not
a box at work (being as I'm a tech support person, not a developer ;)

Also (maybe useful) if I go change aumix, so that its got:

printf("SOUND_MIXER_READ_DEVMASK(%#010x)\n",SOUND_MIXER_READ_DEVMASK);
        if (ioctl(mixer_fd, SOUND_MIXER_READ_DEVMASK, &devmask))
                return (3);

I get:

SOUND_MIXER_READ_DEVMASK(0x20044dfe)

out of aumix, and 

Apr 12 08:36:30 localhost kernel: sys32_ioctl: Unknown cmd fd(4) 
cmd(40044dfe) arg(0002563c)

out of the kernel.  (Unfortunatly, I already booted back to a kernel
that didn't obscenely log on every ioctl() .  I'll try that again later) 

Its looking like if I do ioctl(mixer_fd,0x20044dfe,&devmask), it doesn't
seem to do that, which is strange as well.  I'll test this again once I
rebuild that debug kernel later.  *sigh*.  Off too meetings now.

If I'm completely nuts, let me know. Hell, if you think you can talk them
to letting me go buy one of these cards and stick it on one of the boxes
in the testlab so you can look at this, let me know ;)

 -- Peter

"Don't everyone thank me at once!"
		-- Solo
