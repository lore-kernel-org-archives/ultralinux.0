From: "Pat O'Rourke" <orourke@missioncriticallinux.com>
Date: Fri, 11 Feb 2000 17:08:10 +0000
Subject: serial console
Message-Id: <marc-linux-ultrasparc-95030299721929@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have an Ultra-1 clone whose console is redirected to the serial port,
Console: ttyS0 (SAB82532), however it is only working intermittently when
linux boots.  By "working" I mean no output is seen, nor is any input
possible.

Messages sent directly to the prom seem okay, i.e. at the'ok' prompt or via
prom_printf() calls.  I tried various incantations of the serial= option to
noavail.  This problem is only when linux is booted, if I shutdown the OS
the console comes back and I can interact with OBP.

It seems that if I power cycle the machine the serial console will work,
but on subsequent reboots it does not.  Has anyone else encountered this?
The behavior is the same whether I am booting a 2.2.x or 2.3.x kernel.

Any suggestions would be greatly appreciated.

Thanks in advance,

Pat

-- 
Patrick O'Rourke
orourke@missioncriticallinux.com
