From: TSP SD AKIMOTO DAISUKE <akimoto.qj004@ex.tel.co.jp>
Date: Thu, 10 Dec 1998 07:17:02 +0000
Subject: How do I compile the kernel? (make redirection)
Message-Id: <marc-linux-ultrasparc-91337187917169@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Error details.
 
ld -m elf64_sparc -T arch/sparc64/vmlinux.lds arch/sparc64/kernel/head.o
arch/sparc64/kernel/init_task.o init/main.o init/version.o \
	arch/sparc64/kernel/kernel.o arch/sparc64/mm/mm.o kernel/kernel.o
mm/mm.o fs/fs.o ipc/ipc.o arch/sparc64/math-emu/math-emu.o \
	fs/filesystems.a \
	net/network.a \
	drivers/block/block.a drivers/char/char.a drivers/misc/misc.a
drivers/net/net.a drivers/scsi/scsi.a drivers/cdrom/cdrom.a drivers/pci/pci.
a drivers/sbus/sbus.a drivers/video/video.a \
	/usr/src/linux-2.1.131/lib/lib.a /usr/src/linux-2.1.131/lib/lib.a
/usr/src/linux-2.1.131/arch/sparc64/prom/promlib.a
/usr/src/linux-2.1.131/arch/sparc64/lib/lib.a \
	-o vmlinux
