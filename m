From: Antti Salmela <asalmela@iki.fi>
Date: Fri, 05 May 2000 16:57:54 +0000
Subject: Oops with 2.2.14 on Ultra 1.
Message-Id: <marc-linux-ultrasparc-95754803607277@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This was non-fatal, but system has sometimes locked up hard.
If any other info is need, just tell.

gcc version egcs-2.92.11 19980921 (gcc2 ss-980609 experimental))

cpu		: TI UltraSparc I   (SpitFire)
fpu		: UltraSparc I integrated FPU
promlib		: Version 3 Revision 1
prom		: 3.1.1
type		: sun4u
ncpus probed	: 1
ncpus active	: 1
BogoMips	: 333.41
MMU Type	: Spitfire

ksymoops 2.3.3 on sparc64 2.2.14.  Options used
     -V (default)
     -k /proc/ksyms (default)
     -l /proc/modules (default)
     -o /lib/modules/2.2.14/ (default)
     -m /usr/src/kernel-source-2.2.14/System.map (specified)
     -t elf64-sparc

Error (regular_file): read_ksyms stat /proc/ksyms failed
No modules in ksyms, skipping objects
No ksyms, skipping lsmod
              \|/ ____ \|/
              "@'/ .. \`@"
              /_| \__/ |_\
                 \__U_/
TSTATE: 0000000080009403 TPC: 0000000000436f6c TNPC: 0000000000436f70 Y: 00000000
Using defaults from ksymoops -a sparc
g0: 0000000000000000 g1: 0000000000000096 g2: 00000000000003a3 g3: 000000000044776c
g4: fffff80000000000 g5: 0000000070270010 g6: fffff80011854000 g7: 00000000005d8c00
o0: 0000000000000033 o1: 0000000070270000 o2: 0000000000000010 o3: 0000000070270000
o4: 0000000000002000 o5: fffff7ff8fd8e000 sp: fffff80011857461 ret_pc: 00000000004477bc
l0: 0000000000000000 l1: fffff8000026bd20 l2: fffff800226df2c0 l3: 0000000070270000
l4: ffffffffffffe000 l5: 0000000000001fff l6: 0000000000000000 l7: 00000000701c0114
i0: 0000000070270000 i1: 0000000000079952 i2: 0000000000000048 i3: 0000000000000000
i4: 0000000000000000 i5: 00000000000000a8 i6: fffff80011857521 i7: 0000000000454320
Caller[0000000000454320]
Caller[0000000000454648]
Caller[00000000004100d4]
Caller[0000000000129d68]
Instruction DUMP: 83518000  8d906002  d0f28b00 <c0f14bed> c0f14aed  0afb7ffe  9a23400c  81d98000  c4f28b00 

>>TPC; 00436f6c <__flush_tlb_range_pbp_slow+c/40>   <==>>O7;  004477bc <vmtruncate+bc/e0>
>>I7;  00454320 <do_truncate+60/c0>
Trace; 00454320 <do_truncate+60/c0>
Trace; 00454648 <sys_ftruncate+128/160>
Trace; 004100d4 <linux_sparc_syscall+34/40>
Trace; 00129d68 Before first symbol
Code;  00436f60 <__flush_tlb_range_pbp_slow+0/40>
0000000000000000 <_TPC>:
Code;  00436f60 <__flush_tlb_range_pbp_slow+0/40>
   0:   83 51 80 00       rdpr  %pstate, %g1
Code;  00436f64 <__flush_tlb_range_pbp_slow+4/40>
   4:   8d 90 60 02       wrpr  %g1, 2, %pstate
Code;  00436f68 <__flush_tlb_range_pbp_slow+8/40>
   8:   d0 f2 8b 00       stxa  %o0, [ %o2 ] (88)
Code;  00436f6c <__flush_tlb_range_pbp_slow+c/40>   <==   c:   c0 f1 4b ed       stxa  %g0, [ %g5 + %o5 ] (95)   <==Code;  00436f70 <__flush_tlb_range_pbp_slow+10/40>
  10:   c0 f1 4a ed       stxa  %g0, [ %g5 + %o5 ] (87)
Code;  00436f74 <__flush_tlb_range_pbp_slow+14/40>
  14:   0a fb 7f fe       brnz  %o5, c <_TPC+0xc> 00436f6c <__flush_tlb_range_pbp_slow+c/40>
Code;  00436f78 <__flush_tlb_range_pbp_slow+18/40>
  18:   9a 23 40 0c       sub  %o5, %o4, %o5
Code;  00436f7c <__flush_tlb_range_pbp_slow+1c/40>
  1c:   81 d9 80 00       flush  %g6
Code;  00436f80 <__flush_tlb_range_pbp_slow+20/40>
  20:   c4 f2 8b 00       stxa  %g2, [ %o2 ] (88)


1 error issued.  Results may not be reliable.


-- 
Antti Salmela
