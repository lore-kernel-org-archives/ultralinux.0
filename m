From: <amarin@udea.edu.co>
Date: Fri, 05 Nov 1999 17:19:07 +0000
Subject: Help with new kernel install with atm
Message-Id: <marc-linux-ultrasparc-94182426304407@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Hi,

I have a UltraSparc 10 with Redhat linux 6.0, I was compiled the 2.2.10
kernel with Atm and the new driver Pca200e support succesfull (make
vmlinux).

I put the new kernel and System.map in the /boot directory and I updated
the silo.conf file

when I reboot and select my new kernel the systen show this error :

boot: linux-2.2.10

Fatal error: Image too large to fit in destination


Any ideas?

Andres

This is the size of new kernel
>ls -la /boot/vmlinux-2.2.10 =20
-rwxr-xr-x   1 root     root      4226515 Nov  4 15:58 vmlinux-2.2.10 =20

This is the silo.conf file

timeoutP=20
partition=3D1
root=3D/dev/hda1=20
image=3D/boot/vmlinuz-2.2.5-22
        label=3Dlinux-2.2.5-22
        read-only=20
image=3D/boot/vmlinux-2.2.10
        label=3Dlinux-2.2.10
        root=3D/dev/hda1
        read-only=20

...........................................................................=
....
           Andr=E9s Mar=EDn Lopera - Profesor de Ingenier=EDa de Sistemas
       email: amarin@udea.edu.co  Phone:(574)2105530  Fax:(574)2638282=20
                Universidad de Antioquia - Ciudad Universitaria
               Calle 67 No 53-108 Medell=EDn, Antioquia - Colombia
...........................................................................=
....
