From: Valery Brasseur <vbrasseur@laposte.net>
Date: Thu, 01 Mar 2001 13:26:25 +0000
Subject: netra T1 200 config info
MIME-Version: 1
Content-Type: multipart/mixed; boundary="------------18D482C9E4DFAF6A516428A7"
Message-Id: <marc-linux-ultrasparc-98345318728530@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

This is a multi-part message in MIME format.
--------------18D482C9E4DFAF6A516428A7
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

here is result of uname -a for a Netra T1 200 :
SunOS livingston 5.8 Generic_108528-04 sun4u sparc SUNW,UltraAX-i2

and in attach file the output of prtconf on solaris 2.8

is anybody can tell me if I can try something to boot up this CPU in
Linux ?
is there something unsupported which can block me ?


-- 
Valery BRASSEUR                | Phone # +33 320 60 7982 
Atos Branche Multimedia        | Fax   # +33 320 60 7649
Ce que vous voyez est tout ce que vous obtenez
  -- Brian Kernigham
--------------18D482C9E4DFAF6A516428A7
Content-Type: text/plain; charset=iso-8859-1;
 name="prtconf.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline;
 filename="prtconf.txt"

System Configuration:  Sun Microsystems  sun4u
Memory size: 512 Megabytes
System Peripherals (PROM Nodes):

Node 0xf002a63c
    boot-retained-page:  =

    interrupt-map:  0000003c.00000000.00000000.f0068b38.80000033
    interrupt-map-mask:  0000003e.00000000.00000000
    #interrupt-cells:  00000001
    idprom:  01800800.20fd5006.00000000.fd5006a9.00000000.00000000.000000=
