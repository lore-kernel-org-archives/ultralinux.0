From: Kris Boulez <kris@belbone.be>
Date: Tue, 28 Jul 1998 14:24:33 +0000
Subject: Oops when starting X (2.1.111)
Message-Id: <marc-linux-ultrasparc-90222358531094@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This is using the latest CVS kernel. When starting up X 'startx' I
get the following Oops

 Unable to handle kernel paging request at virtual address 000000000022a000
 tsk->mm->context = 0000000000000000
 tsk->mm->pgd = fffff8000000ec00
               \|/ ____ \|/
               "@'/ .. \`@"
               /_| \__/ |_\
                  \__U_/
 X(369): Oops
 TSTATE: 0000000080009602 TPC: 0000000000576130 TNPC: 0000000000576134 Y: 00000000
 g0: fffff80000000000 g1: 00000000bffffc00 g2: 000000000022b280 g3: 000000000036b7c0
 g4: fffff80000000000 g5: 0000000000000000 g6: fffff80032d54000 g7: 0000000000000000
 o0: fffff9ff20700000 o1: fffff80033f52000 o2: 0000000000645640 o3: 0000000000019c36
 o4: 000000000060c318 o5: 000000000000670d sp: fffff80032d57291 ret_pc: 0000000000573df8
 l0: 0000000000000000 l1: 0000000000000000 l2: 0000000000000000 l3: 0000000000000000
 l4: 0000000000000001 l5: 0000000000000000 l6: 0000000000000000 l7: 0000000000000000
 i0: fffff80033f52000 i1: fffff80033f52000 i2: 0000000000573d80 i3: fffff8003388f870
 i4: 0000000000000000 i5: fffff80033126640 i6: fffff80032d57331 i7: 00000000004eeb08
 Caller[00000000004eeb08]
 Caller[000000000044d384]
 Caller[000000000044d418]
 Caller[000000000043bf6c]
 Caller[0000000000428ce8]
 Caller[000000000040f00c]
 Caller[0000000000017a64]
 Instruction DUMP: c45a6358  c020a0e0  c45a6358 <c020a0e4> c4026330  c65a6358  8400bfff  c420e0f0  c402632c 

I can't get ksymoops to compile, so no more info :(.

The relevant configure values

 # CONFIG_PROM_CONSOLE is not set
 CONFIG_FB=y
 CONFIG_DUMMY_CONSOLE=y
 CONFIG_FB_SBUS=y
 # CONFIG_FB_CREATOR is not set
 CONFIG_FB_CGSIX=y
 # CONFIG_FB_BWTWO is not set
 # CONFIG_FB_CGTHREE is not set
 CONFIG_FB_PCI=y
 CONFIG_FB_ATY=y
 # CONFIG_FB_VIRTUAL is not set
 CONFIG_FBCON_ADVANCED=y
 # CONFIG_FBCON_MFB is not set
 # CONFIG_FBCON_CFB2 is not set
 # CONFIG_FBCON_CFB4 is not set
 CONFIG_FBCON_CFB8=y
 CONFIG_FBCON_CFB16=y
 CONFIG_FBCON_CFB24=y
 CONFIG_FBCON_CFB32=y
 # CONFIG_FBCON_AFB is not set
 # CONFIG_FBCON_ILBM is not set
 # CONFIG_FBCON_IPLAN2P2 is not set
 # CONFIG_FBCON_IPLAN2P4 is not set
 # CONFIG_FBCON_IPLAN2P8 is not set
 # CONFIG_FBCON_MAC is not set
 CONFIG_FBCON_VGA=y
 CONFIG_FBCON_FONTWIDTH8_ONLY=y
 CONFIG_FONT_SUN8x16=y
 # CONFIG_FBCON_FONTS is not set
 CONFIG_SBUS=y
 CONFIG_SBUSCHAR=y
 CONFIG_SUN_MOUSE=y
 CONFIG_SERIAL=y
 CONFIG_SUN_SERIAL=y
 CONFIG_SERIAL_CONSOLE=y
 CONFIG_SUN_KEYBOARD=y
 CONFIG_SUN_CONSOLE=y
 CONFIG_SUN_AUXIO=y
 CONFIG_SUN_IO=y
 CONFIG_PCI=y
 CONFIG_PCI_CONSOLE=y
 CONFIG_SUN_OPENPROMIO=m
 CONFIG_SUN_MOSTEK_RTC=y
 CONFIG_SAB82532=y
 CONFIG_OBP_FLASH=m
 
If one needs more info, feel free to ask.

Kris,
-- 
Kris Boulez				kris@belbone.be
