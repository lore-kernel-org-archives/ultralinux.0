From: =?iso8859?Q?Antoni_P=E0mies_Oliv=E9?= <toni@readysoft.net>
Date: Fri, 29 May 1998 10:06:14 +0000
Subject: Ultralinux 1.0.9 on a sun4m IPX
Message-Id: <marc-linux-ultrasparc-90222356531089@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,

I try to install Ultralinux 1.0.9 On my sparc sun4m IPX, but when execute
any application:

application: No such file or directory

if i rebuild the rpm and reinstall, then works fine. I try com rebuild
gcc-2.7.2.3.spec on my linux sparc sun4m IPX (Red Hat 4.2) , but fails. I
send the output:

Executing: %prep
+ umask 022
+ cd /usr/src/redhat/BUILD
+ cd /usr/src/redhat/BUILD
+ rm -rf gcc-2.7.2.3
+ /bin/gzip -dc /usr/src/redhat/SOURCES/gcc-2.7.2.3.tar.gz
+ tar -xf -
+ STATUS=0
+ [ 0 -ne 0 ]
+ cd gcc-2.7.2.3
+ chown -R root .
+ chgrp -R root .
+ chmod -R a+rX,g-w,o-w .
+ echo Patch #1:
Patch #1:
+ patch -p1 --suffix .rh -s
+ echo Patch #2:
Patch #2:
+ patch -p1 -s
+ echo Patch #3:
Patch #3:
+ /bin/gzip -dc /usr/src/redhat/SOURCES/rth-gcc-2.7.2-960814.diff.gz
+ patch -p1 -s
+ STATUS=0
+ [ 0 -ne 0 ]
+ echo Patch #4:
Patch #4:
+ patch -p0 -s
+ echo Patch #5:
Patch #5:
+ patch -p1 -s
+ echo Patch #6:
Patch #6:
+ /bin/gzip -dc /usr/src/redhat/SOURCES/rth-gcc-2.7.2-961121.diff.gz
+ patch -p1 -s
+ STATUS=0
+ [ 0 -ne 0 ]
+ echo Patch #7:
Patch #7:
+ patch -p1 -s
+ echo Patch #8:
Patch #8:
+ patch -p1 --suffix .glibc2 -s
+ echo Patch #9:
Patch #9:
+ patch -p0 --suffix .alphara -s
+ cp /usr/src/redhat/SOURCES/gcc-c-skel ./gcc-c-skel.in
+ cp /usr/src/redhat/SOURCES/gcc-c++-skel ./gcc-c++-skel.in
+ cp /usr/src/redhat/SOURCES/gcc-objc-skel ./gcc-objc-skel.in
+ cat
+ sed s/ARCH/sparc/g
+ sed s/VERSION/2.7.2.3/g
+ sed s/ARCH/sparc/g
+ sed s/VERSION/2.7.2.3/g
+ sed s/ARCH/sparc/g
+ sed s/VERSION/2.7.2.3/g
+ exit 0
Executing: %build
+ umask 022
+ cd /usr/src/redhat/BUILD
+ cd gcc-2.7.2.3
+ ./configure --prefix=/usr --local-prefix=/usr/local
--gxx-include-dir=/usr/include/g++ sparc-redhat-linux
Using `./config/sparc/sparc.c' to output insns.
Using `./config/sparc/sparc.md' as machine description file.
Using `./config/sparc/linux.h' as target machine macro file.
Using `./config/sparc/xm-linux.h' as host machine macro file.
Merged x-linux.
Merged t-linux.
Merged c++ fragment(s).
Created `./Makefile'.
Merged x-linux.
Merged t-linux.
Created `cp/Makefile'.
Links are now set up to build a native compiler for sparc-redhat-linux.
+ make LANGUAGES=c
cc  -DIN_GCC   -O     -I. -I. -I./config \

-DGCC_INCLUDE_DIR=\"/usr/lib/gcc-lib/sparc-redhat-linux/2.7.2.3/include\"
\
  -DGPLUSPLUS_INCLUDE_DIR=\"/usr/include/g++\" \
  -DLOCAL_INCLUDE_DIR=\"/usr/local/include\" \