00.00000000
    scsi-initiator-id:  00000007
    reset-reason:  'S-POR'
    breakpoint-trap:  0000007f
    #size-cells:  00000002
    model:  'SUNW,375-0132'
    name:  'SUNW,UltraAX-i2'
    clock-frequency:  05f5e100
    banner-name:  'Netra T1 200 (UltraSPARC-IIe 500MHz)'
    compatible: 'sun4u'
    device_type:  'upa'
    stick-frequency:  00a98ac7

    Node 0xf002d8cc
        name:  'packages'

        Node 0xf0035dd0
            iso6429-1983-colors:  =

            name:  'terminal-emulator'

        Node 0xf0038e14
            disk-write-fix:  =

            name:  'deblocker'

        Node 0xf0039514
            name:  'obp-tftp'

        Node 0xf0044644
            name:  'disk-label'

        Node 0xf0058fc4
            name:  'SUNW,builtin-drivers'

        Node 0xf0062650
            source:  '/pci@1f,0/pci@1,1/ebus@c/flashprom@10,0:'
            name:  'dropins'

        Node 0xf007466c
            name:  'kbd-translator'

        Node 0xf00ac974
            support:  =

            name:  'ufs-file-system'

    Node 0xf002d93c
        mmu:  fffe7ae0
        memory:  fffe7ce0
        bootargs:  00
        bootpath:  '/pci@1f,0/pci@1/scsi@8/disk@0,0:a'
        stdout:  fffb7718
        stdin:  fffb79e0
        stdout-#lines:  ffffffff
        name:  'chosen'

    Node 0xf002d9a8
        version: 'OBP 4.0.3 2001/01/03 15:05'
        model:  'SUNW,4.0'
        aligned-allocator:  =

        relative-addressing:  =

        name:  'openprom'

        Node 0xf002da38
            name:  'client-services'

    Node 0xf002dae0
        ras-shutdown-enabled?:  'false'
        shutdown-temp:  '85'
        warning-temp:  '80'
        env-monitor:  'disabled'
        diag-passes:  '1'
        diag-continue?:  '0'
        diag-targets:  '0'
        diag-verbosity:  '0'
        keyboard-click?:  'false'
        keymap:  =

        scsi-initiator-id:  '7'
        #power-cycles:  '0'
        system-board-serial#:  =

        system-board-date:  =

        ttyb-rts-dtr-off:  'false'
        ttyb-ignore-cd:  'true'
        ttya-rts-dtr-off:  'false'
        ttya-ignore-cd:  'true'
        ttyb-mode:  '9600,8,n,1,-'
        ttya-mode:  '9600,8,n,1,-'
        pcia-probe-list:  '8,5,6,7'
        pcib-probe-list:  '7,c,3,d,5'
        mfg-mode:  'off'
        diag-level:  'min'
        fcode-debug?:  'false'
        output-device:  'ttya'
        input-device:  'ttya'
        load-base:  '16384'
        boot-command:  'boot'
        auto-boot?:  'true'
        watchdog-reboot?:  'false'
        diag-file:  =

        diag-device:  'net'
        boot-file:  =

        boot-device:  'net'
        local-mac-address?:  'false'
        ansi-terminal?:  'true'
        screen-#columns:  '80'
        screen-#rows:  '34'
        silent-mode?:  'false'
        use-nvramrc?:  'false'
        nvramrc:  =

        security-mode:  'none'
        security-password:  =

        security-#badlogins:  '0'
        oem-logo:  =

        oem-logo?:  'false'
        oem-banner:  =

        oem-banner?:  'false'
        hardware-revision:  =

        last-hardware-update:  =

        diag-switch?:  'false'
        name:  'options'

    Node 0xf002db50
        lom:  '/pci@1f,0/pci@1,1/ebus@c/SUNW,lomh@14,200000'
        dload:  '/pci@1f,0/pci@1,1/network@c,1:,'
        net2:  '/pci@1f,0/pci@1,1/network@5,1'
        net:  '/pci@1f,0/pci@1,1/network@c,1'
        diskx:  '/pci@1f,0/pci@1/scsi@8,1/disk@0,0'
        diskx3:  '/pci@1f,0/pci@1/scsi@8,1/disk@3,0'
        diskx2:  '/pci@1f,0/pci@1/scsi@8,1/disk@2,0'
        diskx1:  '/pci@1f,0/pci@1/scsi@8,1/disk@1,0'
        diskx0:  '/pci@1f,0/pci@1/scsi@8,1/disk@0,0'
        scsix:  '/pci@1f,0/pci@1/scsi@8,1'
        disk:  '/pci@1f,0/pci@1/scsi@8/disk@0,0'
        disk3:  '/pci@1f,0/pci@1/scsi@8/disk@3,0'
        disk2:  '/pci@1f,0/pci@1/scsi@8/disk@2,0'
        disk1:  '/pci@1f,0/pci@1/scsi@8/disk@1,0'
        disk0:  '/pci@1f,0/pci@1/scsi@8/disk@0,0'
        scsi:  '/pci@1f,0/pci@1/scsi@8'
        cdrom:  '/pci@1f,0/pci@1,1/ide@d/cdrom@0,0:f'
        ide:  '/pci@1f,0/pci@1,1/ide@d'
        ttyb:  '/pci@1f,0/pci@1,1/isa@7/serial@0,2e8'
        ttya:  '/pci@1f,0/pci@1,1/isa@7/serial@0,3f8'
        name:  'aliases'

    Node 0xf004f548
        reg:  00000000.00000000.00000000.10000000.00000000.20000000.00000=
000.10000000
        available:  00000000.2fea0000.00000000.00018000.00000000.2f002000=
=2E00000000.002dc000.00000000.2ef80000.00000000.0007e000.00000000.2e00200=
0.00000000.0020e000.00000000.20000000.00000000.0e000000.00000000.00000000=
=2E00000000.10000000
        name:  'memory'

    Node 0xf004fb2c
        translations:  0000030f.ffffe000.00000000.00002000.80000000.2fd00=
