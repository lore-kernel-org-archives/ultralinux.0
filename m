From: Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Date: Tue, 26 May 1998 16:48:36 +0000
Subject: Re: Ultra5 OK apart from SunSwift SCSI
Message-Id: <marc-linux-ultrasparc-90222356531076@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531072@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531072@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Jakub Jelinek writes:
> > 
> > Now that my Ultra5 has arrived, I'm preparing to install Linux on
> > half of it. I checked that Eddie's latest test kernel that he sent me
> > boots OK on it (and hence I assume that the next UltraPenguin release
> > will work) and it does. However, it doesn't see the SCSI HBA part of
> > the SunSwift card that's in it. The SunSwift card has a fast-ethernet
> > adaptor (hme) and a SCSI adaptor (don't know what sort). The hme is
> > seen fine (along with the hme that's built into the Ultra5 already)
> > but there's no SCSI detected at all. Is that because of a bug in a
> > driver or because there's no Linux/SPARC driver for whatever the
> > SunSwift uses in the way of SCSI? If it's a question of fixing simple
> > bugs in a driver or else simple porting of an already-written driver
> > then I might be able to summon up the time and inclination to do it.
> 
> Can you do me a favor? At the PROM prompt, do cd /pci and with ls and cd
> commands find the node of that SCSI adaptor. Note, there are two pci buses,
> I think /pci/pci@1,1 and /pci/pci@x,y (don't know x,y values). I think it
> should be sitting on the second one. Can you send me the PROM name of that
> device and output of .properties when you cd into it?

Written down by hand (so there may be typos despite my being careful):

cd /pci/pci@1/pci@1/SUNW,isptwo@4
..properties

assigned-addresses 81032010  0    1000 0   100
                   82032014  0 2808000 0  1000
                   82032030  0 2810000 0 10000
model              QLGC,ISP1040B
scsi-initiator-id  7
clock-frequency    03938700
alternate-reg      0        0 0 0     0
                   2032014  0 0 0   100
                   1032010  0 0 0   100
                     32000  0 0 0     0
                   1032010  0 0 0   100
                   2032014  0 0 0  1000
                   2032030  0 0 0 10000
power-consumption  0 0
                   895440 895440
manufacturer       QLGC
device_type        scsi
name               SUNW,isptwo
fcode-rom-offset   0
devsel-speed       1
class-code         10000
interrupts         1
max-latency        0
min-grant          0
revision-id        2
device-id          1020
vendor-id          1077

--Malcolm

-- 
Malcolm Beattie <mbeattie@sable.ox.ac.uk>
Unix Systems Programmer
Oxford University Computing Services