-DCROSS_INCLUDE_DIR=\"/usr/lib/gcc-lib/sparc-redhat-linux/2.7.2.3/sys-include\"
\
  -DTOOL_INCLUDE_DIR=\"/usr/sparc-redhat-linux/include\" \
  -c `echo ./cccp.c | sed 's,^\./,,'`
cc  -DIN_GCC   -O     -I. -I. -I./config -c ./cexp.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config version.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config obstack.c
cc  -DIN_GCC   -O   -o cccp cccp.o cexp.o \
  version.o obstack.o ` case "cc" in "cc") echo "" ;; esac `
rm -f cpp
ln cccp cpp > /dev/null 2>&1 \
 || cp cccp cpp
cc  -DIN_GCC   -O     -I. -I. -I./config -c ./c-parse.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-lang.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-lex.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-pragma.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-decl.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-typeck.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-convert.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-aux-info.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-common.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config c-iterate.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genattr.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config rtl.c
cc  -DIN_GCC   -O   -o genattr \
 genattr.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` ` case
"cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genattr ./config/sparc/sparc.md > tmp-attr.h
../move-if-change tmp-attr.h insn-attr.h
touch stamp-attr
cc  -DIN_GCC   -O     -I. -I. -I./config \
    \
  -c `echo ./toplev.c | sed 's,^\./,,'`
cc -c  -DIN_GCC   -O     -I. -I. -I./config tree.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config print-tree.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config stor-layout.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config fold-const.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genflags.c
cc  -DIN_GCC   -O   -o genflags \
 genflags.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genflags ./config/sparc/sparc.md > tmp-flags.h
../move-if-change tmp-flags.h insn-flags.h
touch stamp-flags
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./gencodes.c
cc  -DIN_GCC   -O   -o gencodes \
 gencodes.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../gencodes ./config/sparc/sparc.md > tmp-codes.h
../move-if-change tmp-codes.h insn-codes.h
touch stamp-codes
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genconfig.c
cc  -DIN_GCC   -O   -o genconfig \
  genconfig.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genconfig ./config/sparc/sparc.md > tmp-config.h
../move-if-change tmp-config.h insn-config.h
touch stamp-config
cc -c  -DIN_GCC   -O     -I. -I. -I./config function.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-opcode.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-parser.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-lexer.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-reverse.c
cc  -DIN_GCC   -O   -o bi-opcode \
 bi-opcode.o bi-parser.o bi-lexer.o bi-reverse.o ` case "obstack.o" in ?*)
echo obstack.o ;; esac ` ` case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case
"" in ?*) echo  ;; esac `
../bi-opcode < ./bytecode.def >tmp-bcopcd.h
(Number of opcodes is 232)
../move-if-change tmp-bcopcd.h bc-opcode.h
touch stamp-bcopcode
cc -c  -DIN_GCC   -O     -I. -I. -I./config stmt.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config expr.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config calls.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config expmed.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config explow.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config optabs.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config varasm.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config print-rtl.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config rtlanal.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-opname.c
cc  -DIN_GCC   -O   -o bi-opname \
 bi-opname.o bi-parser.o bi-lexer.o bi-reverse.o ` case "obstack.o" in ?*)
echo obstack.o ;; esac ` ` case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case
"" in ?*) echo  ;; esac `
../bi-opname < ./bytecode.def >tmp-bcopnm.h
../move-if-change tmp-bcopnm.h bc-opname.h
touch stamp-bcopname
cc -c  -DIN_GCC   -O     -I. -I. -I./config emit-rtl.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config real.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config dbxout.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config sdbout.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config dwarfout.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config xcoffout.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config integrate.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config jump.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config cse.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config loop.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config unroll.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config flow.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config stupid.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config combine.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config regclass.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config local-alloc.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config global.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config reload.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config reload1.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config caller-save.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genpeep.c
cc  -DIN_GCC   -O   -o genpeep \
 genpeep.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` ` case
"cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genpeep ./config/sparc/sparc.md > tmp-peep.c
../move-if-change tmp-peep.c insn-peep.c
touch stamp-peep
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-peep.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config reorg.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config sched.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config final.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config recog.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config reg-stack.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genopinit.c
cc  -DIN_GCC   -O   -o genopinit \
 genopinit.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genopinit ./config/sparc/sparc.md > tmp-opinit.c
../move-if-change tmp-opinit.c insn-opinit.c
touch stamp-opinit
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-opinit.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genrecog.c
cc  -DIN_GCC   -O   -o genrecog \
 genrecog.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genrecog ./config/sparc/sparc.md > tmp-recog.c
../move-if-change tmp-recog.c insn-recog.c
touch stamp-recog
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-recog.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genextract.c
cc  -DIN_GCC   -O   -o genextract \
genextract.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genextract ./config/sparc/sparc.md > tmp-extract.c
../move-if-change tmp-extract.c insn-extract.c
touch stamp-extract
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-extract.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genoutput.c
cc  -DIN_GCC   -O   -o genoutput \
 genoutput.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` `
case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genoutput ./config/sparc/sparc.md > tmp-output.c
../move-if-change tmp-output.c insn-output.c
touch stamp-output
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-output.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genemit.c
cc  -DIN_GCC   -O   -o genemit \
 genemit.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` ` case
"cc"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*) echo  ;; esac `
../genemit ./config/sparc/sparc.md > tmp-emit.c
../move-if-change tmp-emit.c insn-emit.c
touch stamp-emit
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-emit.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./genattrtab.c
cc  -DIN_GCC   -O   -o genattrtab \
 genattrtab.o rtl.o print-rtl.o rtlanal.o ` case "obstack.o" in ?*) echo
obstack.o ;; esac ` ` case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case ""
in ?*) echo  ;; esac `
if cmp -s Makefile   ./config/sparc/sparc.md;   \
then                                    \
  echo Using ;  \
  cp  tmp-attrtab.c;    \
else                                    \
  ./genattrtab ./config/sparc/sparc.md > tmp-attrtab.c; \
fi
../move-if-change tmp-attrtab.c insn-attrtab.c
touch stamp-attrtab
cc  -DIN_GCC   -O     -I. -I. -I./config -c insn-attrtab.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./config/sparc/sparc.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config getpwd.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config convert.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config \
   ./bi-arity.c
cc  -DIN_GCC   -O   -o bi-arity \
 bi-arity.o bi-parser.o bi-lexer.o bi-reverse.o ` case "obstack.o" in ?*)
