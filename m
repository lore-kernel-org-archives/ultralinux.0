From: <pau@readysoft.es>
Date: Wed, 04 Aug 1999 09:31:42 +0000
Subject: Problems with NEW PATCH: ncr/sym drivers and bridges
Message-Id: <marc-linux-ultrasparc-93375956828870@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

On Tue, 27 Jul 1999, Gerard Roudier wrote:
> My previous patch didn't reap completions that much. This one should do
> the work a lot better.=20

I've been runnig 2.2.10 on Ultra PCI successfully for 3 days but....
Today it has stopped working. instead of SIR Resets I've got:

Caller[0000000000415f40]
Caller[000000000040fa64]
Caller[000000000043b2fc]
Caller[000000000043f718]
Caller[0000000000416314]
Caller[0000000000415f40]
Caller[000000000040fa64]
Caller[000000000043b2fc]
Caller[000000000043f718]
Caller[0000000000416314]
Caller[0000000000415f40]
Caller[000000000040fa64]
Caller[000000000043b2fc]
Caller[000000000043f718]
Caller[0000000000416314]
Caller[0000000000415f40]
Caller[000000000040fa64]
......
Caller[233123313b7e2331]
Instruction DUMP: 22c2400d  c071a358  d05a8000 <d0724000> d05a8000
02c20004  d
Aiee, killing interrupt handler
data_access_exception: Shit SFSR[000000000080100d] SFAR[00000069373a2030],
goin.
              \|/ ____ \|/
              "@'/ .. \`@"
              /_| \__/ |_\
                 \__U_/
(1): Dax
TSTATE: 0000000080f09605 TPC: 0000000000466f60 TNPC: 0000000000466f64 Y:
0000000
g0: 0000000000000000 g1: 0000000000000020 g2: 0000000000000559 g3:
0000000000000
g4: fffff80000000000 g5: fffff80027dda1c0 g6: fffff800037b8000 g7:
0000000000540
o0: 3030303334396532 o1: 30312069373a2030 o2: 00000000005ccd37 o3:
00000000157c0
o4: fffff9fff1400000 o5: 00000000157c0000 sp: fffff8000349dd11 ret_pc:
00000000c
l0: 0000000000000000 l1: fffff800037b8350 l2: 000000000057a400 l3:
0000000000570
l4: 000000000057a400 l5: 000000000057a400 l6: 00000000005cd100 l7:
000000000000f
i0: 0000000000000001 i1: fffff800037b8140 i2: 000000000000000f i3:
0000000000001
i4: 00000000005ccd03 i5: 00000000005ccd23 i6: fffff8000349ddd1 i7:
0000000000438
Caller[000000000043f718]
Caller[0000000000416314]
Caller[0000000000415f40]
..............

I got the dump through the serial console so the machine was still running =

:/ Does it help to trace the problem?

Thanks
Pau

> If you plan to start your Linux system using a sym53c8xx controller for an
> uptime of 1 year or more, the below patch may help. :-)=20
>=20
> If you refer to my previous mail about this topic, you probably will not
> expect this patch to fix anything that fails in less time than months or
> years, unless your system uses a fairly broken host-pci bridge.
>=20
> G=E9rard.
>=20
> --- linux/drivers/scsi/sym53c8xx_defs.h.1.3g	Sun Jul 25 18:37:08 1999
> +++ linux/drivers/scsi/sym53c8xx_defs.h	Mon Jul 26 23:52:25 1999
> @@ -268,7 +268,11 @@
>  #define SCSI_NCR_CMD_PER_LUN	(SCSI_NCR_MAX_TAGS)
>  #define SCSI_NCR_SG_TABLESIZE	(SCSI_NCR_MAX_SCATTER)
> =20
> +#if	defined(SCSI_NCR_BROKEN_INTR) || defined(SCSI_NCR_REAP_COMPLETIONS)
> +#define SCSI_NCR_TIMER_INTERVAL	((HZ+9)/10)
> +#else
>  #define SCSI_NCR_TIMER_INTERVAL	(HZ)
> +#endif
> =20
>  #if 1 /* defined CONFIG_SCSI_MULTI_LUN */
>  #define SCSI_NCR_MAX_LUN	(16)
> --- linux/drivers/scsi/sym53c8xx.h.1.3g	Sun Jul 25 18:49:09 1999
> +++ linux/drivers/scsi/sym53c8xx.h	Tue Jul 27 00:07:53 1999
> @@ -57,6 +57,14 @@
>  #ifndef SYM53C8XX_H
>  #define SYM53C8XX_H
> =20
> +/*
> +**	We may have to reap completions on some architectures because=20
> +**	of the host-pci bridge not following PCI ordering rules.
> +*/
> +#if	!defined(__i386__) && !defined(__powerpc__) && !defined(__alpha__)
> +#define SCSI_NCR_REAP_COMPLETIONS
> +#endif
> +
>  #include "sym53c8xx_defs.h"
> =20
>  /*
> --- linux/drivers/scsi/sym53c8xx.c.1.3g	Sun Jul 25 18:40:01 1999
> +++ linux/drivers/scsi/sym53c8xx.c	Mon Jul 26 23:46:46 1999
> @@ -6881,6 +6881,10 @@
>  		np->lasttime =3D thistime;
>  	}
> =20
> +#ifdef SCSI_NCR_REAP_COMPLETIONS
> +	ncr_wakeup_done(np);
> +#endif
> +
>  #ifdef SCSI_NCR_BROKEN_INTR
>  	if (INB(nc_istat) & (INTF|SIP|DIP)) {
> =20
> @@ -7091,6 +7095,9 @@
>  	if (istat & INTF) {
>  		OUTB (nc_istat, (istat & SIGP) | INTF);
>  		if (DEBUG_FLAGS & DEBUG_TINY) printk ("F ");
> +#ifdef __alpha__
> +		istat =3D INB (nc_istat);/* Dummy read to flush the write if PW */
> +#endif
>  		(void)ncr_wakeup_done (np);
>  #ifdef SCSI_NCR_PROFILE_SUPPORT
>  		++np->profile.num_fly;
> --- linux/drivers/scsi/ncr53c8xx.h.1.3g	Sun Jul 25 18:55:09 1999
> +++ linux/drivers/scsi/ncr53c8xx.h	Tue Jul 27 00:08:04 1999
> @@ -42,6 +42,14 @@
>  #ifndef NCR53C8XX_H
>  #define NCR53C8XX_H
> =20
> +/*
> +**	We may have to reap completions on some architectures because=20
> +**	of the host-pci bridge not following PCI ordering rules.
> +*/
> +#if	!defined(__i386__) && !defined(__powerpc__)
> +#define SCSI_NCR_REAP_COMPLETIONS
> +#endif
> +
>  #include "sym53c8xx_defs.h"
> =20
>  /*
> --- linux/drivers/scsi/ncr53c8xx.c.1.3g	Tue Jul 27 00:27:50 1999
> +++ linux/drivers/scsi/ncr53c8xx.c	Mon Jul 26 23:47:34 1999
> @@ -6666,6 +6666,10 @@
>  #endif
>  	}
> =20
> +#ifdef SCSI_NCR_REAP_COMPLETIONS
> +	ncr_wakeup_done(np);
> +#endif
> +
>  #ifdef SCSI_NCR_BROKEN_INTR
>  	if (INB(nc_istat) & (INTF|SIP|DIP)) {
> =20
>=20
>=20
> --------------------- END OF DIFFS ---------------------
>=20
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.rutgers.edu
> Please read the FAQ at http://www.tux.org/lkml/
>=20
