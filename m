From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Thu, 19 Nov 1998 17:15:36 +0000
Subject: Re: [Q] ultrapenguin-1.1 on UE4000
Message-Id: <marc-linux-ultrasparc-91154033002674@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91139210917441@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91139210917441@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
   Date: 	Wed, 18 Nov 1998 14:31:39 +0100 (MET)

   What's strange is that no SCSI devices has been found, also, the
   number of found SBUSes seems to be weird (I always thought every
   SBUS board has two SBUSes).

Look closely at his prtconf (he sent it to me privately, and I believe
to you too Jakub).  There are 5 types of Ex000 board types I know of:

1) 'cpu'		Ultra CPUs and memory simms
2) 'dual-sbus'		Two SBUS's, embedded SOC and FAS/HME
3) 'upa-sbus'		One UPA (for Creator3D etc.) slot and one SBUS
4) 'dual-sbus-soc+'	Same as dual-sbus except uses SOC+
5) 'pci'		PSYCHO based PCI board

One of his boards is a upa-sbus one, thus the odd number of SBUS's.
This still doesn't explain why his SCSI disk was not detected.  All of
his FAS scsi adapters were detected, and the driver did not print any
errors while probing the SCSI bus each time.. hmmm..

Eric, could you send us the output of "probe-scsi-all" from the PROM
prompt on this box?

Later,
David S. Miller
davem@dm.cobaltmicro.com