036.0000030f.ffffc000.00000000.00002000.80000000.2fcde036.0000030f.ffffa0=
00.00000000.00002000.80000000.2fcd0036.0000030f.ffff8000.00000000.0000200=
0.80000000.2fcb6036.0000030f.ffff6000.00000000.00002000.80000000.2fc14036=
=2E0000030f.ffff4000.00000000.00002000.80000000.2f302036.00000300.002bc00=
0.00000000.00002000.80000000.2f2de036.00000300.002ba000.00000000.00002000=
=2E80000000.2f2e2036.00000300.002b2000.00000000.00008000.80000000.2f2e403=
6.00000300.002ae000.00000000.00004000.80000000.2f2ec036.00000300.002a8000=
=2E00000000.00006000.80000000.2f2f0036.00000300.0029e000.00000000.0000a00=
0.80000000.2f2f6036.00000300.0029c000.00000000.00002000.80000000.2f300036=
=2E00000300.00294000.00000000.00008000.80000000.2f304036.00000300.0029200=
0.00000000.00002000.80000000.2f30c036.00000300.0028c000.00000000.00006000=
=2E80000000.2f30e036.00000300.0028a000.00000000.00002000.80000000.2f31403=
6.00000300.00282000.00000000.00008000.80000000.2f318036.00000300.00280000=
=2E00000000.00002000.80000000.2f320036.00000300.00278000.00000000.0000800=
0.80000000.2f322036.00000300.00276000.00000000.00002000.80000000.2f330036=
=2E00000300.00270000.00000000.00006000.80000000.2f332036.00000300.0026000=
0.00000000.00010000.80000000.2f338036.00000300.0025a000.00000000.00006000=
=2E80000000.2f350036.00000300.00256000.00000000.00004000.80000000.2f35603=
6.00000300.0024c000.00000000.0000a000.80000000.2f35c036.00000300.00240000=
=2E00000000.0000c000.80000000.2f366036.00000300.00200000.00000000.0004000=
0.80000000.2f374036.00000300.001fa000.00000000.00006000.80000000.2f3b4036=
=2E00000300.001ee000.00000000.0000c000.80000000.2f3ba036.00000300.001e600=
0.00000000.00008000.80000000.2f3c6036.00000300.001cc000.00000000.0001a000=
=2E80000000.2f3ce036.00000300.001b8000.00000000.00014000.80000000.2f3ec03=
6.00000300.001ae000.00000000.00006000.80000000.2fc0a036.00000300.00174000=
=2E00000000.00004000.80000000.2fc16036.00000300.00170000.00000000.0000400=
0.80000000.2fc10036.00000300.00166000.00000000.0000a000.80000000.2fc00036=
=2E00000300.00164000.00000000.00002000.80000000.2f372036.00000300.0016200=
0.00000000.00002000.80000000.2f35a036.00000300.0015a000.00000000.00008000=
=2E80000000.2f348036.00000300.00154000.00000000.00006000.80000000.2f32a03=
6.00000300.00152000.00000000.00002000.80000000.2f316036.00000300.00150000=
=2E00000000.00002000.80000000.2f2e0036.00000300.00134000.00000000.0000400=
0.80000000.2fc1a036.00000300.00130000.00000000.00004000.80000000.2f3e8036=
=2E00000300.000f6000.00000000.00002000.80000000.2fc1e036.00000300.000ee00=
0.00000000.00008000.80000000.2fc24036.00000300.000ec000.00000000.00002000=
=2E80000000.2fc30036.00000300.000ea000.00000000.00002000.80000000.2fc3c03=
6.00000300.000e4000.00000000.00006000.80000000.2fc4a036.00000300.000e2000=
=2E00000000.00002000.80000000.2fc52036.00000300.000e0000.00000000.0000200=
0.80000000.2fc56036.00000300.000dc000.00000000.00004000.80000000.2fc60036=
=2E00000300.000b0000.00000000.0002c000.80000000.2fc64036.00000300.000ae00=
0.00000000.00002000.80000000.2fc90036.00000300.0008e000.00000000.00020000=
=2E80000000.2fc92036.00000300.0008c000.00000000.00002000.80000000.2fcb403=
6.00000300.0008a000.00000000.00002000.80000000.2fccc036.00000300.00088000=
=2E00000000.00002000.80000000.2fcce036.00000300.00074000.00000000.0001400=
0.80000000.2fcb8036.00000300.00072000.00000000.00002000.80000000.2fcb2036=
=2E00000300.0006a000.00000000.00008000.80000000.2fc58036.00000300.0006800=
0.00000000.00002000.80000000.2fc54036.00000300.00066000.00000000.00002000=
=2E80000000.2fc50036.00000300.0005a000.00000000.0000c000.80000000.2fc3e03=
6.00000300.00050000.00000000.0000a000.80000000.2fc32036.00000300.0004c000=
=2E00000000.00004000.80000000.2fc2c036.00000300.00048000.00000000.0000400=
0.80000000.2fc20036.00000300.00046000.00000000.00002000.80000000.2fcd2036=
=2E00000300.00044000.00000000.00002000.80000000.2fcd4036.00000300.0003c00=
0.00000000.00008000.80000000.2fcd6036.00000300.00034000.00000000.00008000=
=2E80000000.2fce0036.00000300.00032000.00000000.00002000.80000000.2fce803=
6.00000300.00030000.00000000.00002000.80000000.2fcea036.00000300.0002e000=
=2E00000000.00002000.80000000.2fcec036.00000300.0002c000.00000000.0000200=
0.80000000.2fcee036.00000300.0002a000.00000000.00002000.80000000.2fcf0036=
=2E00000300.00028000.00000000.00002000.80000000.2fcf2036.00000300.0002600=
0.00000000.00002000.80000000.2fcf4036.00000300.00024000.00000000.00002000=
=2E80000000.2fcf6036.00000300.00022000.00000000.00002000.80000000.2fcf803=
6.00000300.00020000.00000000.00002000.80000000.2fcfa036.00000300.0001e000=
=2E00000000.00002000.80000000.2fd02036.00000300.0001c000.00000000.0000200=
0.80000000.2fd04036.00000300.0001a000.00000000.00002000.80000000.2fd06036=
=2E00000300.00018000.00000000.00002000.80000000.2fd08036.00000300.0001600=
0.00000000.00002000.80000000.2fe84036.00000300.00014000.00000000.00002000=
=2E80000000.2fd10036.00000300.00012000.00000000.00002000.80000000.2fd0a03=
6.00000300.00010000.00000000.00002000.80000000.2fd0c036.00000300.0000e000=
=2E00000000.00002000.80000000.2fd0e036.00000300.0000c000.00000000.0000200=
0.80000000.2fd12036.00000300.0000a000.00000000.00002000.80000000.2fd14036=
=2E00000300.00008000.00000000.00002000.80000000.2fd16036.00000300.0000600=
0.00000000.00002000.80000000.2fd18036.00000300.00004000.00000000.00002000=
=2E80000000.2fd1a036.00000300.00002000.00000000.00002000.80000000.2fd1c03=
6.00000000.fffe0000.00000000.00010000.80000000.2fef00b6.00000000.fffdc000=
=2E00000000.00004000.80000000.2fee40b6.00000000.fffd6000.00000000.0000200=
0.80000000.2fee00b6.00000000.fffd4000.00000000.00002000.800001ff.f120008e=
=2E00000000.fffd2000.00000000.00002000.80000000.2fedc0b6.00000000.fffce00=
0.00000000.00004000.80000000.2fed20b6.00000000.fffcc000.00000000.00002000=
=2E800001ff.f100008e.00000000.fffca000.00000000.00002000.800001fe.0200408=
e.00000000.fffc8000.00000000.00002000.80000000.2effe0b6.00000000.fffc6000=
=2E00000000.00002000.80000000.2fece0b6.00000000.fffc4000.00000000.0000200=
0.80000000.2fede0b6.00000000.fffc2000.00000000.00002000.800001fe.0200008e=
=2E00000000.fffbe000.00000000.00002000.800001fe.0200208e.00000000.fffae00=
0.00000000.00010000.80000000.2feb80b6.00000000.fff82000.00000000.00010000=
=2E800001fe.0000008e.00000000.fff7c000.00000000.00006000.80000000.2fed60b=
6.00000000.fff7a000.00000000.00002000.800001fe.0100008e.00000000.fff78000=
=2E00000000.00002000.800001fe.0100008e.00000000.f0000000.00000000.0010000=
0.80000000.2ff000b6.00000000.78004000.00000000.00012000.80000000.2fe86036=
=2E00000000.78002000.00000000.00002000.80000000.2e000036.00000000.1160000=
0.00000000.00080000.80000000.2fd1e036.00000000.10e80000.00000000.00780000=
=2E80000000.2e800036.00000000.10e14000.00000000.00062000.80000000.2fd9e03=
6.00000000.10800000.00000000.005f0000.80000000.2e210036.00000000.10400000=
=2E00000000.00400000.80000000.2f400036.00000000.10000000.00000000.0040000=
0.80000000.2f800036.00000000.00002000.00000000.009fe000.80000000.00002036=

        existing:  00000000.00000000.00000800.00000000.fffff800.00000000.=
