From: Erik de Castro Lopo <nospam@mega-nerd.com>
Date: Tue, 19 Mar 2002 07:35:19 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101652336512402@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 17 Mar 2002 12:17:59 +1100
Keith Owens <kaos@ocs.com.au> wrote:

> On Sun, 17 Mar 2002 11:11:32 +1100, 
> Erik de Castro Lopo <nospam@mega-nerd.com> wrote:
> >If I then take the working uni-processor kernel tree, switch
> >on SMP support and then do 
> >
> >    make dep ; make clean ; make ; make modules ; 
> >    make modules_install
> 
> You must make mrproper after switching SMP on/off.  Kernel build 2.4
> does not correctly rebuild after changing CONFIG_SMP.

Thanks Keith. I think that fixed the problem a little but I now have a new
problem.

I grab a clean 2.4.18 kernel source tree (from a pristine 2.4.18 tarball) and 
copy in the .config file I used to create a working uni-processor kernel from 
the same kernel version. I then do:

  - make menuconfig and enable SMP
  - edit the top level makefile and set EXTRAVERSION to 'smp' so that
    all modules will end up in a different directory to the uni-processor
    kernel
  - make dep
  - make
  - make modules modules_install
  - reboot

The new kernel does this at boot:

    boot: test
    Uncompressing image...
    -
    Remapping the kernel... done.
    Booting Linux...
    Starting CPU 2... OK

and then hangs. I can't even "send brk" to drop it back to the OBP prompt,
I have to power cycle it.

The only thing I can think of that might be causing trouble is that this is
a relatively recent box and the CPUs may be a previously unseen version. Here
are the details (after booting the single uni-processor kernel):

    root@razor > cat /proc/cpuinfo 
    cpu             : TI UltraSparc II  (BlackBird)
    fpu             : UltraSparc II integrated FPU
    promlib         : Version 3 Revision 23
    prom            : 3.23.1
    type            : sun4u
    ncpus probed    : 2
    ncpus active    : 1
    Cpu0Bogo        : 897.84
    Cpu0ClkTck      : 000000001ad2819f

This machine runs happily on the single processor 2.4.18 kernel I built. It also
runs Solaris on 2 processors without a hitch. I added a debug print statements
and found that the last place I get any useful behaviour out of the machine is
just before calling cpu_idel().

Anybody got any clues on how to debug this further?

Cheers,
Erik
-- 
+-----------------------------------------------------------+
  Erik de Castro Lopo  nospam@mega-nerd.com (Yes it's valid)
+-----------------------------------------------------------+
The National Multiple Sclerosis Society of America recently started an
advertising campaign with the slogan "MS: It's not a software company".

Seasoned IT professionals will have no trouble telling the two MS's 
apart. One is a debilitating and surprisingly widespread affliction 
that renders the sufferer barely able to perform the simplest task. 
The other is a disease.
