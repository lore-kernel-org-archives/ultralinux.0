From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Mon, 12 Apr 1999 13:22:12 +0000
Subject: Re: Another Brute Force And Ignorance(tm) derived question...
Message-Id: <marc-linux-ultrasparc-92392640729141@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92387605531299@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92387605531299@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> When I add 
> 
> printk("sys32_ioctl(before switch): cmd(%#010x) "
> "SOUND_MIXER_READ_DEVMASK(%#010x)\n",cmd,SOUND_MIXER_READ_DEVMASK);

I think you wrote in some other mail that strace prints out 0x40044dfe, thus
it has really no value to look for bugs in the kernel.
Either gcc is broken, or you have some problems with includes, or whatever.
Anyway, what distribution is it? UP, BlueSky or what?

On UP1.1.9, I get
open("/dev/mixer", O_RDWR)              = 7
ioctl(7, 0x20044dfe, 0x25a20)           = -1 ENOTTY (Inappropriate ioctl for device)
and no kernel errors from that ioctl (ENOTTY because my /dev/mixer is ->
/dev/null, no soundcard here).

So, I'd suggest carefully looking at gcc -E output and step through it with
gdb.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
UltraLinux  |  http://ultra.linux.cz/  |  http://ultra.penguin.cz/
Linux version 2.2.5 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