00000800.00000000
        available:  fffff800.00000000.000007fc.00000000.00000310.00000000=
=2E000004f0.00000000.00000300.002be000.0000000f.ffd36000.00000300.001b400=
0.00000000.00004000.00000300.00178000.00000000.00036000.00000300.00138000=
=2E00000000.00018000.00000300.000f8000.00000000.00038000.00000001.0000000=
0.000002ff.00002000.00000000.ffff0000.00000000.0000e000.00000000.78016000=
=2E00000000.77fea000.00000000.11680000.00000000.66982000.00000000.10e7600=
0.00000000.0000a000.00000000.10df0000.00000000.00024000.00000000.00000000=
=2E00000000.10000000.00000000.fffc0000.00000000.00002000.00000000.fff9200=
0.00000000.0001c000.00000000.fff00000.00000000.00078000.00000000.f0f80000=
=2E00000000.0e080000.00000000.f0800000.00000000.00700000
        page-size:  00002000
        name:  'virtual-memory'

    Node 0xf0068b38
        bus-range:  00000000.00000002
        virtual-dma:  c0000000.20000000
        reg:  000001fe.00000000.00000000.00010000.000001fe.01000000.00000=
000.00000100
        ranges:  00000000.00000000.00000000.000001fe.01000000.00000000.01=
