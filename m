From: Bj|rn Augustsson <d3august@dtek.chalmers.se>
Date: Sun, 28 Jun 1998 20:46:04 +0000
Subject: Boot failure on U60
Message-Id: <marc-linux-ultrasparc-90222357631042@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

When trying out Ultrapenguin on a new 360Mhz Ultra 60, it couldn't find
the SCSI controllers:
(Copied by hand, but I doublechecked all the numbers.)
(Empty lines added by me for clarity)

<6> ncr53c8xx : at PCI bus 0 device 3, function 0
<6> ncr53c8xx : 53c875 detected
<6> ncr53c8xx : at PCI bus 0 device 3, function 1
<6> ncr53c8xx : 53c875 detected

<6> ncr53c875-0 : rev = 0x14, base = 0x1ff80010000, io_port = 0xfffff9fe02010400, irq = 0xc30007e0
<4> ncr53c875-0 : NCR clock is 40037 kHz, 40218 kHz
<6> ncr53c875-0 : ID 7, Fast-20, parity checking
<6> ncr53c875-0 : onboard RAM at 0x1ff80012000
<4> CACHE TEST FAILED! script execution failed
<4> start = a20d7818, pc = a20d7820, end = a20d7844
<4> CACHE INCORRECTLY CONFIGURED
<4> ncr53c875 : detaching...

<6> ncr53c875-0 : rev = 0x14, base = 0x1ff80014000, io_port = 0xfffff9fe02010800, irq = 0xc30007e6
<4> ncr53c875-0 : NCR clock is 40037 kHz, 40218 kHz
<6> ncr53c875-0 : ID 7, Fast-20, parity checking
<6> ncr53c875-0 : onboard RAM at 0x1ff80012000
<4> CACHE TEST FAILED! script execution failed
<4> start = a20d7818, pc = a20d7820, end = a20d7844
<4> CACHE INCORRECTLY CONFIGURED
<4> ncr53c875 : detaching...

<4> scsi : 0 hosts
	 : detected total.

And then the RH installer stops after the SCSI detection fails.

I used the tftpboot.img from 
ftp://ultra.linux.cz/OS/Linux/Sparc/ultrapenguin-1.0.9/sparc64/images/

Another thing I noticed while reading the boot messages:
(This is the same on a few other sparcs running linux I have seen.)

<6> kbd/mose serial driver version 1.0
<6> su(kbd) at fffff9ff913083f8 (irq = c4800029 ) is a 16550A
<4> Sun TYPE 4 keyboard without keyclick

This is a type 5 keyboard. It still works though.

(Also, I got the "Couldn't get translation property" message on an E450
 I tried.)

/August.
-- 
-----BEGIN MOF (My Own Forehead) SIGNATURE----
yt6g7bfr5de5gy6bh7unjim8kojm7ynh6btgvfrcdeuy7ji87jy6htbgvrf5ced5t6gy7uhnji8
67gyf8u7jyhi7y67h9mkHjjfufhg7unji8mkhyb6tgvrfcdeg6yb7hunj87yu8jikmoyh
-----END MOF SIGNATURE-----
