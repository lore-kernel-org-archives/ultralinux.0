From: Kapil Chowksey <kchowksey@hss.hns.com>
Date: Sun, 05 Jul 1998 06:20:08 +0000
Subject: openboot question
Message-Id: <marc-linux-ultrasparc-90222358530997@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I am trying to debug the ultralinux kernel (sparc64 using prom ver
3.0). After doing a dload, I try to disassemble, but it just shows a
bunch of illtraps.

ok 4000 dload /tftpboot/vmlinux.aout

ok 404000 dis
<Shows a bunch of illtrap instructions>

ok 404000 map?
<shows PADDR = 404000>

Is the `map?' command using dTLB entries ? How can I see which
Physical Addr does the vaddr 404000 map to in the iTLB ?

Also, setting a breakpoint to 404000 has no effect.

I would be grateful if someone can explain how to read the iTLB
mappings to specify the correct physical address in the `dis' command.

-- 
Kapil Chowksey                         Viva GNU !
kchowksey@hss.hns.com
