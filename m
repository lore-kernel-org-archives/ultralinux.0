From: =?windows-1252?Q?Brasseur_Val=E9ry?=
Date: Wed, 31 Jan 2001 18:02:23 +0000
Subject: RE: [RE: [Linux Status for Sun Netra T1 200 ]]
MIME-Version: 1
Content-Type: multipart/mixed; boundary="----_=_NextPart_000_01C08BB0.E68C75E6"
Message-Id: <marc-linux-ultrasparc-98096418115937@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_000_01C08BB0.E68C75E6
Content-Type: text/plain;
	charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

thanks for your information ! After getting it and compile, here is the
results...

hope this help.

valery

Valery BRASSEUR                      | Phone # +33 320 60 7982=20
Atosorigin Branche Multimedia        | Fax   # +33 320 60 7649
Unix is like a wigwam -- no Gates, no Windows, and an Apache inside.


> -----Original Message-----
> From: Eric [mailto:ebrower@usa.net]
> Sent: Wednesday, January 31, 2001 5:22 PM
> To: Brasseur "Val=E9ry
> Subject: Re: [RE: [Linux Status for Sun Netra T1 200 ]]
>=20
>=20
> Thank you for the ouput-- I'll take a look at it later today.
> As for 'prtconf' it is available for Linux.  If it is not=20
> already in your distribution, you can get the source from
> the CVSWEB site at vger.samba.org-- look for the link to
> cvsweb and find the directory for prtconf.
>=20
> If you do manage to find the Linux prtconf, that output would
> be much appreciated as it is far more verbose than the Solaris
> output.
>=20
> E
>=20
> Brasseur Val=E9ry <Valery.Brasseur@atosorigin.com> wrote:
> I have attach the prtconf -pv from the Netra t1 105, I have=20
> done it under
> SOl2.6 as I have not found an equivalent under Linux (does it exist =
?)
>=20
> If I can be of any help in support/dev/test of new drivers=20
> for this board I
> would be happy !
>=20
> Note : for the t1 200 I will need to put it on the network !=20
> (I think it
> will be today but...)
>=20
> valery
>=20
> Valery BRASSEUR                      | Phone # +33 320 60 7982=20
> Atosorigin Branche Multimedia        | Fax   # +33 320 60 7649
> Unix is like a wigwam -- no Gates, no Windows, and an Apache inside.
>=20
>=20
> > -----Original Message-----
> > From: Eric [mailto:ebrower@usa.net]
> > Sent: Monday, January 29, 2001 9:11 PM
> > To: Brasseur "Val=E9ry
> > Subject: Re: [Linux Status for Sun Netra T1 200 ]
> >=20
> >=20
> > Brasseur Val=E9ry <Valery.Brasseur@atosorigin.com> wrote:
> > > (note : I can be new kernel if needed as I have already a t1
> > > 105 running under ultralinux )
> >=20
> > Could you send me the 'prtconf -pv' output from the t1-105
> > system?  I am interested in the onboard components, and how
> > they might be supported by modifying existing drivers.
> >=20
> > Thanks!
> > E
> >=20
> >=20
> > =
____________________________________________________________________
> > Get free email and a permanent address at=20
> http://www.netaddress.com/?N=3D1
>=20
>=20
> > ---------------------------------------------=20
> >	Attachment:=A0prtconf sol.txt=20
> >	MIME Type:=A0text/plain=20
> > ---------------------------------------------=20
>=20
> ____________________________________________________________________
> Get free email and a permanent address at=20
http://www.netaddress.com/?N=3D1


------_=_NextPart_000_01C08BB0.E68C75E6
Content-Type: application/octet-stream;
	name="prtconf.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="prtconf.log"

System Configuration:  Sun Microsystems  sun4u=0A=
Memory size: 512 Megabytes=0A=
System Peripherals (PROM Nodes):=0A=
=0A=
Node 0xf002a52c=0A=
    banner-name: 'Netra t1 (UltraSPARC-IIi 440MHz)'=0A=
    reset-reason: 'POR'=0A=
    idprom:  =
01800800.20d9cb4e.ffffffff.d9cb4ea9.ffffffff.ffffffff.40ffffff.ffff5f00=0A=
    compatible: 'sun4u'=0A=
    breakpoint-trap:  0000007f=0A=
    #size-cells:  00000002=0A=
    energystar-v2:  =0A=
    model: 'SUNW,500-5473'=0A=
    name: 'SUNW,UltraSPARC-IIi-cEngine'=0A=
    clock-frequency:  068e9b38=0A=
    device_type: 'upa'=0A=
=0A=
    Node 0xf002d904=0A=
        name: 'packages'=0A=
=0A=
        Node 0xf0034b64=0A=
            iso6429-1983-colors:  =0A=
            name: 'terminal-emulator'=0A=
