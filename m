From: Wesley Hosking <wes@atlantek.com.au>
Date: Thu, 07 May 1998 00:16:16 +0000
Subject: NIS pbs
Message-Id: <marc-linux-ultrasparc-90222356530978@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356530971@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356530971@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Thierry Lafage writes:
 >=20
 > Hello,
 >=20
 > Still using the UP-1.0.9 on an Ultra-I. I think there could be some
 > problems with:=20
 >=20
 > 	1) hostname/domainname
 > 	2) the package ypbind-3.3-3.sparc.rpm
 >=20
 > 1)
 > > dominname THIS
 > > domainname=20
 > \=E4ISp
 > > dominname the_domain
 > > domainname=20
 > the_domain

You need to set the NIS domainname in /etc/sysconfig/networks

ie: add
NISDOMAIN=3Dyourdomainname
to the end of the file.

If you want to check out whats happenning look at /etc/rc.d

in rc.sysinit you have :

# Set the NIS domain name
if [ -n "$NISDOMAIN" ]; then
    domainname $NISDOMAIN
else
    domainname ""
fi

(Which is set from the networks file)


 >=20
 > 2)
 > > rpm -Uvh ypbind-3.3-3.sparc.rpm=20
 > ypbind                      ############################################=
# > #####
 > > cd /etc/rc.d
 > > find . -name '*ypbind*' -ls  =20
 > 101712 1 -rwxr-xr-x 1 root root 863 May  4 13:39 ./init.d/ypbind
 > 132156 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc0.d/K30ypbind -> ../=
i > nit.d/ypbind
 >   6236 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc1.d/K30ypbind -> ../=
i > nit.d/ypbind
 >  48874 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc2.d/K30ypbind -> ../=
i > nit.d/ypbind
 >  79342 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc3.d/K30ypbind -> ../=
i > nit.d/ypbind
 >  89412 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc4.d/K30ypbind -> ../=
i > nit.d/ypbind
 > 101715 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc5.d/K30ypbind -> ../=
i > nit.d/ypbind
 > 122203 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc6.d/K30ypbind -> ../=
i > nit.d/ypbind
 >=20
 > I don't know how to setup these links to start ypbind correctly at boot =
t > ime.

Normally in rh5.0 you can change this with the level editor (whatever
its called ? ).

In the above cases change the K to an S for the levels you want it
running in ie: 3,4,5

ie: rc3.d/S30ypbind

wes

PS: hopes this helps, I had trouble because I was specifying NISDOMAIN
as NIS_DOMAIN

 >=20
 > Any help appreciated.
 >=20
 > Thierry Lafage
 >=20
 > -- CAPS project -- IRISA, campus de Beaulieu, 35042 Rennes cedex, France
 > Phone: +33 2 99 84 25 01 -- Fax: +33 2 99 84 71 71 --
 > http://www.irisa.fr/caps/PEOPLE/ThierryL/
