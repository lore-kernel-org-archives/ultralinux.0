From: Clint Adams <schizo@debian.org>
Date: Wed, 24 Dec 2003 04:12:19 +0000
Subject: Re: environmental monitoring
Message-Id: <marc-linux-ultrasparc-107223915131800@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107223135327134@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107223135327134@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Umm, the Netra T1 doesn't have an "envctrl" -- or a "SUNW,rasctrl" on an
> ebus.

I don't think that's important; all I want is the CPU temperature.

This is from a 105 (where the linux 2.6.0 envctrl module works):

System Configuration:  Sun Microsystems  sun4u
Memory size: 1024 Megabytes
System Peripherals (Software Nodes):

SUNW,UltraSPARC-IIi-cEngine
    packages (driver probably installed)
        terminal-emulator (driver probably installed)
        deblocker (driver probably installed)
        obp-tftp (driver probably installed)
        disk-label (driver probably installed)
        ufs-file-system (driver probably installed)
        cdfs (driver probably installed)
        SUNW,builtin-drivers (driver probably installed)
        sun-keyboard (driver probably installed)
    chosen (driver probably installed)
    openprom (driver probably installed)
        client-services (driver probably installed)
    options (driver probably installed)
    aliases (driver probably installed)
    memory (driver probably installed)
    virtual-memory (driver probably installed)
    pci (driver probably installed)
        pci (driver probably installed)
            ebus (driver probably installed)
                auxio (driver probably installed)
                power (driver probably installed)
                SUNW,pll (driver probably installed)
                su (driver probably installed)
                su (driver probably installed)
                ecpp (driver probably installed)
                fdthree (driver probably installed)
                eeprom (driver probably installed)
                flashprom (driver probably installed)
                watchdog (driver probably installed)
                display7seg (driver probably installed)
                beeper (driver probably installed)
                flashprom (driver probably installed)
                flashprom (driver probably installed)
                i2c (driver probably installed)
                    adc (driver probably installed)
                    gpio (driver probably installed)
                    gpio (driver probably installed)
                i2c (driver probably installed)
                SUNW,lom (driver probably installed)
            network (driver probably installed)
            scsi (driver probably installed)
                disk (driver probably installed)
                tape (driver probably installed)
            network (driver probably installed)
        pci (driver probably installed)
            pci (driver probably installed)
                ide (driver probably installed)
                    disk (driver probably installed)
                    cdrom (driver probably installed)
    SUNW,UltraSPARC-IIi (driver probably installed)

And this is from a 200 (where it doesn't)

System Configuration:  Sun Microsystems  sun4u
Memory size: 512 Megabytes
System Peripherals (Software Nodes):

SUNW,UltraAX-i2
    packages (driver probably installed)
        terminal-emulator (driver probably installed)
        deblocker (driver probably installed)
        obp-tftp (driver probably installed)
        disk-label (driver probably installed)
        SUNW,builtin-drivers (driver probably installed)
        dropins (driver probably installed)
        kbd-translator (driver probably installed)
    chosen (driver probably installed)
    openprom (driver probably installed)
        client-services (driver probably installed)
    options (driver probably installed)
    aliases (driver probably installed)
    memory (driver probably installed)
    virtual-memory (driver probably installed)
    pci (driver probably installed)
        pci (driver probably installed)
            ebus (driver probably installed)
                flashprom (driver probably installed)
                eeprom (driver probably installed)
                idprom (driver probably installed)
                SUNW,lomh (driver probably installed)
            pmu (driver probably installed)
                i2c (driver probably installed)
                    temperature (driver probably installed)
                    dimm (driver probably installed)
                    dimm (driver probably installed)
                    i2c-nvram (driver probably installed)
                        idprom (driver probably installed)
                    motherboard-fru (driver probably installed)
                fan-control (driver probably installed)
            lomp (driver probably installed)
            isa (driver probably installed)
                power (driver probably installed)
                serial (driver probably installed)
                serial (driver probably installed)
            network (driver probably installed)
            usb (driver probably installed)
            ide (driver probably installed)
                disk (driver probably installed)
                cdrom (driver probably installed)
            network (driver probably installed)
            usb (driver probably installed)
        pci (driver probably installed)
            scsi (driver probably installed)
                disk (driver probably installed)
                tape (driver probably installed)
            scsi (driver probably installed)
                disk (driver probably installed)
                tape (driver probably installed)
    SUNW,UltraSPARC-IIe (driver probably installed)
