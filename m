From: Guglielmo Bondioni <bond@informex.it>
Date: Thu, 04 May 2000 08:33:20 +0000
Subject: Re: Help!! sparc Ultra5 w/ RH6.1 crashing
Message-Id: <marc-linux-ultrasparc-95742960200813@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95736359507836@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95736359507836@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

1) I saw that Debian reported security problems with proftpd 1.2.0pre9.
Anyway I see that you are using 1.2.0pre10 so the problems SHOULD NOT
apply to your case.

2) Just a hint: the process IDs of the probed server in your log approach
32768, which was the PID limit for old kernels. Once reached the limit,
the PID numbers should wrap around. Maybe there's a little bug here...
But this seems unlikely too. Sorry, I'm no kernel hacker.

3) On Suns you don't press ctrl-alt-del to bring them down.
The key combination for halting the kernel is Stop-A (that is, keep the
Stop (sometimes labeled L1) key depressed and press the key A). At this
point the kernel is halted and you get the 'ok ' prompt.
But this is maybe not so useful in your case.
You should enable the 'magic sysrq keys' in you kernel configuration.
These are key combinations that enable you to kill processes, sync and/or
unmount filesystems, reboot etc., even if the kernel is in real strife.
See /usr/src/linux/Documentation/sysrq.txt

cheers,

bond