echo obstack.o ;; esac ` ` case "cc"@"" in "cc"@?*) echo  ;; esac ` ` case
"" in ?*) echo  ;; esac `
../bi-arity < ./bytecode.def >tmp-bc-arity.h
../move-if-change tmp-bc-arity.h bc-arity.h
touch stamp-bcarity
cc -c  -DIN_GCC   -O     -I. -I. -I./config bc-emit.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config bc-optab.c
cc  -DIN_GCC   -O   -o cc1 c-parse.o c-lang.o c-lex.o c-pragma.o c-decl.o
c-typeck.o c-convert.o c-aux-info.o c-common.o c-iterate.o toplev.o
version.o tree.o print-tree.o stor-layout.o fold-const.o function.o stmt.o
expr.o calls.o expmed.o
 explow.o optabs.o varasm.o rtl.o print-rtl.o rtlanal.o emit-rtl.o real.o
dbxout.o sdbout.o dwarfout.o xcoffout.o integrate.o jump.o cse.o loop.o
unroll.o flow.o stupid.o combine.o regclass.o local-alloc.o global.o
reload.o reload1.o caller-save.o insn-peep.o reorg.o sched.o final.o
recog.o reg-stack.o insn-opinit.o insn-recog.o insn-extract.o
insn-output.o insn-emit.o insn-attrtab.o sparc.o getpwd.o convert.o
bc-emit.o bc-optab.o obstack.o ` case "cc" in "cc") echo "" ;; esac `
/bin/sh ./genmultilib "" \
  "" "" > multilib.h
cc  -DIN_GCC   -O     -I. -I. -I./config \
  -DSTANDARD_STARTFILE_PREFIX=\"/usr/lib/\" \
  -DSTANDARD_EXEC_PREFIX=\"/usr/lib/gcc-lib/\" \
  -DDEFAULT_TARGET_VERSION=\"2.7.2.3\" \
  -DDEFAULT_TARGET_MACHINE=\"sparc-redhat-linux\" \
  -DTOOLDIR_BASE_PREFIX=\"/usr/\" \
   \
  -c `echo ./gcc.c | sed 's,^\./,,'`
cc  -DIN_GCC   -O   -o xgcc gcc.o version.o  obstack.o ` case "cc" in
"cc") echo
 "" ;; esac `
../xgcc -B./ -dumpspecs > tmp-specs
mv tmp-specs specs
rm -f tmplibgcc1.a
for name in _mulsi3 _udivsi3 _divsi3 _umodsi3 _modsi3 _lshrsi3 _ashrsi3
_ashlsi3
 _divdf3 _muldf3 _negdf2 _adddf3 _subdf3 _fixdfsi _fixsfsi _floatsidf
_floatsisf
 _truncdfsf2 _extendsfdf2 _addsf3 _negsf2 _subsf3 _mulsf3 _divsf3 _eqdf2
_nedf2 _gtdf2 _gedf2 _ltdf2 _ledf2 _eqsf2 _nesf2 _gtsf2 _gesf2 _ltsf2
_lesf2; \
do \
  echo ${name}; \
  rm -f ${name}.o; \
  cc -O -I. -I. -I./config -c -DL${name} ./libgcc1.c; \
  if [ $? -eq 0 ] ; then true; else exit 1; fi; \
  mv libgcc1.o ${name}.o; \
  ar qc tmplibgcc1.a ${name}.o; \
  rm -f ${name}.o; \
done
_mulsi3
_udivsi3
_divsi3
_umodsi3
_modsi3
_lshrsi3
_ashrsi3
_ashlsi3
_divdf3
_muldf3
_negdf2
_adddf3
_subdf3
_fixdfsi
_fixsfsi
_floatsidf
_floatsisf
_truncdfsf2
_extendsfdf2
_addsf3
_negsf2
_subsf3
_mulsf3
_divsf3
_eqdf2
_nedf2
_gtdf2
_gedf2
_ltdf2
_ledf2
_eqsf2
_nesf2
_gtsf2
_gesf2
_ltsf2
_lesf2
for file in .. ; \
do \
  if [ x${file} != x.. ]; then \
    name=`echo ${file} | sed -e 's/[.][cS]$//' -e 's/[.]asm$//'`; \
    echo ${name}; \
    if [ ${name}.asm = ${file} ]; then \
      cp ${file} ${name}.s || exit 1; file=${name}.s; \
    else true; fi; \
    cc -O -I. -I. -I./config -c ${file}; \
if [ $? -eq 0 ] ; then true; else exit 1; fi; \
    ar qc tmplibgcc1.a ${name}.o; \
    if [ $? -eq 0 ] ; then true; else exit 1; fi; \
    rm -f ${name}.s ${name}.o; \
  else true; \
  fi; \
done
if [ -f /usr/bin/ranlib -o -f /bin/ranlib ] ; then ranlib tmplibgcc1.a;
else true; fi
mv tmplibgcc1.a libgcc1.a
if [ -f /usr/include/limits.h ] ; then \
  cat ./limitx.h ./glimits.h ./limity.h > tmp-xlimits.h; \
else \
  cat ./glimits.h > tmp-xlimits.h; \
fi
mv tmp-xlimits.h xlimits.h
cc  -DIN_GCC   -O  -I. -I. -I./config  -o g++ ./cp/g++.c obstack.o ` case
"cc" in "cc") echo "" ;; esac `
rm -rf include
mkdir include
if [ xMakefile.in != xMakefile.in ]; \
then \
  for dir in /usr/include ; do \
    if [ -d $dir ]; \
    then \
      /bin/sh ./Makefile.in include $dir; \
    else true; fi; \
  done; \
else true; \
fi
rm -f include/syslimits.h
if [ -f include/limits.h ]; then \
  mv include/limits.h include/syslimits.h; \
else \
  cp ./gsyslimits.h include/syslimits.h; \
fi
chmod a+r include/syslimits.h
touch stmp-fixinc
if [ -d include ]; then true; else mkdir include; fi
if [ -d objc ]; then true; else mkdir objc; fi
thisdir1=`pwd`; \
srcdir1=`cd .; pwd`; \
cd objc; \
make -f ${srcdir1}/objc/Makefile copy-headers \
srcdir=${srcdir1} tooldir=/usr/sparc-redhat-linux AR="ar" AR_FLAGS="rc" \
GCC_FOR_TARGET="${thisdir1}/xgcc -B${thisdir1}/" \
GCC_CFLAGS=" -DIN_GCC   -O -I./include" incinstalldir=${thisdir1}/include
make[1]: Entering directory `/usr/src/redhat/BUILD/gcc-2.7.2.3/objc'
rm -fr /usr/src/redhat/BUILD/gcc-2.7.2.3/include/objc
mkdir /usr/src/redhat/BUILD/gcc-2.7.2.3/include/objc
for file in hash.h list.h sarray.h objc.h objc-api.h NXConstStr.h Object.h
Protocol.h encoding.h typedstream.h; do \
  realfile=/usr/src/redhat/BUILD/gcc-2.7.2.3/objc/${file}; \
  cp ${realfile} /usr/src/redhat/BUILD/gcc-2.7.2.3/include/objc; \
  chmod a+r /usr/src/redhat/BUILD/gcc-2.7.2.3/include/objc/${file}; \
