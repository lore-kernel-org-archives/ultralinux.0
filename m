From: "G.M.Sigut" <sigut@awu.id.ethz.ch>
Date: Sat, 03 Apr 1999 15:15:00 +0000
Subject: Re: Dual Boot
Message-Id: <marc-linux-ultrasparc-92315281804569@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92299065815344@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92299065815344@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> Date: Thu, 01 Apr 1999 18:12:28 +0000
> From: William Bradley <wmbradle@samford.edu>
> To: Ultralinux <ultralinux@vger.rutgers.edu>

> Is it possible to setup dual boot for Solaris and Linux with two
> drives?  The Sun page gives instructions but only mentions partitioning
> one drive.

As Matthew and David said, it's no problem. The Sun page will also
give you the description for one disk and booting from the monitor
mode using aliases. If you want to make a dual boot from a single
disk using SILO, you will have to read the following description.
It's a hack and it does NOT work using root directories on separate
disks. I sent it to Jakub and another guy who was interested in it
on the 24.Mar.'99, but haven't heard anything from them yet. So, here
we go:

----- Begin Included Message -----

...

it might interest you, that I managed to hack SILO 0.8.5 in such
a way, that I can use it for booting Solaris as well as UltraPenguin.
The work is based on up-1.1.9.iso CD-ROM from Feb 23 19:20 as found
at ftp://sunsite.mff.cuni.cz in the directory
OS/Linux/Non-x86/Sparc/ultrapenguin-devel/cdimages/
Following changes were necessary:

.../silo-0.8.5/second/

# diff file.c.orig file.c
643c643
<             if (ufs_namei (fs, root, cwd, "ufsboot", &sinode)) {
---
>             if (ufs_namei (fs, root, cwd, "/ufsboot", &sinode)) {
#

# diff main.c.orig main.c
862a863,878
> if (solaris) {
>     int i;
>     unsigned long sa = (unsigned long)&_start;
>
>     for (i = 0; i < hp.f->e_phnum; i++, p++) {
>         if (p->p_vaddr < 0x4000 + image_len || p->p_vaddr + p->p_memsz >= sa) {
>             fatal("Unable to handle your Solaris `ufsboot' bootloader.");
>             prom_halt ();
>         }
>         memcpy ((Elf64_Addr *)(p->p_vaddr), (Elf64_Addr *)(0x4000 + p->p_offset), p->p_filesz);
>         if (p->p_filesz < p->p_memsz)
>             memset ((Elf64_Addr *)(p->p_vaddr + p->p_filesz), 0, p->p_memsz - p->p_filesz);
>     }
>     isfile = 1;
>     ret_offset = hp.f->e_entry;
> } else {
882a899
> }
#

Told in a few words: There is a problem with missing/additional "/"
at the beginning of a file-path and there is some code missing in
the ELF64 area. (I took out some leading blanks to fit the main.c
text in, but I still suppose that it will get mangled in the transit.
Apart from a few casts it corresponds to the code in ELF32 area.)

The configuration file looks as follows:

# cat /etc/silo.conf
timeoutP
partition=2
root=/dev/sda2
image=/boot/vmlinux-2.2.2.gz
        label=linux
        initrd=/boot/initrd-2.2.2.img
        read-only
image=1//platform/sun4u/kernel/unix
        label=solaris
        solaris
#

Note again the double-slash in Solaris "image" line - NOT necessary
if you type at prompt!

The disk is organised so, that the first partition (128MB) is Solaris
"/", second partition (128MB) is UltraPenguin "/".

UltraPenguin installation was done after Solaris with
"bootloader: MasterBootRecord (/dev/sda)".

Under Solaris the file /platform/sun4u/ufsboot was copied to "/".

The machine is Sun Ultra 60 Creator 3D, 128MB, 2*9GB, 360 MHz.
Solaris is Solaris 7.

Hmm. I suppose that's all.

Perhaps once more: It's a hack. I don't really understand the "problem
of missing slash" and the compiler is warning me about the casts. But
it's working.  :-)

...

----- End Included Message -----

Regards,  George

 ------------------------------------------------------------------------------
 George M.Sigut,  ETH Informatikdienste, Anwenderunterstuetzung, CH-8092 Zurich
 Swiss Federal Institute of Technology,    Computing Services,     User Support
 email: sigut@awu.id.ethz.ch     Phone: +41 1 632 5763      Fax: +41 1 632 1312
 >>>>>>>> if my regular address does not work, try "sigut@pop.agri.ch" <<<<<<<<
 ------------------------------------------------------------------------------
