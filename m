From: =?ISO-8859-2?Q?Tomasz_K=B3oczko?= <kloczek@rudy.mif.pg.gda.pl>
Date: Sat, 11 Sep 1999 20:56:21 +0000
Subject: kernel 2.2.x and eth cards (Sun hme and Sun quad)
Message-Id: <marc-linux-ultrasparc-93708356410708@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


Fiew days ago I'm try to start upgrade my Ultra 1 from UP 1.1.9 to RH 6.0.
Afert finishing this operation and reboting system dyring initialize ethe
ports something was goin wrong and I log on to system .. without eth
ports. After short investigation I'm insert into __initfunc() (after
comment "QEC can be parent of ..."):

printk("sdev->prom_name: %s (qec)\n", sdev->prom_name);
printk("sdev->child: %p\n", sdev->child);
if (sdev->child){
 printk("sdev->child->prom_name: %s (qe)\n", sdev->child->prom_name);
 printk("sdev->child->next: %p\n", sdev->child->next);
 if (sdev->child->next){
  printk("sdev->child->next->prom_name: %s (qe)\n",sdev->child->next->prom_=
name);
  printk("sdev->child->next->next: %p",   sdev->child->next->next);
  if (sdev->child->next->next){
   printk("sdev->child->next->next->prom_name: %s (qe)", sdev->child->next-=
>next->prom_name);
   printk("sdev->child->next->next->next, %p\n", sdev->child->next->next->n=
ext);
   if (sdev->child->next->next->next){
    printk("sdev->child->next->next->next->prom_name: %s (qe)\n", sdev->chi=
ld->next->next->next->prom_name);
}}}}

for checking SBus structures tree in my system readaed by
for_each_sbusdev(). And after booting 2.1.126 (last kernel version which
works for me with hme) and inserting sunqe module I receive:

[root@mer net]# insmod sunqe.o
sdev->prom_name: SUNW,CS4231 (qec)
sdev->child: 0000000000000000
sdev->prom_name: auxio (qec)
sdev->child: 0000000000000000
sdev->prom_name: flashprom (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,fdtwo (qec)
sdev->child: 0000000000000000
sdev->prom_name: eeprom (qec)
sdev->child: 0000000000000000
sdev->prom_name: zs (qec)
sdev->child: 0000000000000000
sdev->prom_name: zs (qec)
sdev->child: 0000000000000000
sdev->prom_name: sc (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,pll (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,fas (qec)
sdev->child: fffff80007ef3960
sdev->child->prom_name: sd (qe)
sdev->child->next: fffff80007ef3b80
sdev->child->next->prom_name: st (qe)
sdev->child->next->next: 0000000000000000sdev->prom_name: SUNW,hme (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,bpp (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,qfe (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,qfe (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,qfe (qec)
sdev->child: 0000000000000000
sdev->prom_name: SUNW,qfe (qec)
sdev->child: 0000000000000000
sunqe.o: init_module: Device or resource busy

Now I'm start analize __initfunc() in 2.2.10.
I see in this function fragment:

       for_each_sbus(bus) {
                for_each_sbusdev(sdev, bus) {
                        if(cards) dev =3D NULL;

                        /* QEC can be parent of either QuadEthernet or BigM=
AC
                         * children.
                         */
                        if(!strcmp(sdev->prom_name, "qec") && sdev->child &&
                           !strcmp(sdev->child->prom_name, "qe") &&
                           sdev->child->next &&
                           !strcmp(sdev->child->next->prom_name, "qe") &&
                           sdev->child->next->next &&
                           !strcmp(sdev->child->next->next->prom_name, "qe"=
) &&
                           sdev->child->next->next->next && !strcmp(sdev->c=
hild->next->next->next->prom_name, "qe")) {
                                cards++;
                                if((v =3D qec_ether_init(dev, sdev)))
                                        return v;
                        }
                }
        }

Hmm .. seems that Sun Quad has name "qfe" .. not "qe" and second .. this
not one device "qec" and four chann "qe" devices but only four "qfe" on
the same level.
Seems that this is completly broken for my hardware. Question (1) is .. is
anyone have working sun quad under 2.2.x ?
And next Q(2): If I only rewrite __initfunc() for proper detection Quad
devices can current code corectly initialize them and drive ?

OK this is about Quad. As I say not only Quad not working under 2.2 for
me. Also Sun hepay meal. One eye shot into happy_meal_probe() in sunhme.c:

       for_each_sbus(bus) {
                for_each_sbusdev(sdev, bus) {
                        if(cards)
                                dev =3D NULL;
                        if(!strcmp(sdev->prom_name, "SUNW,hme")) {
                                cards++;
                                if((v =3D happy_meal_ether_init(dev, sdev, =
0)))
                                        return v;
                        } else if(!strcmp(sdev->prom_name, "qfe") ||
                                  !strcmp(sdev->prom_name, "SUNW,qfe")) {
                                cards++;
                                if((v =3D happy_meal_ether_init(dev, sdev, =
1)))
                                        return v;
                        }
                }
        }

Looking on above prink outptu I see that my hme have "SUNW,hme" name and
seems that (partialy) above loop is correctly .. but why (the hell) on
initializing hme is probed qfe/SUNW,qfe (?) which is name for Quad
interfaces ? This second (meybe) broken point (this is like "if can not
initialize soud card .. initialize TV card" ;-)
And last question is .. in which way I can try to fix this ? :-)

I'm not finish investigation why hme card under 2.2 (2.2.10) not working
but seems that maybe something is broken in happy_meal_ether_init() .. I'l
try finish this and report.

Regards

kloczek
--=20
-----------------------------------------------------------
*Ludzie nie maj=B1 problem=F3w, tylko sobie sami je stwarzaj=B1*
-----------------------------------------------------------
Tomasz K=B3oczko, sys adm @zie.pg.gda.pl|*e-mail: kloczek@rudy.mif.pg.gda.p=
l*
