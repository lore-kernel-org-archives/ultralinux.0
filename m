From: "Raymond Hall H." <kovalski@ife.org.mx>
Date: Tue, 10 Aug 1999 17:27:35 +0000
Subject: serial port overrruns
Message-Id: <marc-linux-ultrasparc-93436743328656@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93396885301754@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93396885301754@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I'm running mgetty on an Enterprise 3000 for UUCP mail.
The modem is a V.42 USR.
On ocassions, when recieving a call, the machine literally freezes.
I have to log via console, send it a break and when at the prom prompt, 
before typing "go", reset the modem. After resuming system operation, I 
get a console message saying ttyS1: 1 input overrun(s).

The serials report:
Jul 13 20:34:31 andromeda kernel: Sparc Zilog8530 serial driver version 1.40
Jul 13 20:34:31 andromeda kernel: tty00 at 0xf0902004 (irq = 12,2b9) is a 
Zilog8530
Jul 13 20:34:31 andromeda kernel: tty01 at 0xf0902000 (irq = 12,2b9) is a 
Zilog8530
Jul 13 20:34:31 andromeda kernel: tty02 at 0xf0904004 (irq = 12,2b9) is a 
Zilog8530
Jul 13 20:34:31 andromeda kernel: tty03 at 0xf0904000 (irq = 12,2b9) is a 
Zilog8530

My worry comes not so much from the overrun itself or from loosing data, 
but from the machine hanging when this happens.

I'd appreciate any suggestions. 
Thanks,
Raymond Hall