000000.01000000.00000000.00000000.000001fe.02000000.00000000.01000000.020=
00000.00000000.00000000.000001ff.00000000.00000001.00000000.03000000.0000=
0000.00000000.000001ff.00000000.00000001.00000000
        #virtual-dma-size-cells:  00000001
        #virtual-dma-addr-cells:  00000001
        clock-frequency:  03ef1480
        latency-timer:  =

        button-interrupt:  =

        no-streaming-cache:  =

        66mhz-capable:  =

        interrupts:  00000030.0000002e.0000002f.00000025
        upa-portid:  0000001f
        bus-parity-generated:  =

        compatible: 'pci108e,a001'
        model:  'SUNW,sabre'
        name:  'pci'
        device_type:  'pci'
        #address-cells:  00000003
        #size-cells:  00000002

        Node 0xf00719c4
            available:  81000000.00000000.00000430.00000000.00bffbd0.8200=
0000.00000000.e0428000.00000000.00018000.82000000.00000000.e0460000.00000=
000.003a0000.82000000.00000000.e4c00000.00000000.00400000.82000000.000000=
00.e6000000.00000000.1a000000
            bus-range:  00000001.00000001
            interrupt-map:  00016000.00000000.00000000.00000001.f0068b38.=
0000001d.00016000.00000000.00000000.00000002.f0068b38.00000006.00016000.0=
0000000.00000000.00000004.f0068b38.00000024.00012800.00000000.00000000.00=
000002.f0068b38.0000001c.00012800.00000000.00000000.00000004.f0068b38.000=
00026.00016800.00000000.00000000.00000001.f0068b38.0000000c.00013800.0000=
0000.00000000.00000004.f0068b38.0000002b.00013800.00000000.00000000.00000=
005.f0068b38.00000025
            interrupt-map-mask:  00fff800.00000000.00000000.00000007
            #interrupt-cells:  00000001
            compatible: 'pci108e,5000' + 'pciclass,060400'
            66mhz-capable:  =

            fast-back-to-back:  =

            devsel-speed:  00000001
            class-code:  00060400
            revision-id:  00000013
            device-id:  00005000
            vendor-id:  0000108e
            reg:  00000900.00000000.00000000.00000000.00000000
            clock-frequency:  01f78a40
            slot-names:  00000000
            no-probe-list:  '0'
            model:  'SUNW,simba'
            name:  'pci'
            device_type:  'pci'
            #address-cells:  00000003
            #size-cells:  00000002

            Node 0xf00753b8
                interrupt-map:  00000014.00200000.00000001.f00719c4.00000=
02a
                interrupt-map-mask:  0000001f.00ffffff.00000003
                #interrupt-cells:  00000001
                ranges:  00000010.00000000.82016010.00000000.f0000000.010=
00000.00000014.00000000.82016014.00000000.f1000000.00800000
                reg:  00016000.00000000.00000000.00000000.00000000.820160=
10.00000000.f0000000.00000000.01000000.82016014.00000000.f1000000.0000000=
0.00800000
                #size-cells:  00000001
                #address-cells:  00000002
                name:  'ebus'
                max-latency:  00000019
                min-grant:  0000000a
                class-code:  00068000
                revision-id:  00000001
                devsel-speed:  00000001
                fast-back-to-back:  =

                device-id:  00001100
                vendor-id:  0000108e

                Node 0xf0075ff0
                    model:  'SUNW,525-1889'
                    version: 'CORE 1.0.3 2001/01/03 13:54'
                    name:  'flashprom'
                    reg:  00000010.00000000.00100000

                Node 0xf0076a28
                    model:  'mk48t59'
                    address:  fffcc000
                    reg:  00000014.00000000.00002000
                    device_type:  'nvram'
                    name:  'eeprom'

                Node 0xf007751c
                    device_type:  'idprom'
                    name:  'idprom'

                Node 0xf00776f4
                    reg:  00000014.00200000.00000004
                    interrupts:  00000001
                    device_type:  'block'
                    name:  'SUNW,lomh'

            Node 0xf0078ba4
                name:  'pmu'
                ranges:  00000000.00000000.00011800.00000000.00000000.000=