=0A=
        Node 0xf0037d34=0A=
            disk-write-fix:  =0A=
            name: 'deblocker'=0A=
=0A=
        Node 0xf0038434=0A=
            name: 'obp-tftp'=0A=
=0A=
        Node 0xf0043734=0A=
            name: 'disk-label'=0A=
=0A=
        Node 0xf0054568=0A=
            support:  =0A=
            name: 'ufs-file-system'=0A=
=0A=
        Node 0xf0055cac=0A=
            name: 'cdfs'=0A=
=0A=
        Node 0xf0062e10=0A=
            name: 'SUNW,builtin-drivers'=0A=
=0A=
        Node 0xf007d01c=0A=
            name: 'sun-keyboard'=0A=
=0A=
    Node 0xf002d974=0A=
        stdout:  fff9b5d8=0A=
        stdin:  fff9b8a8=0A=
        mmu:  fffe83a0=0A=
        memory:  fffe85a0=0A=
        bootargs:  00=0A=
        bootpath: '/pci@1f,0/pci@1,1/network@3,1'=0A=
        stdout-#lines:  ffffffff=0A=
        name: 'chosen'=0A=
=0A=
    Node 0xf002d9e0=0A=
        version: 'OBP 3.10.25 2000/01/17 21:26'=0A=
        model: 'SUNW,3.10.25 ME'=0A=
        decode-complete:  =0A=
        aligned-allocator:  =0A=
        relative-addressing:  =0A=
        name: 'openprom'=0A=
=0A=
        Node 0xf002da70=0A=
            name: 'client-services'=0A=
=0A=
    Node 0xf002db18=0A=
        tpe-link-test?: 'true'=0A=
        scsi-initiator-id: '7'=0A=
        keyboard-click?: 'false'=0A=
        keymap:  =0A=
        watchdog-timeout: '65535'=0A=
        watchdog-enable?: 'false'=0A=
        ttyb-rts-dtr-off: 'false'=0A=
        ttyb-ignore-cd: 'true'=0A=
        ttya-rts-dtr-off: 'false'=0A=
        ttya-ignore-cd: 'true'=0A=
        ttyb-mode: '9600,8,n,1,-'=0A=
        ttya-mode: '9600,8,n,1,-'=0A=
        cpci-probe-list: '0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f'=0A=
        pcia-probe-list: '1'=0A=
        pcib-probe-list: '1,2,3'=0A=
        mfg-mode: 'off'=0A=
        diag-level: 'max'=0A=
        d7s-flipped?: 'false'=0A=
        #power-cycles: '53'=0A=
        system-board-serial#:  =0A=
        system-board-date:  =0A=
        last-poweroff-cause: '0'=0A=
        env-monitor: 'enabled'=0A=
        shutdown-temperature: '74'=0A=
        warning-temperature: '69'=0A=
        fcode-debug?: 'false'=0A=
        output-device: 'ttya'=0A=
        input-device: 'ttya'=0A=
        load-base: '16384'=0A=
        auto-boot-retry?: 'false'=0A=
        use-boot-table?: 'false'=0A=
        boot-command: 'boot'=0A=
        auto-boot?: 'true'=0A=
        watchdog-reboot?: 'true'=0A=
        diag-file:  =0A=
        diag-device: 'net'=0A=
        boot-file:  =0A=
        boot-device: 'net'=0A=
        local-mac-address?: 'true'=0A=
        net-timeout: '0'=0A=
        ansi-terminal?: 'true'=0A=
        screen-#columns: '80'=0A=
        screen-#rows: '34'=0A=
        silent-mode?: 'false'=0A=
        use-nvramrc?: 'true'=0A=
        nvramrc:  =
64657661.6c696173.206e6574.32202f70.63694031.662c302f.70636940.312c312f.=
6e657477.6f726b40.312c310a.64657661.6c696173.206e6574.202f7063.69403166.=
2c302f70.63694031.2c312f6e.6574776f.726b4033.2c310a64.6576616c.69617320.=
6c696e75.78202f70.63692f70.63694031.2c312f73.6373692f.6469736b.40302c30.=
3a620a=0A=
        security-mode: 'none'=0A=
        security-password:  =0A=
        security-#badlogins: '0'=0A=
        oem-logo:  =0A=
        oem-logo?: 'false'=0A=
        oem-banner:  =0A=
        oem-banner?: 'false'=0A=
        hardware-revision:  =0A=
        last-hardware-update:  =0A=
        diag-switch?: 'false'=0A=
        name: 'options'=0A=
