From: Antti Salmela <asalmela@iki.fi>
Date: Sat, 06 May 2000 13:04:47 +0000
Subject: Re: Oops with 2.2.14 on Ultra 1.
Message-Id: <marc-linux-ultrasparc-95761850416654@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95754803607277@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95754803607277@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, May 05, 2000 at 11:37:27AM -0700, David S. Miller wrote:
>    Date: 	Fri, 5 May 2000 19:57:54 +0300
>    From: Antti Salmela <asalmela@iki.fi>
> 
>    This was non-fatal, but system has sometimes locked up hard.
>    If any other info is need, just tell.

Another oops just occurred today with this patch applied to 2.2.15.

> The following patch will fix this OOPS.  Thanks for the excellent
> and detailed bug report.
> 
> --- arch/sparc64/mm/ultra.S.~1~	Fri Mar  3 15:50:46 2000
> +++ arch/sparc64/mm/ultra.S	Fri May  5 11:16:03 2000
> @@ -37,7 +37,7 @@
>  		    */
>  #define TLB_MAGIC	207 /* Students, do you know how I calculated this?  -DaveM */
>  /*IC3*/	cmp		%o5, %o4
> -	be,pt		%xcc, __flush_tlb_page
> +	bleu,pt		%xcc, __flush_tlb_page
>  	 srlx		%o5, 13, %g5
>  	cmp		%g5, TLB_MAGIC
>  	bgeu,pn		%icc, __flush_tlb_range_constant_time

gcc version egcs-2.92.11 19980921 (gcc2 ss-980609 experimental))

ksymoops 2.3.3 on sparc64 2.2.15.  Options used
     -V (default)
     -k /proc/ksyms (default)
     -l /proc/modules (default)
     -o /lib/modules/2.2.15/ (default)
     -m /boot/System.map-2.2.15 (specified)
     -t elf64-sparc

Error (regular_file): read_ksyms stat /proc/ksyms failed
No modules in ksyms, skipping objects
No ksyms, skipping lsmod
Unable to handle kernel NULL pointer dereference
tsk->mm->context = 00000000000005c6
tsk->mm->pgd = fffff800234b3000
              \|/ ____ \|/
              "@'/ .. \`@"
              /_| \__/ |_\
                 \__U_/
cat(5504): Oops
TSTATE: 0000009900009601 TPC: 000000000051b5cc TNPC: 000000000051b5d0 Y: 00000000
Using defaults from ksymoops -a sparc
g0: 0000000000000000 g1: 0000000000000003 g2: 000000000000ffff g3: 0000000000000008
g4: fffff80000000000 g5: 0000006c642d6c00 g6: fffff80021318000 g7: ffffffffffffff00
o0: 00000000000246a8 o1: 00000000000246a8 o2: 0000000000001fff o3: fffff80020496428
o4: 0000000000000000 o5: 000000000000ffff sp: fffff8002131b621 ret_pc: 0000000000454b2c
l0: ffffffffffffffea l1: 0000000000000000 l2: 0000000000000000 l3: 0000000000000000
l4: 0000000000000000 l5: 0000000000000000 l6: 0000000000000000 l7: 0000000070028c94
i0: fffff80020496400 i1: 00000000000246a8 i2: 0000000000002000 i3: 0000000000000000
i4: 0000000000000000 i5: 0000000000000000 i6: fffff8002131b6e1 i7: 0000000000410114
Caller[0000000000410114]
Caller[0000000000011b24]
Instruction DUMP: 38680013  90220009  9a100002 <c48b1100> c4aa1020  86100000  80a0e000  16480004  8410000a 

>>TPC; 0051b5cc <read_port+2c/80>   <==>>O7;  00454b2c <sys_read+ec/120>
>>I7;  00410114 <linux_sparc_syscall+34/40>
Trace; 00410114 <linux_sparc_syscall+34/40>
Trace; 00011b24 Before first symbol
Code;  0051b5c0 <read_port+20/80>
0000000000000000 <_TPC>:
Code;  0051b5c0 <read_port+20/80>
   0:   38 68 00 13       bgu,a   %xcc, 4c <_TPC+0x4c> 0051b60c <read_port+6c/80>
Code;  0051b5c4 <read_port+24/80>
   4:   90 22 00 09       sub  %o0, %o1, %o0
Code;  0051b5c8 <read_port+28/80>
   8:   9a 10 00 02       mov  %g2, %o5
Code;  0051b5cc <read_port+2c/80>   <==   c:   c4 8b 11 00       lduba  [ %o4 ] #ASI_P_L, %g2   <==Code;  0051b5d0 <read_port+30/80>
  10:   c4 aa 10 20       stba  %g2, [ %o0 ] #ASI_S
Code;  0051b5d4 <read_port+34/80>
  14:   86 10 00 00       mov  %g0, %g3
Code;  0051b5d8 <read_port+38/80>
  18:   80 a0 e0 00       cmp  %g3, 0
Code;  0051b5dc <read_port+3c/80>
  1c:   16 48 00 04       bge  %icc, 2c <_TPC+0x2c> 0051b5ec <read_port+4c/80>
Code;  0051b5e0 <read_port+40/80>
  20:   84 10 00 0a       mov  %o2, %g2

1 error issued.  Results may not be reliable.

cpu		: TI UltraSparc I   (SpitFire)
fpu		: UltraSparc I integrated FPU
promlib		: Version 3 Revision 1
prom		: 3.1.1
type		: sun4u
ncpus probed	: 1
ncpus active	: 1
BogoMips	: 333.41
MMU Type	: Spitfire

-- 
Antti Salmela