done
make[1]: Leaving directory `/usr/src/redhat/BUILD/gcc-2.7.2.3/objc'
touch objc-headers
objdir=`pwd`; \
cd .; \
for file in .. ./ginclude/stdarg.h ./ginclude/stddef.h
../ginclude/varargs.h ./ginclude/va-alpha.h ./ginclude/va-h8300.h
../ginclude/va-i860.h ./ginclude/va-i960.h ./ginclude/va-mips.h
../ginclude/va-m88k.h ./ginclude/va-pa.h ./ginclude/va-pyr.h
../ginclude/va-sparc.h ./ginclude/va-clipper.h ./ginclude/va-spur.h
../ginclude/iso646.h ./ginclude/va-ppc.h ./ginclude/proto.h ; do \
  if [ X$file != X.. ]; then \
    realfile=`echo $file | sed -e 's|.*/\([^/]*\)$|\1|'`; \
    rm -f $objdir/include/$realfile; \
    cp ginclude/$realfile $objdir/include; \
    chmod a+r $objdir/include/$realfile; \
  fi; \
done
rm -f include/limits.h
cp xlimits.h include/limits.h
chmod a+r include/limits.h
rm -f include/README
cp ./README-fixinc include/README
chmod a+r include/README
touch stmp-int-hdrs
../xgcc -B./  -DIN_GCC   -O -I./include    -DNO_MEM -DNO_LONG_DOUBLE_IO -O0
-I. -c ./enquire.c
if [ -f libgcc2.ready ] ; then \
../xgcc -B./  -DIN_GCC   -O -I./include    -DNO_MEM -DNO_LONG_DOUBLE_IO -O0
-I. -c ./enquire.c
if [ -f libgcc2.ready ] ; then \
        true; \
else \
        touch libgcc2.ready; \
fi
rm -f tmplibgcc2.a
for name in _muldi3 _divdi3 _moddi3 _udivdi3 _umoddi3 _negdi2 _lshrdi3
_ashldi3 _ashrdi3 _ffsdi2 _udiv_w_sdiv _udivmoddi4 _cmpdi2 _ucmpdi2
_floatdidf _floatdisf
 _fixunsdfsi _fixunssfsi _fixunsdfdi _fixdfdi _fixunssfdi _fixsfdi
_fixxfdi _fixunsxfdi _floatdixf _fixunsxfsi _fixtfdi _fixunstfdi
_floatditf __gcc_bcmp _varargs _eprintf _op_new _op_vnew _new_handler
_op_delete _op_vdel _bb _shtab _clear_cache _trampoline __main _exit
_ctors _eh _pure; \
do \
  echo ${name}; \
  ./xgcc -B./ -O2   -DIN_GCC   -O -I./include -fPIC -g1 -I. -I. -I./config
-c -DL${name} \
      ./libgcc2.c -o ${name}.o; \
  if [ $? -eq 0 ] ; then true; else exit 1; fi; \
  ar rc tmplibgcc2.a ${name}.o; \
  rm -f ${name}.o; \
done
_muldi3
_divdi3
_moddi3
_udivdi3
_umoddi3
_negdi2
_lshrdi3
_ashldi3
_ashrdi3
_ffsdi2
_udiv_w_sdiv
_udivmoddi4
_cmpdi2
_ucmpdi2
_floatdidf
_floatdisf
_fixunsdfsi
_fixunssfsi
_fixunsdfdi
_fixdfdi
_fixunssfdi
_fixsfdi
_fixxfdi
_fixunsxfdi
_floatdixf
_fixunsxfsi
_fixtfdi
_fixunstfdi
_floatditf
__gcc_bcmp
_varargs
_eprintf
_op_new
_op_vnew
_new_handler
_op_delete
_op_vdel
_bb
_shtab
_clear_cache
_trampoline
__main
_exit
_ctors
_eh
_pure
for file in .. ; \
do \
  if [ x${file} != x.. ]; then \
name=`echo ${file} | sed -e 's/[.][cS]$//' -e 's/[.]asm$//'`; \
    oname=` echo ${name} | sed -e 's,.*/,,'`; \
    echo ${name}; \
    if [ ${name}.asm = ${file} ]; then \
      cp ${file} ${name}.s || exit 1; file=${name}.s; \
    else true; fi; \
    ./xgcc -B./ -O2   -DIN_GCC   -O -I./include -fPIC -g1 -I. -I.
-I./config -c ${file}; \
    if [ $? -eq 0 ] ; then true; else exit 1; fi; \
    ar rc tmplibgcc2.a ${oname}.o; \
    rm -f ${name}.s ${oname}.o; \
  else true; \
  fi; \
done
mv tmplibgcc2.a libgcc2.a
rm -rf tmplibgcc.a libgcc.a tmpcopy
mkdir tmpcopy
if [ xlibgcc1.a != x ];                 \
then (cd tmpcopy; ar x ../libgcc1.a);   \
else true;                                      \
fi
(cd tmpcopy; chmod +w * > /dev/null 2>&1)
(cd tmpcopy; ar x ../libgcc2.a)
(cd tmpcopy; ar rc ../tmplibgcc.a *.o)
rm -rf tmpcopy
if [ -f /usr/bin/ranlib -o -f /bin/ranlib ] ; then ranlib tmplibgcc.a;
else true; fi
mv tmplibgcc.a libgcc.a
../xgcc -B./  -DIN_GCC   -O -I./include -I. -I. -I./config  \
  -DCRT_BEGIN -finhibit-size-directive -fno-inline-functions \
  -g0 -c ./crtstuff.c
mv crtstuff.o crtbegin.o
../xgcc -B./  -DIN_GCC   -O -I./include -I. -I. -I./config  \
  -DCRT_END -finhibit-size-directive -fno-inline-functions \
  -g0 -c ./crtstuff.c
mv crtstuff.o crtend.o
touch stamp-crt
../xgcc -B./  -DIN_GCC   -O -I./include -I. -I. -I./config  \
  -DCRT_BEGIN -finhibit-size-directive -fno-inline-functions \
  -g0 -c ./crtstuff.c -fPIC
  -DCRT_BEGIN -finhibit-size-directive -fno-inline-functions \
  -g0 -c ./crtstuff.c -fPIC
mv crtstuff.o crtbeginS.o
../xgcc -B./  -DIN_GCC   -O -I./include -I. -I. -I./config  \
  -DCRT_END -finhibit-size-directive -fno-inline-functions \
  -g0 -c ./crtstuff.c -fPIC
mv crtstuff.o crtendS.o
touch stamp-crtS
../xgcc -B./  -DIN_GCC   -O -I./include  enquire.o -o enquire
../enquire -f > tmp-float.h
/bin/sh: ./enquire: No such file or directory
make: [float.h-nat] Error 126 (ignored)
mv tmp-float.h float.h-nat
rm -f gfloat.h
cp float.h-nat gfloat.h
rm -f include/float.h
cp gfloat.h include/float.h
chmod a+r include/float.h
touch stmp-headers
rm -f cxxmain.c
ln -s ./cplus-dem.c cxxmain.c > /dev/null 2>&1 \
 || cp ./cplus-dem.c cxxmain.c
cc -c -DMAIN  -DIN_GCC   -O     -I. -I. -I./config \
  -DVERSION=\"2.7.2.3\" cxxmain.c
rm -f cxxmain.c
echo "int xxy_us_dummy;" >tmp-dum.c
../xgcc -B./ -S tmp-dum.c
echo '/*WARNING: This file is automatically generated!*/' >tmp-under.c
if grep _xxy_us_dummy tmp-dum.s > /dev/null ; then \
  echo "int prepends_underscore = 1;" >>tmp-under.c; \
else \
  echo "int prepends_underscore = 0;" >>tmp-under.c; \
fi
../move-if-change tmp-under.c underscore.c
rm -f tmp-dum.c tmp-dum.s
touch stamp-under
cc -c  -DIN_GCC   -O     -I. -I. -I./config underscore.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./getopt.c
cc -c  -DIN_GCC   -O     -I. -I. -I./config ./getopt1.c
cc  -DIN_GCC   -O   obstack.o ` case "cc" in "cc") echo "" ;; esac `   -o
c++filt \
  cxxmain.o underscore.o getopt.o getopt1.o
+ make stage1
if [ -d stage1 ] ; then true ; else mkdir stage1 ; fi
for dir in . cp ; \
 do \
   if [ -d stage1/$dir ] ; then true ; else mkdir stage1/$dir ; fi ; \
 done
mv *.o insn-flags.h insn-config.h insn-codes.h insn-output.c insn-recog.c
insn-emit.c insn-extract.c insn-peep.c insn-attr.h insn-attrtab.c
insn-opinit.c stamp-flags stamp-config stamp-codes stamp-output
stamp-recog stamp-emit stamp-extract stamp-peep stamp-attr stamp-attrtab
stamp-opinit stamp-proto stamp-crt stamp-crtS genemit genoutput genrecog
genextract genflags gencodes genconfig genpeep genattrtab genattr
genopinit bc-arity.h bc-opcode.h bc-opname.h stamp-bcarity stamp-bcopcode
stamp-bcopname bi-arity bi-opcode bi-opname xgcc cc1 cpp  crtbegin.o
crtbeginS.o crtend.o crtendS.o  gcc-cross cccp cc1obj enquire protoize
unprotoize specs collect2  underscore.c *.greg *.lreg *.combine *.flow
*.cse *.jump *.rtl *.tree *.loop *.dbr *.jump2 *.sched *.cse2 *.sched2
*.stack *.[si] g++ g++-cross
 cc1plus stage1
mv: stamp-proto: No such file or directory
mv: crtbegin.o: No such file or directory
mv: crtbeginS.o: No such file or directory
mv: crtend.o: No such file or directory
mv: crtendS.o: No such file or directory
mv: gcc-cross: No such file or directory
mv: cc1obj: No such file or directory
mv: protoize: No such file or directory
mv: unprotoize: No such file or directory
mv: collect2: No such file or directory
mv: *.greg: No such file or directory
mv: *.lreg: No such file or directory
mv: *.combine: No such file or directory
mv: *.flow: No such file or directory
mv: *.cse: No such file or directory
mv: *.jump: No such file or directory
mv: *.rtl: No such file or directory
mv: *.tree: No such file or directory
mv: *.loop: No such file or directory
mv: *.dbr: No such file or directory
mv: *.jump2: No such file or directory
mv: *.sched: No such file or directory
mv: *.cse2: No such file or directory
mv: *.sched2: No such file or directory
mv: *.stack: No such file or directory
mv: *.[si]: No such file or directory
mv: g++-cross: No such file or directory
mv: cc1plus: No such file or directory
make: [stage1-start] Error 1 (ignored)
if [ -f as ] ; then ln -s ../as stage1 || cp as stage1 ; else true ; fi
if [ -f ld ] ; then ln -s ../ld stage1 || cp ld stage1 ; else true ; fi
if [ -f collect-ld ] ; then ln -s ../collect-ld stage1 || cp collect-ld
stage1 ;
 else true ; fi
rm -f stage1/libgcc.a
cp libgcc.a stage1
if [ -f /usr/bin/ranlib -o -f /bin/ranlib ] ; then ranlib stage1/libgcc.a;
else true; fi
mv cp/*.o stage1/cp
mv: cp/*.o: No such file or directory
make: [c++.stage1] Error 1 (ignored)
+ make CC=stage1/xgcc -Bstage1/ CFLAGS=-O LDFLAGS=-s
stage1/xgcc -Bstage1/  -DIN_GCC   -O     -I. -I. -I./config \

-DGCC_INCLUDE_DIR=\"/usr/lib/gcc-lib/sparc-redhat-linux/2.7.2.3/include\"
\
  -DGPLUSPLUS_INCLUDE_DIR=\"/usr/include/g++\" \
  -DLOCAL_INCLUDE_DIR=\"/usr/local/include\" \
-DCROSS_INCLUDE_DIR=\"/usr/lib/gcc-lib/sparc-redhat-linux/2.7.2.3/sys-include\"
\
-DTOOL_INCLUDE_DIR=\"/usr/sparc-redhat-linux/include\" \
-c `echo ./cccp.c | sed 's,^\./,,'`
stage1/xgcc -Bstage1/  -DIN_GCC   -O     -I. -I. -I./config -c ./cexp.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config version.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config obstack.c
stage1/xgcc -Bstage1/  -DIN_GCC   -O  -s -o cccp cccp.o cexp.o \
version.o obstack.o ` case "stage1/xgcc -Bstage1/" in "cc") echo "" ;;
esac `

rm -f cpp
ln cccp cpp > /dev/null 2>&1 \
 || cp cccp cpp
stage1/xgcc -Bstage1/  -DIN_GCC   -O     -I. -I. -I./config -c ./c-parse.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-lang.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-lex.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-pragma.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-decl.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-typeck.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-convert.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config
c-aux-info.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-common.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config c-iterate.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config ./genattr.c
stage1/xgcc -Bstage1/ -c  -DIN_GCC   -O     -I. -I. -I./config rtl.c
stage1/xgcc -Bstage1/  -DIN_GCC   -O  -s -o genattr \
 genattr.o rtl.o ` case "obstack.o" in ?*) echo obstack.o ;; esac ` ` case
"stage1/xgcc -Bstage1/"@"" in "cc"@?*) echo  ;; esac ` ` case "" in ?*)
echo  ;; esac
 `
../genattr ./config/sparc/sparc.md > tmp-attr.h
/bin/sh: ./genattr: No such file or directory
make: *** [stamp-attr] Error 126
Bad exit status from /var/tmp/rpm-tmp.18003 (%build)


the file ./genattr exist, but when i execute this :

../genattr: No such file or directory

Can you help me ?


             \\|//
             (@ @)
+--------ooO--(_)--Ooo-----------------+------------------------------------+
|  Antoni Pamies Olive                 |  Et Portem el mon a casa           |
|  Ready Soft                          |  http://www.readysoft.es           |
|  Av. Maria Fortuny 87 3 planta       |  toni@readysoft.net                |
|  Reus (Catalunya)                    |                                    |
+--------------------------------------+------------------------------------+