=0A=
    Node 0xf002db88=0A=
        cdrom1: '/pci@1f,0/pci@1,1/scsi@2/disk@6,0:f'=0A=
        cdrom: '/pci@1f,0/pci@1/pci@1/ide@e/cdrom@2:f'=0A=
        ide-disk: '/pci@1f,0/pci@1/pci@1/ide@e/disk@0:f'=0A=
        ide-cdrom: '/pci@1f,0/pci@1/pci@1/ide@e/cdrom@2:f'=0A=
        ide: '/pci@1f,0/pci@1/pci@1/ide@e'=0A=
        linux: '/pci/pci@1,1/scsi/disk@0,0:b'=0A=
        net: '/pci@1f,0/pci@1,1/network@3,1'=0A=
        net2: '/pci@1f,0/pci@1,1/network@1,1'=0A=
        userprom2: '/pci@1f,0/pci@1,1/ebus@1/flashprom@10,800000'=0A=
        userprom1: '/pci@1f,0/pci@1,1/ebus@1/flashprom@10,400000'=0A=
        i2c-cs2: '/pci@1f,0/pci@1,1/ebus@1/i2c@14,100000'=0A=
        i2c: '/pci@1f,0/pci@1,1/ebus@1/i2c@14,600000'=0A=
        systemprom: '/pci@1f,0/pci@1,1/ebus@1/flashprom@10,0'=0A=
        pcic: '/pci@1f,0/pci@1/pci@1'=0A=
        pcib: '/pci@1f,0/pci@1,1'=0A=
        pcia: '/pci@1f,0/pci@1'=0A=
        ebus: '/pci@1f,0/pci@1,1/ebus@1'=0A=
        floppy: '/pci@1f,0/pci@1,1/ebus@1/fdthree'=0A=
        disk: '/pci@1f,0/pci@1,1/scsi@2/disk@0,0'=0A=
        tape: '/pci@1f,0/pci@1,1/scsi@2/tape@4,0'=0A=
        tape1: '/pci@1f,0/pci@1,1/scsi@2/tape@5,0'=0A=
        tape0: '/pci@1f,0/pci@1,1/scsi@2/tape@4,0'=0A=
        diskf: '/pci@1f,0/pci@1,1/scsi@2/disk@f,0'=0A=
        diske: '/pci@1f,0/pci@1,1/scsi@2/disk@e,0'=0A=
        diskd: '/pci@1f,0/pci@1,1/scsi@2/disk@d,0'=0A=
        diskc: '/pci@1f,0/pci@1,1/scsi@2/disk@c,0'=0A=
        diskb: '/pci@1f,0/pci@1,1/scsi@2/disk@b,0'=0A=
        diska: '/pci@1f,0/pci@1,1/scsi@2/disk@a,0'=0A=
        disk9: '/pci@1f,0/pci@1,1/scsi@2/disk@9,0'=0A=
        disk8: '/pci@1f,0/pci@1,1/scsi@2/disk@8,0'=0A=
        disk7: '/pci@1f,0/pci@1,1/scsi@2/disk@7,0'=0A=
        disk6: '/pci@1f,0/pci@1,1/scsi@2/disk@6,0'=0A=
        disk5: '/pci@1f,0/pci@1,1/scsi@2/disk@5,0'=0A=
        disk4: '/pci@1f,0/pci@1,1/scsi@2/disk@4,0'=0A=
        disk3: '/pci@1f,0/pci@1,1/scsi@2/disk@3,0'=0A=
        disk2: '/pci@1f,0/pci@1,1/scsi@2/disk@2,0'=0A=
        disk1: '/pci@1f,0/pci@1,1/scsi@2/disk@1,0'=0A=
        disk0: '/pci@1f,0/pci@1,1/scsi@2/disk@0,0'=0A=
        scsi: '/pci@1f,0/pci@1,1/scsi@2'=0A=
        ttyb: '/pci@1f,0/pci@1,1/ebus@1/su@14,3602f8'=0A=
        ttya: '/pci@1f,0/pci@1,1/ebus@1/su@14,3803f8'=0A=
        ttyd: '/pci@1f,0/pci@1,1/ebus@1/se@14,400000:b'=0A=
        ttyc: '/pci@1f,0/pci@1,1/ebus@1/se@14,400000:a'=0A=
        name: 'aliases'=0A=
=0A=
    Node 0xf0051250=0A=
        reg:  =
00000000.00000000.00000000.08000000.00000000.20000000.00000000.08000000.=
00000000.08000000.00000000.08000000.00000000.28000000.00000000.08000000=0A=
        available:  =
00000000.2fe00000.00000000.000c2000.00000000.20000000.00000000.0fdfe000.=
00000000.00000000.00000000.10000000=0A=
        name: 'memory'=0A=
=0A=
    Node 0xf0051830=0A=
        translations:  =