00100.00000001.00000000.81011810.00000000.00004000.00000100.00000002.0000=
0000.81011814.00000000.00000000.00000100
                reg:  00011800.00000000.00000000.00000000.00000000.810118=
10.00000000.00004000.00000000.00000010
                compatible: 'pci10b9,7101' + 'pciclass,000000'
                #address-cells:  00000002
                #size-cells:  00000001
                devsel-speed:  00000001
                class-code:  00000000
                max-latency:  00000000
                min-grant:  00000000
                revision-id:  00000000
                device-id:  00007101
                vendor-id:  000010b9

                Node 0xf007936c
                    reg:  00000000.00000000.00000100.00000001.00000000.00=
000100
                    #address-cells:  00000002
                    #size-cells:  00000000
                    interrupts:  00000001
                    compatible: 'i2c-smbus'
                    name:  'i2c'

                    Node 0xf007a804
                        compatible: 'i2c-max1617'
                        name:  'temperature'
                        reg:  00000000.00000030

                    Node 0xf007aaac
                        compatible: 'i2c-at34c02'
                        name:  'dimm'
                        reg:  00000000.000000a8

                    Node 0xf007ab64
                        compatible: 'i2c-at34c02'
                        name:  'dimm'
                        reg:  00000000.000000aa

                    Node 0xf007ac1c
                        reg:  00000000.000000a0
                        #address-cells:  00000001
                        compatible: 'i2c-at24c64'
                        device_type:  'nvram'
                        name:  'i2c-nvram'

                        Node 0xf007b734
                            reg:  00001fd8.00000028
                            device_type:  'idprom'
                            name:  'idprom'

                    Node 0xf007b9e8
                        reg:  00000000.000000a2
                        #address-cells:  00000001
                        compatible: 'i2c-at24c64'
                        name:  'motherboard-fru'

                Node 0xf007c580
                    compatible: 'SUNW,smbus-fan-control'
                    register-mask:  00000000.00000002
                    reg:  00000000.000000c8.00000004.80000000.000000ba.00=
000001
                    name:  'fan-control'

            Node 0xf007c770
                reg:  00011800.00000000.00000000.00000000.00000000.810118=
10.00000000.00004000.00000000.00000010
                name:  'lomp'

            Node 0xf007c978
                cache-line-size:  00000000
                latency-timer:  00000000
                #size-cells:  00000001
                #address-cells:  00000002
                name:  'isa'
                ranges:  00000000.00000000.81013810.00000000.00000000.000=
10000
                reg:  00013800.00000000.00000000.00000000.00000000.810138=
10.00000000.00000000.00000000.00010000.82013814.00000000.00000000.0000000=
0.00100000
                devsel-speed:  00000001
                class-code:  00060100
                max-latency:  00000000
                min-grant:  00000000
                subsystem-id:  00001533
                subsystem-vendor-id:  000010b9
                revision-id:  00000000
                device-id:  00001533
                vendor-id:  000010b9

                Node 0xf007d524
                    compatible: 'acpi-power'
                    button:  =

                    interrupts:  00000005
                    reg:  00000000.00002000.00000008
                    name:  'power'

                Node 0xf007d6b8
                    port-a-ignore-cd:  =

                    nohupcl:  00
                    interrupt-priorities:  0000000c.0000000c
                    reg:  00000000.000003f8.00000008
                    compatible: 'su16550' + 'su'
                    device_type:  'serial'
                    name:  'serial'
                    interrupts:  00000004

                Node 0xf007f3a4
                    port-b-ignore-cd:  =

                    nohupcl:  00
                    interrupt-priorities:  0000000c.0000000c
                    reg:  00000000.000002e8.00000008
                    compatible: 'su16550' + 'su'
                    device_type:  'serial'
                    name:  'serial'
                    interrupts:  00000004

            Node 0xf0081240
                local-mac-address:  080020fd.5006
                assigned-addresses:  82016110.00000000.e0400000.00000000.=
