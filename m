From: Steve Dunham <dunham@cse.msu.edu>
Date: Wed, 28 Jul 1999 20:54:40 +0000
Subject: Re: Bootable CD
Message-Id: <marc-linux-ultrasparc-93319523004027@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

mercier <mercier@ese-metz.fr> writes:

> Hello, could you tell me the correct way to generate a Bootable CD for
> sparc.

> is that command correct ?

> mkisofs -a -l -r -L -T \
>         -A "Linux Sparc" \
>         -V "UltraPenguin" \
>         -b images/boot64.img \
>         -c boot.catalog \
>         -o /cd_images/ultra.iso .

Not correct.  That's for PC bootable CDs (and it might not even work
on PCs).

The actual process is rather complicated, you have to put a disk label
on the CD using silo, and none of the kernel or ramdisk images can be
at the end of the CD.  So, you'll need to make two directory trees one
with the boot images, and one with the rest of the CD, put the one
with the images first on the command line.  Make a special silo.conf
on the CD with filenames replaced with !cd1 !cd2 etc.  Make the iso
image, mount it, and run silo with a bunch of special options.
Something like:

  silo -r /mnt -c /tmp/cdimage.iso  -l ...

after -l you put a comma seperated list of the files on the CD that
should replace !cd1,!cd2,!cd3 respectively.


Steve
dunham@cse.msu.edu
