From: Gert Doering <gert@greenie.muc.de>
Date: Tue, 10 Aug 1999 19:01:19 +0000
Subject: Re: serial port overrruns
Message-Id: <marc-linux-ultrasparc-93434886014910@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93396885301754@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93396885301754@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

On Fri, Aug 06, 1999 at 02:28:21PM -0600, Raymond Hall H. wrote:
> I'm running mgetty on an Enterprise 3000 for UUCP mail.
> The modem is a V.42 USR.
> On ocassions, when recieving a call, the machine literally freezes.
> I have to log via console, send it a break and when at the prom prompt, 
> before typing "go", reset the modem. After resuming system operation, I 
> get a console message saying ttyS1: 1 input overrun(s).

Interesting indeed.  I have no idea what could be causing this (but
then, I'm only a mgetty hacker, not a Linux kernel hacker).

I can say, though, that mgetty isn't doing anything "weird" - just
normal POSIX tty access (tcgetattr etc.).

When exactly does the "freeze" appear?  At "modem rings" time, or when
the user has already logged in?  At logout time (DCD dropping)?

gert
-- 
Gert Doering
Mobile communications ... right now writing from *Braunschweig* :-)) 
... mobile phone: +49 177 2160221 ... or mail me:  gert@greenie.muc.de