00020000.82016130.00000000.e0800000.00000000.00400000
                shared-pins:  'mii'
                interrupts:  00000002
                model:  'SUNW,pci-eri'
                version: '1.7'
                compatible: 'pci108e,1101' + 'pciclass,020000'
                device_type:  'network'
                address-bits:  00000030
                max-frame-size:  00004000
                reg:  00016100.00000000.00000000.00000000.00000000.020161=
10.00000000.00000000.00000000.00008000
                name:  'network'
                fast-back-to-back:  =

                devsel-speed:  00000001
                class-code:  00020000
                max-latency:  00000005
                min-grant:  0000000a
                revision-id:  00000001
                device-id:  00001101
                vendor-id:  0000108e

            Node 0xf008918c
                assigned-addresses:  82016310.00000000.e2000000.00000000.=
01000000.82016330.00000000.e1000000.00000000.00400000
                sunw,find-fcode:  f008e338
                maximum-frame#:  0000ffff
                reg:  00016300.00000000.00000000.00000000.00000000.020163=
10.00000000.00000000.00000000.01000000
                #size-cells:  00000000
                #address-cells:  00000001
                compatible: 'pci108e,1103.1' + 'pci108e,1103' + 'pciclass=
,0c0310' + 'pciclass,0c03'
                name:  'usb'
                interrupts:  00000004
                fast-back-to-back:  =

                devsel-speed:  00000001
                class-code:  000c0310
                max-latency:  00000005
                min-grant:  0000000a
                revision-id:  00000001
                device-id:  00001103
                vendor-id:  0000108e

            Node 0xf008f0dc
                assigned-addresses:  81016810.00000000.00000400.00000000.=
00000008.81016814.00000000.00000418.00000000.00000008.81016818.00000000.0=
0000410.00000000.00000008.8101681c.00000000.00000408.00000000.00000008.81=
016820.00000000.00000420.00000000.00000010
                reg:  00016800.00000000.00000000.00000000.00000000.010168=
10.00000000.00000000.00000000.00000008.01016814.00000000.00000000.0000000=
0.00000004.01016818.00000000.00000000.00000000.00000008.0101681c.00000000=
=2E00000000.00000000.00000004.01016820.00000000.00000000.00000000.0000001=
0
                compatible: 'pci10b9,5229' + 'pciclass,0101ff'
                #address-cells:  00000002
                device_type:  'ide'
                name:  'ide'
                fast-back-to-back:  =

                devsel-speed:  00000001
                class-code:  000101ff
                interrupts:  00000001
                max-latency:  00000004
                min-grant:  00000002
                revision-id:  000000c3
                device-id:  00005229
                vendor-id:  000010b9

                Node 0xf0091950
                    device_type:  'block'
                    name:  'disk'
                    compatible: 'ide-disk'

                Node 0xf0091ffc
                    device_type:  'block'
                    name:  'cdrom'
                    compatible: 'ide-cdrom'

            Node 0xf0092cd8
                local-mac-address:  080020fd.5007
                assigned-addresses:  82012910.00000000.e0440000.00000000.=
00020000.82012930.00000000.e4000000.00000000.00400000
                shared-pins:  'mii'
                model:  'SUNW,pci-eri'
                version: '1.7'
                compatible: 'pci108e,1101' + 'pciclass,020000'
                device_type:  'network'
                address-bits:  00000030
                max-frame-size:  00004000
                reg:  00012900.00000000.00000000.00000000.00000000.020129=
10.00000000.00000000.00000000.00008000
                name:  'network'
                fast-back-to-back:  =

                devsel-speed:  00000001
                class-code:  00020000
                interrupts:  00000002
                max-latency:  00000005
                min-grant:  0000000a
                revision-id:  00000001
                device-id:  00001101
                vendor-id:  0000108e

            Node 0xf009ac4c
                assigned-addresses:  82012b10.00000000.e5000000.00000000.=
01000000.82012b30.00000000.e4800000.00000000.00400000
                sunw,find-fcode:  f009fdfc
                maximum-frame#:  0000ffff
                reg:  00012b00.00000000.00000000.00000000.00000000.02012b=
10.00000000.00000000.00000000.01000000
                #size-cells:  00000000
                #address-cells:  00000001
                compatible: 'pci108e,1103.1' + 'pci108e,1103' + 'pciclass=
