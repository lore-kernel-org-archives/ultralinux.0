From: christ <fool@dfw.net>
Date: Wed, 31 Mar 1999 23:25:10 +0000
Subject: Re:  Two newbie questions
Message-Id: <marc-linux-ultrasparc-92292314505123@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92288903607919@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92288903607919@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>1) I installed the UltraPenguin 1.1.9 with a 2.2.2 kernel on my
>SparcStation 4 machine. Everything goes pretty smooth until I using
>X. Then unpredictably the X server breaks and the only thing left is
>the gpm cursor on the screen. The machine is still up  but the
>only way to get back to text mode is  to logon from remote and
>re-start the X server and then move back locally to text mode. I tried 
>to use a GCX video card instead of TCX built-in but the X server still
>breaks. Any hint ? Are  there any updates to the X server ? Again, the
>system is a  vanilla UltraPenguin 1.1.9

i've experienced the same problem on the tcx server...i didn't report it
because i actually got around to recompiling the Xserver with -g and not
stripping it, but never  managed to actually start debugging the problem.
(ss4, builtin tcx 8bit).  exact same post-crash symptoms, but the keyboard
won't work for VC switching...remote login & startx fixes the keyboard
and the machine keeps running..
