From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sun, 18 Oct 1998 04:47:55 +0000
Subject: Re: sparc32 2.1.121 problems
Message-Id: <marc-linux-ultrasparc-90870069522231@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90682217607462@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90682217607462@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 26 Sep 1998, Derrick J Brashear wrote:

> also, i saw someone complaining of it about their PC on linux-kernel, so
> this may not be any of us, but Brent complained when he was testing that
> the dbri module usage went negative, and that it appeared the release
> function was called a few times when it shouldn't have been, apparently
> when the fd referring to the audio device was dup'd and then the parent
> closed it's copy. i've observed that, but haven't yet been able to come up

Now, I can reproduce the negative module use count. 
[root@panaphonics ~]# lsmod
Module                  Size  Used by
amd7930                 7872   0  (unused)
audio                   9252   1  [amd7930]
autofs                  9432   1  (autoclean)
[root@panaphonics ~]# cat /usr/tmp/eclipse.au > /dev/audio

[root@panaphonics ~]# lsmod
Module                  Size  Used by
amd7930                 7872  -2 
audio                   9252  -1  [amd7930]
autofs                  9432   1  (autoclean)

I had instrumented the audio module, and I see:
Oct 18 00:41:54 panaphonics kernel: increasing module use in register
Oct 18 00:41:54 panaphonics kernel: amd7930 at 0xfd017000 irq 61
Oct 18 00:42:39 panaphonics kernel: increasing module use in open for 4
Oct 18 00:42:39 panaphonics kernel: decreasing module use in release
Oct 18 00:42:45 panaphonics last message repeated 2 times

So release is apparently being called too often. Am I supposed to be doing
something in release to make sure it's not being called bogusly, or is
something else broken? 

(Of course, now I can't unload the damn module either)

-D