,0c0310' + 'pciclass,0c03'
                name:  'usb'
                fast-back-to-back:  =

                devsel-speed:  00000001
                class-code:  000c0310
                interrupts:  00000004
                max-latency:  00000005
                min-grant:  0000000a
                revision-id:  00000001
                device-id:  00001103
                vendor-id:  0000108e

        Node 0xf0072c5c
            available:  81000000.00000000.00c00200.00000000.003ffe00.8200=
0000.00000000.00001000.00000000.00001000.82000000.00000000.0000a000.00000=
000.bfff6000
            bus-range:  00000002.00000002
            interrupt-map:  00022800.00000000.00000000.00000001.f0068b38.=
00000015.00022800.00000000.00000000.00000002.f0068b38.00000005.00022800.0=
0000000.00000000.00000003.f0068b38.00000014.00022800.00000000.00000000.00=
000004.f0068b38.00000004.00024000.00000000.00000000.00000001.f0068b38.000=
00020
            interrupt-map-mask:  00fff800.00000000.00000000.00000007
            #interrupt-cells:  00000001
            compatible: 'pci108e,5000' + 'pciclass,060400'
            66mhz-capable:  =

            fast-back-to-back:  =

            devsel-speed:  00000001
            class-code:  00060400
            revision-id:  00000013
            device-id:  00005000
            vendor-id:  0000108e
            reg:  00000800.00000000.00000000.00000000.00000000
            clock-frequency:  01f78a40
            slot-names:  00000000
            no-probe-list:  '0'
            model:  'SUNW,simba'
            name:  'pci'
            device_type:  'pci'
            #address-cells:  00000003
            #size-cells:  00000002

            Node 0xf00a0ac0
                assigned-addresses:  81024010.00000000.00c00000.00000000.=
00000100.83024014.00000000.00002000.00000000.00002000.8302401c.00000000.0=
0004000.00000000.00002000
                device_type:  'scsi-2'
                clock-frequency:  02625a00
                reg:  00024000.00000000.00000000.00000000.00000000.010240=
10.00000000.00000000.00000000.00000100.03024014.00000000.00000000.0000000=
0.00000400.0302401c.00000000.00000000.00000000.00002000
                model:  'Symbios,53C896'
                compatible: 'glm'
                name:  'scsi'
                devsel-speed:  00000001
                class-code:  00010000
                interrupts:  00000001
                max-latency:  00000040
                min-grant:  00000011
                revision-id:  00000007
                device-id:  0000000b
                vendor-id:  00001000

                Node 0xf00a463c
                    device_type:  'block'
                    compatible: 'sd'
                    name:  'disk'

                Node 0xf00a5c28
                    device_type:  'byte'
                    compatible: 'st'
                    name:  'tape'

            Node 0xf00a68f0
                assigned-addresses:  81024110.00000000.00c00100.00000000.=
00000100.83024114.00000000.00006000.00000000.00002000.8302411c.00000000.0=
0008000.00000000.00002000
                device_type:  'scsi-2'
                clock-frequency:  02625a00
                reg:  00024100.00000000.00000000.00000000.00000000.010241=
10.00000000.00000000.00000000.00000100.03024114.00000000.00000000.0000000=
0.00000400.0302411c.00000000.00000000.00000000.00002000
                model:  'Symbios,53C896'
                compatible: 'glm'
                name:  'scsi'
                devsel-speed:  00000001
                class-code:  00010000
                interrupts:  00000001
                max-latency:  00000040
                min-grant:  00000011
                revision-id:  00000007
                device-id:  0000000b
                vendor-id:  00001000

                Node 0xf00aa46c
                    device_type:  'block'
                    compatible: 'sd'
                    name:  'disk'

                Node 0xf00aba58
                    device_type:  'byte'
                    compatible: 'st'
                    name:  'tape'

    Node 0xf0074294
        manufacturer#:  00000017
        implementation#:  00000013
        mask#:  00000014
        clock-frequency:  1dcd6500
        sparc-version:  00000009
        ecache-associativity:  00000004
        ecache-line-size:  00000040
        #dtlb-entries:  00000040
        dcache-associativity:  00000001
        dcache-line-size:  00000020
        dcache-size:  00004000
        #itlb-entries:  00000040
        icache-associativity:  00000002
        icache-line-size:  00000020
        icache-size:  00004000
        ecache-size:  00040000
        upa-portid:  00000000
        name:  'SUNW,UltraSPARC-IIe'
        reg:  000001c0.00000000.00000000.00000008
        device_type:  'cpu'


--------------18D482C9E4DFAF6A516428A7--

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