00000000.fffe0000.00000000.00010000.80000000.2fef00b6.00000000.fffd6000.=
00000000.0000a000.80000000.2fede0b6.00000000.fffd4000.00000000.00002000.=
800001fe.0100008e.00000000.fffc0000.00000000.00010000.800001fe.0000008e.=
00000000.fffbc000.00000000.00004000.80000000.2fed80b6.00000000.fffba000.=
00000000.00002000.800001ff.f100008e.00000000.fffb8000.00000000.00002000.=
800001ff.f100008e.00000000.fffb6000.00000000.00002000.800001ff.f172408e.=
00000000.fffb4000.00000000.00002000.800001ff.f172608e.00000000.fffb2000.=
00000000.00002000.800001ff.f172808e.00000000.fffb0000.00000000.00002000.=
800001ff.f172a08e.00000000.fffae000.00000000.00002000.800001ff.f172c08e.=
00000000.fffac000.00000000.00002000.800001ff.f172e08e.00000000.fffaa000.=
00000000.00002000.80000000.2fdfe0b6.00000000.fffa8000.00000000.00002000.=
80000000.2fed60b6.00000000.fffa6000.00000000.00002000.800001ff.f120008e.=
00000000.fffa4000.00000000.00002000.800001ff.f120008e.00000000.fffa2000.=
00000000.00002000.80000000.2fed40b6.00000000.fffa0000.00000000.00002000.=
800001ff.f160008e.00000000.fff9e000.00000000.00002000.80000000.2fed00b6.=
00000000.fff9c000.00000000.00002000.800001ff.f132008e.00000000.fff9a000.=
00000000.00002000.80000000.2fece0b6.00000000.fff98000.00000000.00002000.=
800001ff.f170608e.00000000.fff96000.00000000.00002000.800001ff.f172008e.=
00000000.fff94000.00000000.00002000.800001ff.f132008e.00000000.fff92000.=
00000000.00002000.800001ff.f132008e.00000000.fff90000.00000000.00002000.=
800001ff.f138008e.00000000.fff8e000.00000000.00002000.80000000.2fecc0b6.=
00000000.fff8c000.00000000.00002000.800001ff.f110008e.00000000.fff8a000.=
00000000.00002000.80000000.2fed20b6.00000000.fff88000.00000000.00002000.=
800001ff.f132008e.00000000.fff84000.00000000.00002000.80000000.2fec40b6.=
00000000.ffefc000.00000000.00004000.80000000.2fec60b6.00000000.fef00000.=
00000000.00100000.800001ff.f000008e.00000000.fed00000.00000000.00200000.=
800001ff.f040008e.00000000.feb00000.00000000.00200000.800001ff.f080008e.=
00000000.f0000000.00000000.00100000.80000000.2ff000b6.00000000.00400000.=
00000000.00400000.80000000.00000036=0A=
        existing:  =
00000000.00000000.00000800.00000000.fffff800.00000000.00000800.00000000=0A=
        available:  =
fffff800.00000000.000007fc.00000000.00000001.00000000.000007ff.00000000.=
00000000.ffff0000.00000000.0000e000.00000000.00000000.00000000.f0000000.=
00000000.fff86000.00000000.00002000.00000000.fff00000.00000000.00084000.=
00000000.f0800000.00000000.0e300000=0A=
        page-size:  00002000=0A=
        name: 'virtual-memory'=0A=
=0A=
    Node 0xf0069600=0A=
        bus-range:  00000000.00000003=0A=
        available:  =
82000000.00000000.00100000.00000000.fff00000.81000000.00000000.00002000.=
00000000.00ffe000=0A=
        virtual-dma:  c0000000.20000000=0A=
        #virtual-dma-size-cells:  00000001=0A=
        #virtual-dma-addr-cells:  00000001=0A=
        latency-timer:  =0A=
        address:  fffc0000.fffd4000=0A=
        no-streaming-cache:  =0A=
        clock-frequency:  03ef1480=0A=
        upa-portid:  0000001f=0A=
        66mhz-capable:  =0A=
        interrupts:  000007f0.000007ee.000007ef.000007e5=0A=
        ranges:  =
00000000.00000000.00000000.000001fe.01000000.00000000.01000000.01000000.=
00000000.00000000.000001fe.02000000.00000000.01000000.02000000.00000000.=
00000000.000001ff.00000000.00000001.00000000.03000000.00000000.00000000.=
000001ff.00000000.00000001.00000000=0A=
        reg:  =
000001fe.00000000.00000000.00010000.000001fe.01000000.00000000.00000100=0A=
        model: 'SUNW,sabre'=0A=
        compatible:  =
70636931.3038652c.61303030.00706369.636c6173.732c3000=0A=
        bus-parity-generated:  =0A=
        #size-cells:  00000002=0A=
        #address-cells:  00000003=0A=
        device_type: 'pci'=0A=
        name: 'pci'=0A=
=0A=
        Node 0xf0069dfc=0A=
            bus-range:  00000001.00000001=0A=
            scsi-initiator-id:  00000007=0A=
            compatible:  =
