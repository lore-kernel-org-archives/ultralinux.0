From: Stephane Bortzmeyer <stephane@laperouse.internatif.org>
Date: Tue, 09 Dec 2003 05:50:50 +0000
Subject: Installing Linux on a E250 with serial console: cannot get the boot prompt
Message-Id: <marc-linux-ultrasparc-107094852316886@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello, everybody,

I try to boot a Sun E250 which has no monitor or keyboard. Following
the instructions in the UltraLinux FAQ
<URL:http://www.ultralinux.org/faq.html>, I configured a PC with
FreeBSD and minicom to act as the serial console. (I also tried
minicom on a RedHat, without more success.)

When I power on the machine in the Diagnostics position, I see the
boot messages. So my cables and emulator are OK. But sending Break
with Ctrl-A F does not seem to have any result: I cannot get the boot
prompt (ok).

When I power on the machine in Power-On mode, I get nothing on the
screen, not one message.

Last screen of messages in Diagnostics mode (after that, nothing
moves):

Primary I/O probing
Probing /pci@1f,4000 at Device 1  network
Probing /pci@1f,4000 at Device 3  scsi disk tape scsi disk tape
Probing /pci@1f,4000 at Device 2  Nothing there
Probing /pci@1f,4000 at Device 4  Nothing there
Probing /pci@1f,4000 at Device 5  Nothing there
Probing /pci@1f,2000 at Device 0  This slot excluded from probing...
Probing /pci@1f,2000 at Device 1  Nothing there
Probing /pci@1f,2000 at Device 2  Nothing there
Probing /pci@1f,2000 at Device 3  Nothing there
Probing /pci@1f,2000 at Device 4  Nothing there
Probing /pci@1f,2000 at Device 5  Nothing there

