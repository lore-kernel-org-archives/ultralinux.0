From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Wed, 06 May 1998 09:58:35 +0000
Subject: NIS pbs
Message-Id: <marc-linux-ultrasparc-90222356530971@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org


Hello,

Still using the UP-1.0.9 on an Ultra-I. I think there could be some
problems with:=20

	1) hostname/domainname
	2) the package ypbind-3.3-3.sparc.rpm

1)
> dominname THIS
> domainname=20
\=E4ISp
> dominname the_domain
> domainname=20
the_domain

2)
> rpm -Uvh ypbind-3.3-3.sparc.rpm=20
ypbind                      ###############################################=
###
> cd /etc/rc.d
> find . -name '*ypbind*' -ls  =20
101712 1 -rwxr-xr-x 1 root root 863 May  4 13:39 ./init.d/ypbind
132156 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc0.d/K30ypbind -> ../ini=
t.d/ypbind
  6236 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc1.d/K30ypbind -> ../ini=
t.d/ypbind
 48874 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc2.d/K30ypbind -> ../ini=
t.d/ypbind
 79342 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc3.d/K30ypbind -> ../ini=
t.d/ypbind
 89412 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc4.d/K30ypbind -> ../ini=
t.d/ypbind
101715 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc5.d/K30ypbind -> ../ini=
t.d/ypbind
122203 1 lrwxrwxrwx 1 root root 16 May  6 11:23 ./rc6.d/K30ypbind -> ../ini=
t.d/ypbind

I don't know how to setup these links to start ypbind correctly at boot tim=
e.

Any help appreciated.

Thierry Lafage

-- CAPS project -- IRISA, campus de Beaulieu, 35042 Rennes cedex, France
Phone: +33 2 99 84 25 01 -- Fax: +33 2 99 84 71 71 --
http://www.irisa.fr/caps/PEOPLE/ThierryL/