drivers/char/char.a(console.o): In function `tioclinux':
console.o(.text+0x6234): undefined reference to `shift_state'
console.o(.text+0x6238): undefined reference to `shift_state'
drivers/char/char.a(vt.o): In function `vt_ioctl':
vt.o(.text+0x7f4): undefined reference to `key_maps'
vt.o(.text+0x7f8): undefined reference to `key_maps'
vt.o(.text+0x834): undefined reference to `NR_TYPES'
vt.o(.text+0x838): undefined reference to `NR_TYPES'
vt.o(.text+0x88c): undefined reference to `NR_TYPES'
vt.o(.text+0x894): undefined reference to `key_maps'
vt.o(.text+0x898): undefined reference to `key_maps'
vt.o(.text+0x8dc): undefined reference to `keymap_count'
vt.o(.text+0x8e0): undefined reference to `keymap_count'
vt.o(.text+0x8f4): undefined reference to `NR_TYPES'
vt.o(.text+0x8f8): undefined reference to `NR_TYPES'
vt.o(.text+0x90c): undefined reference to `max_vals'
vt.o(.text+0x914): undefined reference to `max_vals'
vt.o(.text+0x954): undefined reference to `key_maps'
vt.o(.text+0x958): undefined reference to `key_maps'
vt.o(.text+0x970): undefined reference to `keymap_count'
vt.o(.text+0x974): undefined reference to `keymap_count'
vt.o(.text+0x9d0): undefined reference to `key_maps'
vt.o(.text+0x9d4): undefined reference to `key_maps'
vt.o(.text+0xa0c): undefined reference to `keymap_count'
vt.o(.text+0xa10): undefined reference to `keymap_count'
vt.o(.text+0xb14): undefined reference to `func_table'
vt.o(.text+0xb1c): undefined reference to `func_table'
vt.o(.text+0xba4): undefined reference to `func_table'
vt.o(.text+0xba8): undefined reference to `funcbufptr'
vt.o(.text+0xbac): undefined reference to `funcbufsize'
vt.o(.text+0xbb0): undefined reference to `funcbufleft'
vt.o(.text+0xbb8): undefined reference to `funcbufleft'
vt.o(.text+0xbc0): undefined reference to `funcbufsize'
vt.o(.text+0xbc8): undefined reference to `func_table'
vt.o(.text+0xbcc): undefined reference to `funcbufptr'
vt.o(.text+0xc48): undefined reference to `func_table'
vt.o(.text+0xc50): undefined reference to `func_table'
vt.o(.text+0xc80): undefined reference to `funcbufleft'
vt.o(.text+0xc84): undefined reference to `funcbufleft'
vt.o(.text+0xc90): undefined reference to `funcbufsize'
vt.o(.text+0xcb0): undefined reference to `func_table'
vt.o(.text+0xcb8): undefined reference to `func_table'
vt.o(.text+0xce8): undefined reference to `funcbufleft'
vt.o(.text+0xcec): undefined reference to `func_table'
vt.o(.text+0xcf4): undefined reference to `func_table'
vt.o(.text+0xd00): undefined reference to `funcbufleft'
vt.o(.text+0xd04): undefined reference to `funcbufleft'
vt.o(.text+0xd18): undefined reference to `funcbufsize'
vt.o(.text+0xd60): undefined reference to `funcbufptr'
vt.o(.text+0xd64): undefined reference to `func_table'
vt.o(.text+0xd6c): undefined reference to `func_table'
vt.o(.text+0xd78): undefined reference to `funcbufptr'
vt.o(.text+0xd7c): undefined reference to `funcbufptr'
vt.o(.text+0xda8): undefined reference to `func_table'
vt.o(.text+0xdb0): undefined reference to `func_table'
vt.o(.text+0xdec): undefined reference to `funcbufptr'
vt.o(.text+0xdf0): undefined reference to `funcbufptr'
vt.o(.text+0xe20): undefined reference to `funcbufptr'
vt.o(.text+0xe24): undefined reference to `func_table'
vt.o(.text+0xe30): undefined reference to `func_table'
vt.o(.text+0xe68): undefined reference to `funcbufptr'
vt.o(.text+0xe6c): undefined reference to `funcbufptr'
vt.o(.text+0xe74): undefined reference to `func_buf'
vt.o(.text+0xe78): undefined reference to `func_buf'
vt.o(.text+0xe84): undefined reference to `funcbufsize'
vt.o(.text+0xe88): undefined reference to `funcbufsize'
vt.o(.text+0xe98): undefined reference to `funcbufleft'
vt.o(.text+0xe9c): undefined reference to `funcbufleft'
vt.o(.text+0xea0): undefined reference to `funcbufsize'
vt.o(.text+0xea8): undefined reference to `funcbufsize'
vt.o(.text+0xec4): undefined reference to `func_table'
vt.o(.text+0xecc): undefined reference to `func_table'
vt.o(.text+0xee8): undefined reference to `accent_table_size'
vt.o(.text+0xeec): undefined reference to `accent_table_size'
vt.o(.text+0xf00): undefined reference to `accent_table'
vt.o(.text+0xf08): undefined reference to `accent_table'
vt.o(.text+0xf40): undefined reference to `accent_table_size'
vt.o(.text+0xf48): undefined reference to `accent_table'
vt.o(.text+0xf4c): undefined reference to `accent_table_size'
vt.o(.text+0xf54): undefined reference to `accent_table'
drivers/sbus/sbus.a(sunchar.o): In function `keyboard_wait_for_keypress':
sunchar.o(.text+0x24): undefined reference to `keypress_wait'
sunchar.o(.text+0x2c): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o): In function `sunkbd_inchar':
sunchar.o(.text+0x508): undefined reference to `shift_state'
sunchar.o(.text+0x524): undefined reference to `shift_state'
sunchar.o(.text+0x530): undefined reference to `shift_state'
sunchar.o(.text+0x540): undefined reference to `key_maps'
sunchar.o(.text+0x548): undefined reference to `key_maps'
drivers/sbus/sbus.a(sunchar.o): In function `put_queue':
sunchar.o(.text+0x644): undefined reference to `keypress_wait'
sunchar.o(.text+0x650): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o): In function `puts_queue':
sunchar.o(.text+0x744): undefined reference to `keypress_wait'
sunchar.o(.text+0x750): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o): In function `handle_diacr':
sunchar.o(.text+0xfe4): undefined reference to `accent_table_size'
sunchar.o(.text+0xfe8): undefined reference to `accent_table_size'
sunchar.o(.text+0xff8): undefined reference to `accent_table'
sunchar.o(.text+0x1004): undefined reference to `accent_table'
drivers/sbus/sbus.a(sunchar.o): In function `do_fn':
sunchar.o(.text+0x10cc): undefined reference to `func_table'
sunchar.o(.text+0x10d4): undefined reference to `func_table'
drivers/sbus/sbus.a(sunchar.o): In function `do_shift':
sunchar.o(.text+0x1384): undefined reference to `shift_state'
sunchar.o(.text+0x1390): undefined reference to `shift_state'
sunchar.o(.text+0x1438): undefined reference to `shift_state'
sunchar.o(.text+0x143c): undefined reference to `shift_state'
sunchar.o(.text+0x1458): undefined reference to `shift_state'
drivers/sbus/sbus.a(sunchar.o)(.text+0x145c): more undefined references to
`shift_state' follow
drivers/sbus/sbus.a(sunchar.o): In function `sun_compute_shiftstate':
sunchar.o(.text+0x14f8): undefined reference to `plain_map'
sunchar.o(.text+0x1504): undefined reference to `plain_map'
sunchar.o(.text+0x1508): undefined reference to `shift_state'
sunchar.o(.text+0x1510): undefined reference to `shift_state'
drivers/sbus/sbus.a(sunchar.o): In function `sunkbd_install_keymaps':
sunchar.o(.text+0x37d4): undefined reference to `key_maps'
sunchar.o(.text+0x37dc): undefined reference to `key_maps'
sunchar.o(.text+0x386c): undefined reference to `keymap_count'
sunchar.o(.text+0x3870): undefined reference to `func_table'
sunchar.o(.text+0x3878): undefined reference to `keymap_count'
sunchar.o(.text+0x387c): undefined reference to `func_table'
sunchar.o(.text+0x389c): undefined reference to `funcbufptr'
sunchar.o(.text+0x38a0): undefined reference to `funcbufptr'
sunchar.o(.text+0x38a4): undefined reference to `funcbufsize'
sunchar.o(.text+0x38ac): undefined reference to `funcbufleft'
sunchar.o(.text+0x38b4): undefined reference to `accent_table'
sunchar.o(.text+0x38b8): undefined reference to `funcbufsize'
sunchar.o(.text+0x38bc): undefined reference to `accent_table'
sunchar.o(.text+0x38c0): undefined reference to `funcbufleft'
sunchar.o(.text+0x3900): undefined reference to `accent_table_size'
sunchar.o(.text+0x3908): undefined reference to `accent_table_size'
drivers/sbus/sbus.a(sunchar.o): In function `zs_interrupt':
sunchar.o(.text+0x3d54): undefined reference to `keypress_wait'
sunchar.o(.text+0x3d68): undefined reference to `keypress_wait'
sunchar.o(.text+0x4434): undefined reference to `keypress_wait'
sunchar.o(.text+0x4448): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o): In function `zs_console_wait_key':
sunchar.o(.text+0x89e4): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o)(.text+0x89ec): more undefined references to
`keypress_wait' follow
drivers/sbus/sbus.a(sunchar.o): In function `pcikbd_interrupt':
sunchar.o(.text+0xcd84): undefined reference to `kbd_pt_regs'
sunchar.o(.text+0xcd88): undefined reference to `kbd_pt_regs'
sunchar.o(.text+0xcdfc): undefined reference to `handle_scancode'
drivers/sbus/sbus.a(sunchar.o): In function `sab82532_interrupt':
sunchar.o(.text+0xe1c0): undefined reference to `keypress_wait'
sunchar.o(.text+0xe1c8): undefined reference to `keypress_wait'
sunchar.o(.text+0xec40): undefined reference to `keypress_wait'
sunchar.o(.text+0xec48): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o): In function `sab82532_console_wait_key':
sunchar.o(.text+0x128a4): undefined reference to `keypress_wait'
drivers/sbus/sbus.a(sunchar.o)(.text+0x128ac): more undefined references to
`keypress_wait' follow
drivers/sbus/sbus.a(sunchar.o): In function `ps2kbd_probe':
sunchar.o(.text.init+0x82b8): undefined reference to `pcikbd_init'
sunchar.o(.text.init+0x82c4): undefined reference to `pcikbd_init'
sunchar.o(.text.init+0x82cc): undefined reference to
`pci_compute_shiftstate'
sunchar.o(.text.init+0x82d4): undefined reference to `pci_setledstate'
sunchar.o(.text.init+0x82d8): undefined reference to
`pci_compute_shiftstate'
sunchar.o(.text.init+0x82dc): undefined reference to `pci_getledstate'
sunchar.o(.text.init+0x82e4): undefined reference to `pci_setledstate'
sunchar.o(.text.init+0x82e8): undefined reference to `pci_setkeycode'
sunchar.o(.text.init+0x82ec): undefined reference to `pci_getledstate'
sunchar.o(.text.init+0x82f4): undefined reference to `pci_setkeycode'
sunchar.o(.text.init+0x82fc): undefined reference to `pci_getkeycode'
sunchar.o(.text.init+0x8304): undefined reference to `pci_getkeycode'
make: *** [vmlinux] Error 1

Best regards,

Tokyo Electron Sapporo Limited
Daisuke Akimoto
