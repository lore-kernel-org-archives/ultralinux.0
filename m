From: Ricky Beam <jfbeam@bluetronic.net>
Date: Wed, 24 Dec 2003 03:38:18 +0000
Subject: Re: environmental monitoring
Message-Id: <marc-linux-ultrasparc-107223723030762@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-107223135327134@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-107223135327134@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 23 Dec 2003, Eric Brower wrote:
>A driver needs to learn about the OBP format used on a particular
>platform for environmental monitoring.  In the case of the T1/200 it may
>be similar enough to the existing bbc_envctrl driver (written for an
>SB1000) that you can adapt it for use on your system.  At the very
>least, you'll have to remove the bbc_present() test.

Umm, the Netra T1 doesn't have an "envctrl" -- or a "SUNW,rasctrl" on an
ebus.

(pruned prtconf -pv from solaris -- linux doesn't see anything behind pmu)
            Node 0xf00793b8
                name:  'pmu'
                compatible: 'pci10b9,7101' + 'pciclass,000000'
                device-id:  00007101
                vendor-id:  000010b9

                Node 0xf0079b80
                    compatible: 'i2c-smbus'
                    name:  'i2c'

                    Node 0xf007b018
                        compatible: 'i2c-max1617'
                        name:  'temperature'

                    Node 0xf007b2c0 (&0xf007b378)
                        compatible: 'i2c-at34c02'
                        name:  'dimm'

                    Node 0xf007b430
                        compatible: 'i2c-at24c64'
                        device_type:  'nvram'
                        name:  'i2c-nvram'

                        Node 0xf007bf48
                            device_type:  'idprom'
                            name:  'idprom'

                    Node 0xf007c1fc
                        compatible: 'i2c-at24c64'
                        name:  'motherboard-fru'

                Node 0xf007cd94
                    compatible: 'SUNW,smbus-fan-control'
                    name:  'fan-control'