70636931.3038652c.35303030.00706369.636c6173.732c3036.30343030.00=0A=
            66mhz-capable:  =0A=
            fast-back-to-back:  =0A=
            devsel-speed:  00000001=0A=
            class-code:  00060400=0A=
            revision-id:  00000013=0A=
            device-id:  00005000=0A=
            vendor-id:  0000108e=0A=
            interrupt-map:  =
00010800.00000000.00000000.00000001.f0069600.00000021.00011000.00000000.=
00000000.00000001.f0069600.00000020.00011100.00000000.00000000.00000001.=
f0069600.00000020.00011800.00000000.00000000.00000001.f0069600.0000001a=0A=
            interrupt-map-mask:  00fff800.00000000.00000000.00000007=0A=
            #interrupt-cells:  00000001=0A=
            no-probe-list: '0'=0A=
            clock-frequency:  01f78a40=0A=
            model: 'SUNW,simba'=0A=
            #address-cells:  00000003=0A=
            #size-cells:  00000002=0A=
            reg:  00000900.00000000.00000000.00000000.00000000=0A=
            device_type: 'pci'=0A=
            name: 'pci'=0A=
=0A=
            Node 0xf006b390=0A=
                latency-timer:  0000000a=0A=
                fast-back-to-back:  =0A=
                devsel-speed:  00000001=0A=
                class-code:  00068000=0A=
                max-latency:  00000019=0A=
                min-grant:  0000000a=0A=
                revision-id:  00000001=0A=
                device-id:  00001000=0A=
                vendor-id:  0000108e=0A=
                interrupt-map:  =
00000014.00340278.00000001.f0069600.00000022.00000014.00724000.00000001.=
f0069600.00000025.00000014.003203f0.00000001.f0069600.00000027.00000014.=
003803f8.00000001.f0069600.0000001c.00000014.00300060.00000001.f0069600.=
00000029.00000014.00300060.00000002.f0069600.0000002a.00000014.003602f8.=
00000001.f0069600.00000014.00000014.00400000.00000001.f0069600.0000002b.=
00000014.00200000.00000001.f0069600.00000004.00000014.00600000.00000001.=
f0069600.00000028.00000014.00100000.00000001.f0069600.0000001b=0A=
                interrupt-map-mask:  0000001f.00ffffff.00000003=0A=
                #interrupt-cells:  00000001=0A=
                ranges:  =
00000010.00000000.82010810.00000000.f0000000.01000000.00000014.00000000.=
82010814.00000000.f1000000.00800000=0A=
                reg:  =
00010800.00000000.00000000.00000000.00000000.82010810.00000000.f0000000.=
00000000.01000000.82010814.00000000.f1000000.00000000.00800000=0A=
                #size-cells:  00000001=0A=
                #address-cells:  00000002=0A=
                name: 'ebus'=0A=
=0A=
                Node 0xf006b914=0A=
                    address:  =
fffb4000.fffb2000.fffb0000.fffae000.fffad000=0A=
                    reg:  =
00000014.00726000.00000004.00000014.00728000.00000004.00000014.0072a000.=
00000004.00000014.0072c000.00000004.00000014.0072f000.00000004=0A=
                    name: 'auxio'=0A=
=0A=
                Node 0xf006b9d4=0A=
                    address:  fffb6000=0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.00724000.00000004=0A=
                    name: 'power'=0A=
=0A=
                Node 0xf006ba88=0A=
                    freq-syn: 'MC12430'=0A=
                    reg:  00000014.00504000.00000003=0A=
                    name: 'SUNW,pll'=0A=
=0A=
                Node 0xf006bb1c=0A=
                    port-a-ignore-cd:  =0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.003803f8.00000008=0A=
                    interrupt-priorities:  0000000c.0000000c=0A=
                    device_type: 'serial'=0A=
                    name: 'su'=0A=
=0A=
                Node 0xf006ce78=0A=
                    port-a-ignore-cd:  =0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.003602f8.00000008=0A=
                    interrupt-priorities:  0000000c.0000000c=0A=
                    device_type: 'serial'=0A=
                    name: 'su'=0A=
=0A=
                Node 0xf006fb04=0A=
                    interrupts:  00000001=0A=
                    reg:  =
00000014.00340278.00000010.00000014.0030015c.00000002.00000014.00700000.=
00000010=0A=
                    name: 'ecpp'=0A=
=0A=
                Node 0xf006fc04=0A=
                    status: 'disabled'=0A=
                    address:  fff9c3f0.fff98000.fff96000=0A=
                    device_type: 'block'=0A=
                    interrupts:  00000001=0A=
                    reg:  =
00000014.003203f0.00000008.00000014.00706000.00000010.00000014.00720000.=
00000004=0A=
                    name: 'fdthree'=0A=
=0A=
                Node 0xf007173c=0A=
                    address:  fffb8000=0A=
                    reg:  00000014.00000000.00002000=0A=
                    model: 'mk48t59'=0A=
                    name: 'eeprom'=0A=
=0A=
                Node 0xf0071824=0A=
                    version:  =
4f425020.332e3130.2e323520.32303030.2f30312f.31372032.313a3236.00504f53.=
5420312e.31362e30.20323030.302f3031.2f313220.31353a34.3900=0A=
                    address:  fef00000=0A=
                    model: 'SUNW,525-1768'=0A=
                    reg:  00000010.00000000.00100000=0A=
                    name: 'flashprom'=0A=
=0A=
                Node 0xf00718e0=0A=
                    address:  fffa4000=0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.00200000.00000040=0A=
                    name: 'watchdog'=0A=
=0A=
                Node 0xf0071998=0A=
                    address:  fffa6040=0A=
                    reg:  00000014.00200040.00000001=0A=
                    name: 'display7seg'=0A=
=0A=
                Node 0xf0071a30=0A=
                    reg:  00000014.00722000.00000004=0A=
                    name: 'beeper'=0A=
=0A=
                Node 0xf0084fe0=0A=
                    address:  fed00000=0A=
                    compatible: 'userflash'=0A=
                    user:  =0A=
                    reg:  00000010.00400000.00200000=0A=
                    block-size:  00010000=0A=
                    dcode-offset:  00000002=0A=
                    model: 'SUNW,yyy-yyyy'=0A=
                    name: 'flashprom'=0A=
=0A=
                Node 0xf0085178=0A=
                    address:  feb00000=0A=
                    compatible: 'userflash'=0A=
                    user:  =0A=
                    reg:  00000010.00800000.00200000=0A=
                    block-size:  00010000=0A=
                    dcode-offset:  00000002=0A=
                    model: 'SUNW,zzz-zzzz'=0A=
                    name: 'flashprom'=0A=
=0A=
                Node 0xf0086cc8=0A=
                    address:  fffa0000=0A=
                    s2-val:  00000010=0A=
                    clock-frequency:  004398b0=0A=
                    own-address:  00000000.000000aa=0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.00600000.00000004=0A=
                    #size-cells:  00000000=0A=
                    #address-cells:  00000002=0A=
                    compatible: 'i2cpcf,8584'=0A=
                    device_type: 'i2c'=0A=
                    name: 'i2c'=0A=
=0A=
                    Node 0xf0087018=0A=
                        env-monitor:  00000005=0A=
                        env-mon-interval:  0000003c=0A=
                        shutdown-temp:  0000004a=0A=
                        warning-temp:  00000045=0A=
                        translation:  =
00000003.00000000.00000000.00000100=0A=
                        tables:  =
63636363.63636363.63605d5a.59575452.504e4d4c.4a494847.46454443.42413f3e.=
3e3d3d3c.3b3a3938.38373736.36353534.33333232.3130302f.2e2e2d2d.2c2c2b2b.=
2a2a2929.28282727.26262525.24242323.22222121.20201f1f.1f1e1e1e.1d1d1c1c.=
1c1c1b1b.1a1a1919.19191818.18171717.17171616.15151414.14141313.12121111.=
11111010.100f0f0f.0f0f0e0e.0e0d0d0d.0d0d0d0d.0c0c0c0c.0b0b0b0b.0a0a0a0a.=
0a0a0a0a.09090909.08080808.08080808.07070707.06060606.06060606.05050505.=
05050505.04040404.04040404.04040404.03030303.03030303.03030303.03030303.=
03030303.03030303.03030303.03030303.02020202.02020202.02020202.02020202=0A=
                        channels-in-use:  00000100=0A=
                        channels-description: 'temp,cpu'=0A=
                        compatible:  =
69326370.63662c38.35393100.69326374.7970652c.39006932.6367656e.65726963.=
00=0A=
                        device_type: 'adc'=0A=
                        name: 'adc'=0A=
                        reg:  00000000.0000009e=0A=
=0A=
                    Node 0xf0087350=0A=
                        env-monitor:  00000005=0A=
                        env-mon-interval:  0000003c=0A=
                        channels-in-use:  =
00000200.03010000.06000200.07010000=0A=
                        channels-description:  =
76646463.6f72652c.63707500.6932632d.696e742d.636c6b00.6932632d.706f7765.=
722d6661.696c0069.32632d69.6e742d6f.6e00=0A=
                        compatible:  =
69326370.63662c38.35373461.00693263.74797065.2c370069.32637063.662c3835.=
37340069.32637479.70652c34.00693263.67656e65.72696300=0A=
                        device_type: 'gpio'=0A=
                        name: 'gpio'=0A=
                        reg:  00000000.00000070=0A=
=0A=
                    Node 0xf008753c=0A=
                        channels-in-use:  =
00000600.01000600.02000600.03000600.04000600.06000200.07000200=0A=
                        channels-description:  =
67613000.67613100.67613200.67613300.67613400.44454723.0046414c.2300=0A=
                        compatible:  =
69326370.63662c38.35373461.00693263.74797065.2c370069.32637063.662c3835.=
37340069.32637479.70652c34.00693263.67656e65.72696300=0A=
                        device_type: 'gpio'=0A=
                        name: 'gpio'=0A=
                        reg:  00000000.00000072=0A=
=0A=
                Node 0xf00876f0=0A=
                    address:  fff8c000=0A=
                    s2-val:  00000010=0A=
                    clock-frequency:  004398b0=0A=
                    own-address:  00000000.000000aa=0A=
                    interrupts:  00000001=0A=
                    reg:  00000014.00100000.00000004=0A=
                    #size-cells:  00000000=0A=
                    #address-cells:  00000002=0A=
                    compatible: 'i2cpcf,8584'=0A=
                    device_type: 'i2c'=0A=
                    name: 'i2c'=0A=
=0A=
                Node 0xf00a1544=0A=
                    reg:  00000014.00400000.00000064=0A=
                    name: 'SUNW,lom'=0A=
=0A=
            Node 0xf0087b7c=0A=
                local-mac-address:  080020d9.cb4f=0A=
                latency-timer:  0000000a=0A=
                assigned-addresses:  =
82010910.00000000.e0000000.00000000.00007020=0A=
                hm-rev:  000000c1=0A=
                device_type: 'network'=0A=
                interrupts:  00000001=0A=
                address-bits:  00000030=0A=
                max-frame-size:  00004000=0A=
                reg:  =
00010900.00000000.00000000.00000000.00000000.02010910.00000000.00000000.=
00000000.00007020=0A=
                compatible: 'SUNW,hme'=0A=
                name: 'network'=0A=
                fast-back-to-back:  =0A=
                devsel-speed:  00000001=0A=
                class-code:  00020000=0A=
                max-latency:  00000005=0A=
                min-grant:  0000000a=0A=
                revision-id:  00000001=0A=
                device-id:  00001001=0A=
                vendor-id:  0000108e=0A=
=0A=
            Node 0xf008f780=0A=
                latency-timer:  00000011=0A=
                assigned-addresses:  =
81011010.00000000.00c00000.00000000.00000100.82011014.00000000.e0008000.=
00000000.00000100.82011018.00000000.e000a000.00000000.00001000=0A=
                device_type: 'scsi-2'=0A=
                clock-frequency:  02625a00=0A=
                reg:  =
00011000.00000000.00000000.00000000.00000000.01011010.00000000.00000000.=
00000000.00000100.02011014.00000000.00000000.00000000.00000100.02011018.=
00000000.00000000.00000000.00001000=0A=
                model: 'Symbios,53C875'=0A=
                compatible: 'glm'=0A=
                name: 'scsi'=0A=
                devsel-speed:  00000001=0A=
                class-code:  00010000=0A=
                interrupts:  00000001=0A=
                max-latency:  00000040=0A=
                min-grant:  00000011=0A=
                revision-id:  00000003=0A=
                device-id:  0000000f=0A=
                vendor-id:  00001000=0A=
=0A=
                Node 0xf0093310=0A=
                    device_type: 'block'=0A=
                    compatible: 'sd'=0A=
                    name: 'disk'=0A=
=0A=
                Node 0xf009495c=0A=
                    device_type: 'byte'=0A=
                    compatible: 'st'=0A=
                    name: 'tape'=0A=
=0A=
            Node 0xf00955fc=0A=
                mac-address:  080020d9.cb4e=0A=
                local-mac-address:  080020d9.cb4e=0A=
                latency-timer:  0000000a=0A=
                assigned-addresses:  =
82011910.00000000.e0010000.00000000.00007020=0A=
                hm-rev:  000000c1=0A=
                device_type: 'network'=0A=
                address-bits:  00000030=0A=
                max-frame-size:  00004000=0A=
                reg:  =
00011900.00000000.00000000.00000000.00000000.02011910.00000000.00000000.=
00000000.00007020=0A=
                compatible: 'SUNW,hme'=0A=
                name: 'network'=0A=
                fast-back-to-back:  =0A=
                devsel-speed:  00000001=0A=
                class-code:  00020000=0A=
                interrupts:  00000001=0A=
                max-latency:  00000005=0A=
                min-grant:  0000000a=0A=
                revision-id:  00000001=0A=
                device-id:  00001001=0A=
                vendor-id:  0000108e=0A=
=0A=
        Node 0xf006a3c0=0A=
            bus-range:  00000002.00000003=0A=
            scsi-initiator-id:  00000007=0A=
            compatible:  =
70636931.3038652c.35303030.00706369.636c6173.732c3036.30343030.00=0A=
            66mhz-capable:  =0A=
            fast-back-to-back:  =0A=
            devsel-speed:  00000001=0A=
            class-code:  00060400=0A=
            revision-id:  00000013=0A=
            device-id:  00005000=0A=
            vendor-id:  0000108e=0A=
            interrupt-map:  =
00020800.00000000.00000000.00000001.f0069600.00000000.00020800.00000000.=
00000000.00000002.f0069600.00000001.00020800.00000000.00000000.00000003.=
f0069600.00000002.00020800.00000000.00000000.00000004.f0069600.00000003=0A=
            interrupt-map-mask:  00fff800.00000000.00000000.00000007=0A=
            #interrupt-cells:  00000001=0A=
            no-probe-list: '0'=0A=
            clock-frequency:  01f78a40=0A=
            model: 'SUNW,simba'=0A=
            #address-cells:  00000003=0A=
            #size-cells:  00000002=0A=
            reg:  00000800.00000000.00000000.00000000.00000000=0A=
            device_type: 'pci'=0A=
            name: 'pci'=0A=
=0A=
            Node 0xf009cb68=0A=
                latency-timer:  00000040=0A=
                bus-range:  00000003.00000003=0A=
                compatible:  =
70636931.3031312c.32320070.6369636c.6173732c.30363034.303000=0A=
                #address-cells:  00000003=0A=
                #size-cells:  00000002=0A=
                reg:  00020800.00000000.00000000.00000000.00000000=0A=
                device_type: 'pci'=0A=
                name: 'pci'=0A=
                fast-back-to-back:  =0A=
                devsel-speed:  00000001=0A=
                class-code:  00060400=0A=
                revision-id:  00000006=0A=
                device-id:  00000022=0A=
                vendor-id:  00001011=0A=
=0A=
                Node 0xf009d790=0A=
                    latency-timer:  00000002=0A=
                    assigned-addresses:  =
81037010.00000000.00001000.00000000.00000008.81037014.00000000.00001008.=
00000000.00000004.81037018.00000000.00001010.00000000.00000008.8103701c.=
00000000.00001018.00000000.00000004.81037020.00000000.00001020.00000000.=
00000010=0A=
                    reg:  =
00037000.00000000.00000000.00000000.00000000.01037010.00000000.00000000.=
00000000.00000008.01037014.00000000.00000000.00000000.00000004.01037018.=
00000000.00000000.00000000.00000008.0103701c.00000000.00000000.00000000.=
00000004.01037020.00000000.00000000.00000000.00000010=0A=
                    compatible:  =
70636931.3039352c.36343600.70636931.3039352c.36343600.70636963.6c617373.=
2c303130.31386600=0A=
                    #address-cells:  00000002=0A=
                    device_type: 'ide'=0A=
                    name: 'ide'=0A=
                    fast-back-to-back:  =0A=
                    devsel-speed:  00000001=0A=
                    class-code:  0001018a=0A=
                    interrupts:  00000001=0A=
                    max-latency:  00000004=0A=
                    min-grant:  00000002=0A=
                    subsystem-vendor-id:  00001095=0A=
                    subsystem-id:  00000646=0A=
                    revision-id:  00000003=0A=
                    device-id:  00000646=0A=
                    vendor-id:  00001095=0A=
=0A=
                    Node 0xf00a0064=0A=
                        device_type: 'block'=0A=
                        name: 'disk'=0A=
                        compatible: 'ide-disk'=0A=
=0A=
                    Node 0xf00a0710=0A=
                        device_type: 'block'=0A=
                        name: 'cdrom'=0A=
                        compatible: 'ide-cdrom'=0A=
=0A=
    Node 0xf0085558=0A=
        manufacturer#:  00000017=0A=
        implementation#:  00000012=0A=
        mask#:  00000091=0A=
        sparc-version:  00000009=0A=
        ecache-associativity:  00000001=0A=
        ecache-line-size:  00000040=0A=
        ecache-size:  00200000=0A=
        #dtlb-entries:  00000040=0A=
        dcache-associativity:  00000001=0A=
        dcache-line-size:  00000020=0A=
        dcache-size:  00004000=0A=
        #itlb-entries:  00000040=0A=
        icache-associativity:  00000002=0A=
        icache-line-size:  00000020=0A=
        icache-size:  00004000=0A=
        upa-portid:  00000000=0A=
        clock-frequency:  1a3a6ce2=0A=
        reg:  000001c0.00000000.00000000.00000008=0A=
        device_type: 'cpu'=0A=
        name: 'SUNW,UltraSPARC-IIi'=0A=
=0A=

------_=_NextPart_000_01C08BB0.E68C75E6--
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
