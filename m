From: Jakub Jelinek <jakub@redhat.com>
Date: Tue, 16 Nov 1999 12:27:02 +0000
Subject: Sparc patch for modutils-2.3.6
MIME-Version: 1
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Message-Id: <marc-linux-ultrasparc-94275572704215@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii

Hi!

Attached is a merger of my modutils 2.1.121 SPARC patch with
modutils 2.3.6.
By default it will compile insmod, depmod and modinfo binaries which will be
able to handle both 32bit and 64bit modules on SPARC.
If you don't want that and e.g. want a somewhat smaller insmod &tc., just
pass configure
--disable-combined-sparc
The advantage is of course that the /sbin/insmod64 hack is gone, not to say
that modinfo did not work previously (is fixed in RedHat 6.1 though).

Enjoy :)

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jakub@redhat.com | http://sunsite.mff.cuni.cz/~jj
Linux version 2.3.18 on a sparc64 machine (1343.49 BogoMips)
___________________________________________________________________

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="modutils-2.3.6-sparc.patch"

--- modutils-2.3.6/ChangeLog.jj	Mon Oct 18 08:33:17 1999
+++ modutils-2.3.6/ChangeLog	Tue Nov 16 13:10:53 1999
@@ -1,3 +1,10 @@
+1999-11-16  Jakub Jelinek  <jakub@redhat.com>
+
+	* --enable-combined-sparc support (default on sparc and sparc64),
+	which compiles executables handling both 32bit and 64bit SPARC
+	modules
+	* fixes a few issues with SPARC 64bit support by a 32bit binary
+	
 1999-10-18  Keith Owens  <kaos@ocs.com.au>
 
 	modutils 2.3.6
--- modutils-2.3.6/obj/Makefile.in.jj	Sun Oct 17 10:47:36 1999
+++ modutils-2.3.6/obj/Makefile.in	Tue Nov 16 11:46:35 1999
@@ -12,8 +12,8 @@ CC = @CC@
 CFLAGS = @CFLAGS@ -Wall
 RANLIB = @RANLIB@
 
-DEFS = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@
-DEFS += -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH) $(EXTRA_DEFS)
+DEFSNOARCH = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@ $(EXTRA_DEFS)
+DEFS = $(DEFSNOARCH) -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH)
 
 %.o: %.c
 	$(CC) $(CFLAGS) $(DEFS) -c -o $@ $<
@@ -22,7 +22,18 @@ DEFS += -DELF_MACHINE_H='"elf_$(ARCH).h"
 
 all: .depend libobj.a
 
-LIBOBJ_OBJS = obj_common.o obj_load.o obj_reloc.o obj_$(ARCH).o
+LIBOBJ_OBJS := obj_common.o obj_load.o obj_reloc.o obj_$(ARCH).o
+LIBOBJ_SRCS := $(LIBOBJ_OBJS:.o=.c)
+
+ifeq (@COMBINE_sparc@,yes)
+
+LIBOBJ_OBJS += obj_common_64.o obj_load_64.o obj_reloc_64.o obj_sparc64_64.o
+
+%_64.o: %.c
+	$(CC) $(CFLAGS) $(DEFSNOARCH) -DELF_MACHINE_H='"elf_sparc64.h"' \
+	-DARCH_sparc64 -c -o $@ $<
+
+endif
 
 libobj.a: $(LIBOBJ_OBJS)
 	ar rv $@ $?
@@ -39,7 +50,7 @@ distclean: realclean
 
 install-bin: all
 
-dep depend .depend: $(LIBOBJ_OBJS:.o=.c)
+dep depend .depend: $(LIBOBJ_SRCS)
 	$(CC) -M $(CFLAGS) $(DEFS) $^ > .depend
 
 ifeq (.depend,$(wildcard .depend))
--- modutils-2.3.6/obj/obj_reloc.c.jj	Mon Oct 11 03:54:34 1999
+++ modutils-2.3.6/obj/obj_reloc.c	Tue Nov 16 10:33:43 1999
@@ -34,7 +34,7 @@ int
 obj_string_patch(struct obj_file *f, int secidx, ElfW(Addr) offset,
 		 const char *string)
 {
-  struct obj_string_patch *p;
+  struct obj_string_patch_struct *p;
   struct obj_section *strsec;
   size_t len = strlen(string)+1;
   char *loc;
@@ -66,7 +66,7 @@ int
 obj_symbol_patch(struct obj_file *f, int secidx, ElfW(Addr) offset,
 		 struct obj_symbol *sym)
 {
-  struct obj_symbol_patch *p;
+  struct obj_symbol_patch_struct *p;
 
   p = xmalloc(sizeof(*p));
   p->next = f->symbol_patches;
@@ -366,7 +366,7 @@ obj_relocate (struct obj_file *f, ElfW(A
 
   if (f->string_patches)
     {
-      struct obj_string_patch *p;
+      struct obj_string_patch_struct *p;
       struct obj_section *strsec;
       ElfW(Addr) strsec_base;
       strsec = obj_find_section(f, ".kstrtab");
@@ -382,7 +382,7 @@ obj_relocate (struct obj_file *f, ElfW(A
 
   if (f->symbol_patches)
     {
-      struct obj_symbol_patch *p;
+      struct obj_symbol_patch_struct *p;
 
       for (p = f->symbol_patches; p; p = p->next)
 	{
--- modutils-2.3.6/insmod/insmod.c.jj	Tue Oct 12 12:53:21 1999
+++ modutils-2.3.6/insmod/insmod.c	Tue Nov 16 11:57:53 1999
@@ -51,6 +51,7 @@
 #include <getopt.h>
 #include <sys/stat.h>
 #include <sys/file.h>
+#include <sys/utsname.h>
 
 #include "module.h"
 #include "obj.h"
@@ -60,7 +61,13 @@
 #include "modstat.h"
 #include "config.h"
 
-#if defined(COMBINE_rmmod) || defined(COMBINE_modprobe) || defined(COMBINE_ksyms) || defined(COMBINE_lsmod)
+#if defined(COMBINE_sparc)
+#if defined(ARCH_sparc)
+#define main insmod32_main
+#elif defined(ARCH_sparc64)
+#define main insmod64_main
+#endif
+#elif defined(COMBINE_rmmod) || defined(COMBINE_modprobe) || defined(COMBINE_ksyms) || defined(COMBINE_lsmod)
 #define main insmod_main
 #endif
 
@@ -68,12 +75,12 @@
 
 /*======================================================================*/
 
-int flag_force_load = 0;
-int flag_silent_poll = 0;
-int flag_verbose = 0;
-int flag_export = 1;
-int flag_load_map = 0;
-int flag_ksymoops = 1;
+static int flag_force_load = 0;
+static int flag_silent_poll = 0;
+static int flag_verbose = 0;
+static int flag_export = 1;
+static int flag_load_map = 0;
+static int flag_ksymoops = 1;
 
 static int n_ext_modules_used;
 static int m_has_modinfo;
@@ -267,9 +274,9 @@ static void print_load_map(struct obj_fi
 
 		lprintf("%-16s%08lx  %0*lx  2**%d",
 			sec->name,
-			(tgt_long)sec->header.sh_size,
+			(long)sec->header.sh_size,
 			(int) (2 * sizeof(void *)),
-			(tgt_long)sec->header.sh_addr,
+			(long)sec->header.sh_addr,
 			a);
 	}
 
@@ -629,9 +636,9 @@ static void add_ksymoops_symbols(struct 
 				8+			/* length in dec */
 				1;			/* nul */
 			name = xmalloc(l);
-			snprintf(name, l, "%s%s_S%s_L%d",
+			snprintf(name, l, "%s%s_S%s_L%ld",
 				 symprefix, m_name, sec->name,
-				 sec->header.sh_size);
+				 (long)sec->header.sh_size);
 			sym = obj_add_symbol(f, name, -1, ELFW(ST_INFO) (STB_GLOBAL, STT_NOTYPE),
 					     sec->idx, sec->header.sh_addr, 0);
 			if (use_ksymtab)
@@ -1390,6 +1397,28 @@ int main(int argc, char **argv)
 	return exit_status;
 }
 
+#if defined(COMBINE_sparc) && defined(ARCH_sparc)
+extern int insmod64_main(int argc, char **argv);
+
+#undef main
+
+#if defined(COMBINE_rmmod) || defined(COMBINE_modprobe) || defined(COMBINE_ksyms) || defined(COMBINE_lsmod)
+#define main insmod_main
+#endif
+
+int main(int argc, char **argv)
+{
+	struct utsname u;
+	  
+	if (!uname (&u) && !strcmp (u.machine, "sparc64"))
+		return insmod64_main(argc, argv);
+	else
+		return insmod32_main(argc, argv);
+}
+
+#endif
+
+#if !defined(COMBINE_sparc) || !defined(ARCH_sparc64)
 #if defined(COMBINE_rmmod) || defined(COMBINE_modprobe) || defined(COMBINE_ksyms) || defined(COMBINE_lsmod)
 
 #undef main
@@ -1413,7 +1442,7 @@ int main(int argc, char **argv)
 
 	p = p ? p + 1 : argv[0];
 
-	if (strcmp(p, "insmod") == 0)
+	if (strcmp(p, "insmod") == 0 || strcmp(p, "insmod.static") == 0)
 		return insmod_main(argc, argv);
 #ifdef COMBINE_modprobe
 	else if (strcmp(p, "modprobe") == 0)
@@ -1452,3 +1481,4 @@ int main(int argc, char **argv)
 }
 
 #endif /* Combined executables */
+#endif
--- modutils-2.3.6/insmod/Makefile.in.jj	Sun Oct 17 10:47:36 1999
+++ modutils-2.3.6/insmod/Makefile.in	Tue Nov 16 11:54:33 1999
@@ -13,8 +13,8 @@ CFLAGS = @CFLAGS@ -Wall
 LDFLAGS = @LDFLAGS@
 INSTALL = @INSTALL@
 
-DEFS = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@
-DEFS += -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH) $(EXTRA_DEFS)
+DEFSNOARCH = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@ $(EXTRA_DEFS)
+DEFS = $(DEFSNOARCH) -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH)
 
 TARGETS = insmod modprobe rmmod lsmod ksyms modinfo
 
@@ -23,12 +23,29 @@ COMB = @COMBINE_rmmod@ @COMBINE_modprobe
 COMBDEFS = $(addprefix -DCOMBINE_, $(COMB))
 COMBOBJS = $(addsuffix .o, $(COMB))
 
+INSMODOBJS = insmod.o
+MODINFOOBJS = modinfo.o
+
+ifeq (@COMBINE_sparc@,yes)
+INSMODOBJS += insmod_64.o
+MODINFOOBJS += modinfo_64.o
+DEFSNOARCH += -DCOMBINE_sparc
+endif
+
+INSMODOBJS += $(COMBOBJS)
+
 #=====================================================================
 
 # Rule for building "to-be-combined" modutils object files
 %.o: %.c
 	$(CC) $(CFLAGS) $(DEFS) $(COMBDEFS) -c -o $@ $<
 
+ifeq (@COMBINE_sparc@,yes)
+%_64.o: %.c
+	$(CC) $(CFLAGS) $(DEFSNOARCH) -DELF_MACHINE_H='"elf_sparc64.h"' \
+	-DARCH_sparc64 $(COMBDEFS) -c -o $@ $<
+endif
+
 # Rule for building "normal" modutils executables (non-combined)
 %: %.c ../util/libutil.a
 	$(CC) $(CFLAGS) $(DEFS) -o $@ $< ../util/libutil.a $(LDFLAGS)
@@ -37,17 +54,17 @@ COMBOBJS = $(addsuffix .o, $(COMB))
 
 all: .depend $(TARGETS)
 
-insmod: insmod.o $(COMBOBJS) ../obj/libobj.a ../util/libutil.a
+insmod: $(INSMODOBJS) ../obj/libobj.a ../util/libutil.a
 	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
 
-insmod.static: insmod.o $(COMBOBJS) ../obj/libobj.a ../util/libutil.a
+insmod.static: $(INSMODOBJS) ../obj/libobj.a ../util/libutil.a
 	$(CC) -static $(CFLAGS) -o $@ $^ $(LDFLAGS)
 
 $(COMB): insmod
 	ln -sf $^ $@
 
-modinfo: modinfo.c ../obj/libobj.a ../util/libutil.a
-	$(CC) $(CFLAGS) $(DEFS) -o $@ $^ $(LDFLAGS)
+modinfo: $(MODINFOOBJS) ../obj/libobj.a ../util/libutil.a
+	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
 
 install install-bin: all
 	@set -x;\
--- modutils-2.3.6/insmod/modinfo.c.jj	Wed Aug 25 08:26:49 1999
+++ modutils-2.3.6/insmod/modinfo.c	Tue Nov 16 12:10:59 1999
@@ -37,6 +37,7 @@
 #include <unistd.h>
 #include <sys/param.h>
 #include <sys/stat.h>
+#include <sys/utsname.h>
 
 #include "module.h"
 #include "obj.h"
@@ -44,6 +45,14 @@
 #include "version.h"
 #include "config.h"
 
+#if defined(COMBINE_sparc)
+#if defined(ARCH_sparc)
+#define main modinfo32_main
+#elif defined(ARCH_sparc64)
+#define main modinfo64_main
+#endif
+#endif
+
 static char *get_modinfo_value(struct obj_file *f, const char *key)
 {
 	struct obj_section *sec;
@@ -363,3 +372,21 @@ int main(int argc, char *argv[])
 
 	return 0;
 }
+
+#if defined(COMBINE_sparc) && defined(ARCH_sparc)
+
+#undef main
+
+extern int modinfo64_main(int argc, char **argv);
+
+int
+main(int argc, char **argv)
+{
+	struct utsname u;
+  
+	if (!uname (&u) && !strcmp (u.machine, "sparc64"))
+		return modinfo64_main(argc, argv);
+	else
+		return modinfo32_main(argc, argv);
+}
+#endif
--- modutils-2.3.6/include/obj.h.jj	Wed Aug 25 08:26:49 1999
+++ modutils-2.3.6/include/obj.h	Tue Nov 16 12:07:02 1999
@@ -42,7 +42,17 @@
 # endif
 #endif
 
-/* For some reason this is missing from libc5.  */
+#if defined(__sparc__) && !defined(__sparc_v9__)
+# if ELFCLASSM == ELFCLASS32
+#  define ObjW(x)  obj32_ ## x
+# else
+#  define ObjW(x)  obj64_ ## x
+# endif
+#else
+#define ObjW(x)    obj_ ## x
+#endif
+
+/* For some reason this is missing from lib5.  */
 #ifndef ELF32_ST_INFO
 # define ELF32_ST_INFO(bind, type)       (((bind) << 4) + ((type) & 0xf))
 #endif
@@ -51,8 +61,8 @@
 # define ELF64_ST_INFO(bind, type)       (((bind) << 4) + ((type) & 0xf))
 #endif
 
-struct obj_string_patch;
-struct obj_symbol_patch;
+struct obj_string_patch_struct;
+struct obj_symbol_patch_struct;
 
 struct obj_section
 {
@@ -88,8 +98,8 @@ struct obj_file
   struct obj_section **sections;
   struct obj_section *load_order;
   struct obj_section **load_order_search_start;
-  struct obj_string_patch *string_patches;
-  struct obj_symbol_patch *symbol_patches;
+  struct obj_string_patch_struct *string_patches;
+  struct obj_symbol_patch_struct *symbol_patches;
   int (*symbol_cmp)(const char *, const char *);
   unsigned long (*symbol_hash)(const char *);
   unsigned long local_symtab_size;
@@ -105,17 +115,17 @@ enum obj_reloc
   obj_reloc_unhandled
 };
 
-struct obj_string_patch
+struct obj_string_patch_struct
 {
-  struct obj_string_patch *next;
+  struct obj_string_patch_struct *next;
   int reloc_secidx;
   ElfW(Addr) reloc_offset;
   ElfW(Addr) string_offset;
 };
 
-struct obj_symbol_patch
+struct obj_symbol_patch_struct
 {
-  struct obj_symbol_patch *next;
+  struct obj_symbol_patch_struct *next;
   int reloc_secidx;
   ElfW(Addr) reloc_offset;
   struct obj_symbol *sym;
@@ -123,6 +133,35 @@ struct obj_symbol_patch
 
 
 /* Generic object manipulation routines.  */
+
+#define obj_elf_hash			ObjW(elf_hash)
+#define obj_elf_hash_n			ObjW(elf_hash_n)
+#define obj_add_symbol			ObjW(add_symbol)
+#define obj_find_symbol			ObjW(find_symbol)
+#define obj_symbol_final_value		ObjW(symbol_final_value)
+#define obj_set_symbol_compare		ObjW(set_symbol_compare)
+#define obj_find_section		ObjW(find_section)
+#define obj_insert_section_load_order	ObjW(insert_section_load_order)
+#define obj_create_alloced_section	ObjW(create_alloced_section)
+#define obj_create_alloced_section_first \
+					ObjW(create_alloced_section_first)
+#define obj_extend_section		ObjW(extend_section)
+#define obj_string_patch		ObjW(string_patch)
+#define obj_symbol_patch		ObjW(symbol_patch)
+#define obj_check_undefineds 		ObjW(check_undefineds)
+#define obj_allocate_commons		ObjW(allocate_commons)
+#define obj_load_size			ObjW(load_size)
+#define obj_relocate			ObjW(relocate)
+#define obj_load			ObjW(load)
+#define obj_free			ObjW(free)
+#define obj_create_image		ObjW(create_image)
+#define arch_new_file			ObjW(arch_new_file)
+#define arch_new_section		ObjW(arch_new_section)
+#define arch_new_symbol			ObjW(arch_new_symbol)
+#define arch_apply_relocation		ObjW(arch_apply_relocation)
+#define arch_create_got			ObjW(arch_create_got)
+#define arch_init_module		ObjW(arch_init_module)
+#define arch_load_proc_section		ObjW(arch_load_proc_section)
 
 unsigned long obj_elf_hash(const char *);
 
--- modutils-2.3.6/include/modstat.h.jj	Wed Aug 25 08:26:49 1999
+++ modutils-2.3.6/include/modstat.h	Tue Nov 16 13:01:37 1999
@@ -28,7 +28,7 @@
 
 struct module_stat {
 	char *name;
-	ElfW(Addr) addr;
+	unsigned long addr;
 	unsigned long modstruct; /* COMPAT_2_0! *//* depends on architecture? */
 	unsigned long size;
 	unsigned long flags;
--- modutils-2.3.6/depmod/depmod.c.jj	Tue Oct 12 12:53:21 1999
+++ modutils-2.3.6/depmod/depmod.c	Tue Nov 16 12:00:11 1999
@@ -45,6 +45,7 @@
 #include <syslog.h>
 #include <elf.h>
 #include ELF_MACHINE_H
+#include <sys/utsname.h>
 
 #include "module.h"
 #include "version.h"
@@ -53,6 +54,14 @@
 #include "config.h"
 #include "modstat.h"
 
+#if defined(COMBINE_sparc)
+#if defined(ARCH_sparc)
+#define main depmod32_main
+#elif defined(ARCH_sparc64)
+#define main depmod64_main
+#endif
+#endif
+
 #define ALLOC_MODULE	5000	/* Number of modules we can handle... */
 #define ALLOC_SYM	10000	/* Number of symbols allocated per chunk */
 
@@ -699,3 +708,21 @@ int main(int argc, char *argv[])
 
 	return ret;
 }
+
+#if defined(COMBINE_sparc) && defined(ARCH_sparc)
+
+#undef main
+
+extern int depmod64_main(int argc, char **argv);
+
+int
+main(int argc, char **argv)
+{
+	struct utsname u;
+  
+	if (!uname (&u) && !strcmp (u.machine, "sparc64"))
+		return depmod64_main(argc, argv);
+	else
+		return depmod32_main(argc, argv);
+}
+#endif
--- modutils-2.3.6/depmod/Makefile.in.jj	Sun Oct 17 10:47:36 1999
+++ modutils-2.3.6/depmod/Makefile.in	Tue Nov 16 12:08:16 1999
@@ -13,16 +13,24 @@ CFLAGS = @CFLAGS@ -Wall
 LDFLAGS = @LDFLAGS@
 INSTALL = @INSTALL@
 
-DEFS = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@
-DEFS += -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH) $(EXTRA_DEFS)
+DEFSNOARCH = -I$(srcdir)/../include -D_GNU_SOURCE @DEFS@ $(EXTRA_DEFS)
+DEFS = $(DEFSNOARCH) -DELF_MACHINE_H='"elf_$(ARCH).h"' -DARCH_$(ARCH)
+OBJS = depmod.o
+
+ifeq (@COMBINE_sparc@,yes)
+DEFSNOARCH += -DCOMBINE_sparc
+OBJS += depmod_64.o
+
+%_64.o: %.c
+	$(CC) $(CFLAGS) $(DEFSNOARCH) -DELF_MACHINE_H='"elf_sparc64.h"' \
+	-DARCH_sparc64 -c -o $@ $<
+endif
 
 %.o: %.c
 	$(CC) $(CFLAGS) $(DEFS) -c -o $@ $<
 
 ######################################################################
 
-OBJS = depmod.o
-
 all: .depend depmod
 
 depmod: $(OBJS) ../util/libutil.a ../obj/libobj.a
@@ -41,7 +49,7 @@ distclean: realclean
 install install-bin: all
 	$(INSTALL) depmod $(sbindir)
 
-dep depend .depend: $(OBJS:.o=.c)
+dep depend .depend: depmod.c
 	$(CC) -M $(CFLAGS) $(DEFS) $^ > .depend
 
 ifeq (.depend,$(wildcard .depend))
--- modutils-2.3.6/configure.in.jj	Wed Aug 25 08:26:49 1999
+++ modutils-2.3.6/configure.in	Tue Nov 16 13:02:04 1999
@@ -3,6 +3,31 @@ dnl $Id: configure.in 1.1 Wed, 25 Aug 19
 AC_INIT(insmod/insmod.c)
 AC_PREFIX_DEFAULT(/usr)
 
+AC_CANONICAL_SYSTEM
+
+case "$target_cpu" in
+  alpha*)  ARCH=alpha ;;
+  i?86)    ARCH=i386  ;;
+  arm*)    ARCH=arm   ;;
+  powerpc) ARCH=ppc   ;;
+  *)       ARCH=$target_cpu ;;
+esac
+
+COMBINE_sparc=yes
+AC_ARG_ENABLE(combined-sparc,
+[  --enable-combined-sparc   Make all the utilities work on both sparc32 and sparc64 as one executable (default on sparc)],
+[if test "$enableval" = "yes"; then
+  COMBINE_sparc=yes
+  else
+  COMBINE_sparc=no
+fi])
+case "$ARCH" in
+  sparc64) if test "$COMBINE_sparc" = "yes"; then ARCH="sparc"; fi ;;
+  sparc*) ;;
+  *) COMBINE_sparc=no ;;
+esac
+AC_SUBST(COMBINE_sparc)
+
 AC_ARG_ENABLE(combined-rmmod,
 [  --enable-combined-rmmod   Create insmod and rmmod as one executable (default)],
 [if test "$enableval" = "yes"; then
@@ -27,14 +52,6 @@ AC_ARG_ENABLE(compat-2-0,
   AC_DEFINE(COMPAT_2_0)
 fi],[AC_DEFINE(COMPAT_2_0)])
 
-AC_CANONICAL_SYSTEM
-case "$target_cpu" in
-  alpha*)  ARCH=alpha ;;
-  i?86)    ARCH=i386  ;;
-  arm*)    ARCH=arm   ;;
-  powerpc) ARCH=ppc   ;;
-  *)       ARCH=$target_cpu ;;
-esac
 AC_SUBST(ARCH)
 
 AC_PROG_CC
--- modutils-2.3.6/configure.jj	Wed Aug 25 08:26:49 1999
+++ modutils-2.3.6/configure	Tue Nov 16 13:02:35 1999
@@ -1,7 +1,7 @@
 #! /bin/sh
 
 # Guess values for system-dependent variables and create Makefiles.
-# Generated automatically using autoconf version 2.12 
+# Generated automatically using autoconf version 2.13 
 # Copyright (C) 1992, 93, 94, 95, 96 Free Software Foundation, Inc.
 #
 # This configure script is free software; the Free Software Foundation
@@ -13,6 +13,8 @@ ac_default_prefix=/usr/local
 # Any additions from configure.in:
 ac_default_prefix=/usr
 ac_help="$ac_help
+  --enable-combined-sparc   Make all the utilities work on both sparc32 and sparc64 as one executable (default on sparc)"
+ac_help="$ac_help
   --enable-combined-rmmod   Create insmod and rmmod as one executable (default)"
 ac_help="$ac_help
   --enable-combined-modprobe   Create insmod and modprobe as one executable (default)"
@@ -56,6 +58,7 @@ mandir='${prefix}/man'
 # Initialize some other variables.
 subdirs=
 MFLAGS= MAKEFLAGS=
+SHELL=${CONFIG_SHELL-/bin/sh}
 # Maximum number of lines to put in a shell here document.
 ac_max_here_lines=12
 
@@ -339,7 +342,7 @@ EOF
     verbose=yes ;;
 
   -version | --version | --versio | --versi | --vers)
-    echo "configure generated by autoconf version 2.12"
+    echo "configure generated by autoconf version 2.13"
     exit 0 ;;
 
   -with-* | --with-*)
@@ -509,9 +512,11 @@ ac_ext=c
 # CFLAGS is not in ac_cpp because -g, -O, etc. are not valid cpp options.
 ac_cpp='$CPP $CPPFLAGS'
 ac_compile='${CC-cc} -c $CFLAGS $CPPFLAGS conftest.$ac_ext 1>&5'
-ac_link='${CC-cc} -o conftest $CFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&5'
+ac_link='${CC-cc} -o conftest${ac_exeext} $CFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&5'
 cross_compiling=$ac_cv_prog_cc_cross
 
+ac_exeext=
+ac_objext=o
 if (echo "testing\c"; echo 1,2,3) | grep c >/dev/null; then
   # Stardent Vistra SVR4 grep lacks -e, says ghazi@caip.rutgers.edu.
   if (echo -n testing; echo 1,2,3) | sed s/-n/xn/ | grep xn >/dev/null; then
@@ -527,51 +532,6 @@ fi
 
 
 
-# Check whether --enable-combined-rmmod or --disable-combined-rmmod was given.
-if test "${enable_combined_rmmod+set}" = set; then
-  enableval="$enable_combined_rmmod"
-  if test "$enableval" = "yes"; then
-  COMBINE_rmmod=rmmod
-  else
-  COMBINE_rmmod=""
-fi
-else
-  COMBINE_rmmod=rmmod
-fi
-
-
-
-# Check whether --enable-combined-modprobe or --disable-combined-modprobe was given.
-if test "${enable_combined_modprobe+set}" = set; then
-  enableval="$enable_combined_modprobe"
-  if test "$enableval" = "yes"; then
-  COMBINE_modprobe=modprobe
-  else
-  COMBINE_modprobe=""
-fi
-else
-  COMBINE_modprobe=modprobe
-fi
-
-
-
-# Check whether --enable-compat-2-0 or --disable-compat-2-0 was given.
-if test "${enable_compat_2_0+set}" = set; then
-  enableval="$enable_compat_2_0"
-  if test "$enableval" = "yes"; then
-  cat >> confdefs.h <<\EOF
-#define COMPAT_2_0 1
-EOF
-
-fi
-else
-  cat >> confdefs.h <<\EOF
-#define COMPAT_2_0 1
-EOF
-
-fi
-
-
 ac_aux_dir=
 for ac_dir in $srcdir $srcdir/.. $srcdir/../..; do
   if test -f $ac_dir/install-sh; then
@@ -614,33 +574,33 @@ esac
 
 
 # Make sure we can run config.sub.
-if $ac_config_sub sun4 >/dev/null 2>&1; then :
+if ${CONFIG_SHELL-/bin/sh} $ac_config_sub sun4 >/dev/null 2>&1; then :
 else { echo "configure: error: can not run $ac_config_sub" 1>&2; exit 1; }
 fi
 
 echo $ac_n "checking host system type""... $ac_c" 1>&6
-echo "configure:623: checking host system type" >&5
+echo "configure:583: checking host system type" >&5
 
 host_alias=$host
 case "$host_alias" in
 NONE)
   case $nonopt in
   NONE)
-    if host_alias=`$ac_config_guess`; then :
+    if host_alias=`${CONFIG_SHELL-/bin/sh} $ac_config_guess`; then :
     else { echo "configure: error: can not guess host type; you must specify one" 1>&2; exit 1; }
     fi ;;
   *) host_alias=$nonopt ;;
   esac ;;
 esac
 
-host=`$ac_config_sub $host_alias`
+host=`${CONFIG_SHELL-/bin/sh} $ac_config_sub $host_alias`
 host_cpu=`echo $host | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\1/'`
 host_vendor=`echo $host | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\2/'`
 host_os=`echo $host | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\3/'`
 echo "$ac_t""$host" 1>&6
 
 echo $ac_n "checking target system type""... $ac_c" 1>&6
-echo "configure:644: checking target system type" >&5
+echo "configure:604: checking target system type" >&5
 
 target_alias=$target
 case "$target_alias" in
@@ -651,14 +611,14 @@ NONE)
   esac ;;
 esac
 
-target=`$ac_config_sub $target_alias`
+target=`${CONFIG_SHELL-/bin/sh} $ac_config_sub $target_alias`
 target_cpu=`echo $target | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\1/'`
 target_vendor=`echo $target | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\2/'`
 target_os=`echo $target | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\3/'`
 echo "$ac_t""$target" 1>&6
 
 echo $ac_n "checking build system type""... $ac_c" 1>&6
-echo "configure:662: checking build system type" >&5
+echo "configure:622: checking build system type" >&5
 
 build_alias=$build
 case "$build_alias" in
@@ -669,7 +629,7 @@ NONE)
   esac ;;
 esac
 
-build=`$ac_config_sub $build_alias`
+build=`${CONFIG_SHELL-/bin/sh} $ac_config_sub $build_alias`
 build_cpu=`echo $build | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\1/'`
 build_vendor=`echo $build | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\2/'`
 build_os=`echo $build | sed 's/^\([^-]*\)-\([^-]*\)-\(.*\)$/\3/'`
@@ -680,6 +640,7 @@ test "$host_alias" != "$target_alias" &&
     NONENONEs,x,x, &&
   program_prefix=${target_alias}-
 
+
 case "$target_cpu" in
   alpha*)  ARCH=alpha ;;
   i?86)    ARCH=i386  ;;
@@ -688,19 +649,84 @@ case "$target_cpu" in
   *)       ARCH=$target_cpu ;;
 esac
 
+COMBINE_sparc=yes
+# Check whether --enable-combined-sparc or --disable-combined-sparc was given.
+if test "${enable_combined_sparc+set}" = set; then
+  enableval="$enable_combined_sparc"
+  if test "$enableval" = "yes"; then
+  COMBINE_sparc=yes
+  else
+  COMBINE_sparc=no
+fi
+fi
+
+case "$ARCH" in
+  sparc64) if test "$COMBINE_sparc" = "yes"; then ARCH="sparc"; fi ;;
+  sparc*) ;;
+  *) COMBINE_sparc=no ;;
+esac
+
+
+# Check whether --enable-combined-rmmod or --disable-combined-rmmod was given.
+if test "${enable_combined_rmmod+set}" = set; then
+  enableval="$enable_combined_rmmod"
+  if test "$enableval" = "yes"; then
+  COMBINE_rmmod=rmmod
+  else
+  COMBINE_rmmod=""
+fi
+else
+  COMBINE_rmmod=rmmod
+fi
+
+
+
+# Check whether --enable-combined-modprobe or --disable-combined-modprobe was given.
+if test "${enable_combined_modprobe+set}" = set; then
+  enableval="$enable_combined_modprobe"
+  if test "$enableval" = "yes"; then
+  COMBINE_modprobe=modprobe
+  else
+  COMBINE_modprobe=""
+fi
+else
+  COMBINE_modprobe=modprobe
+fi
+
+
+
+# Check whether --enable-compat-2-0 or --disable-compat-2-0 was given.
+if test "${enable_compat_2_0+set}" = set; then
+  enableval="$enable_compat_2_0"
+  if test "$enableval" = "yes"; then
+  cat >> confdefs.h <<\EOF
+#define COMPAT_2_0 1
+EOF
+
+fi
+else
+  cat >> confdefs.h <<\EOF
+#define COMPAT_2_0 1
+EOF
+
+fi
+
+
+
 
 # Extract the first word of "gcc", so it can be a program name with args.
 set dummy gcc; ac_word=$2
 echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
-echo "configure:696: checking for $ac_word" >&5
+echo "configure:721: checking for $ac_word" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_CC'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
   if test -n "$CC"; then
   ac_cv_prog_CC="$CC" # Let the user override the test.
 else
-  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}:"
-  for ac_dir in $PATH; do
+  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
+  ac_dummy="$PATH"
+  for ac_dir in $ac_dummy; do
     test -z "$ac_dir" && ac_dir=.
     if test -f $ac_dir/$ac_word; then
       ac_cv_prog_CC="gcc"
@@ -721,16 +747,17 @@ if test -z "$CC"; then
   # Extract the first word of "cc", so it can be a program name with args.
 set dummy cc; ac_word=$2
 echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
-echo "configure:725: checking for $ac_word" >&5
+echo "configure:751: checking for $ac_word" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_CC'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
   if test -n "$CC"; then
   ac_cv_prog_CC="$CC" # Let the user override the test.
 else
-  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}:"
+  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
   ac_prog_rejected=no
-  for ac_dir in $PATH; do
+  ac_dummy="$PATH"
+  for ac_dir in $ac_dummy; do
     test -z "$ac_dir" && ac_dir=.
     if test -f $ac_dir/$ac_word; then
       if test "$ac_dir/$ac_word" = "/usr/ucb/cc"; then
@@ -765,25 +792,61 @@ else
   echo "$ac_t""no" 1>&6
 fi
 
+  if test -z "$CC"; then
+    case "`uname -s`" in
+    *win32* | *WIN32*)
+      # Extract the first word of "cl", so it can be a program name with args.
+set dummy cl; ac_word=$2
+echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
+echo "configure:802: checking for $ac_word" >&5
+if eval "test \"`echo '$''{'ac_cv_prog_CC'+set}'`\" = set"; then
+  echo $ac_n "(cached) $ac_c" 1>&6
+else
+  if test -n "$CC"; then
+  ac_cv_prog_CC="$CC" # Let the user override the test.
+else
+  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
+  ac_dummy="$PATH"
+  for ac_dir in $ac_dummy; do
+    test -z "$ac_dir" && ac_dir=.
+    if test -f $ac_dir/$ac_word; then
+      ac_cv_prog_CC="cl"
+      break
+    fi
+  done
+  IFS="$ac_save_ifs"
+fi
+fi
+CC="$ac_cv_prog_CC"
+if test -n "$CC"; then
+  echo "$ac_t""$CC" 1>&6
+else
+  echo "$ac_t""no" 1>&6
+fi
+ ;;
+    esac
+  fi
   test -z "$CC" && { echo "configure: error: no acceptable cc found in \$PATH" 1>&2; exit 1; }
 fi
 
 echo $ac_n "checking whether the C compiler ($CC $CFLAGS $LDFLAGS) works""... $ac_c" 1>&6
-echo "configure:773: checking whether the C compiler ($CC $CFLAGS $LDFLAGS) works" >&5
+echo "configure:834: checking whether the C compiler ($CC $CFLAGS $LDFLAGS) works" >&5
 
 ac_ext=c
 # CFLAGS is not in ac_cpp because -g, -O, etc. are not valid cpp options.
 ac_cpp='$CPP $CPPFLAGS'
 ac_compile='${CC-cc} -c $CFLAGS $CPPFLAGS conftest.$ac_ext 1>&5'
-ac_link='${CC-cc} -o conftest $CFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&5'
+ac_link='${CC-cc} -o conftest${ac_exeext} $CFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&5'
 cross_compiling=$ac_cv_prog_cc_cross
 
-cat > conftest.$ac_ext <<EOF
-#line 783 "configure"
+cat > conftest.$ac_ext << EOF
+
+#line 845 "configure"
 #include "confdefs.h"
+
 main(){return(0);}
 EOF
-if { (eval echo configure:787: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest; then
+if { (eval echo configure:850: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest${ac_exeext}; then
   ac_cv_prog_cc_works=yes
   # If we can't run a trivial program, we are probably using a cross compiler.
   if (./conftest; exit) 2>/dev/null; then
@@ -797,18 +860,24 @@ else
   ac_cv_prog_cc_works=no
 fi
 rm -fr conftest*
+ac_ext=c
+# CFLAGS is not in ac_cpp because -g, -O, etc. are not valid cpp options.
+ac_cpp='$CPP $CPPFLAGS'
+ac_compile='${CC-cc} -c $CFLAGS $CPPFLAGS conftest.$ac_ext 1>&5'
+ac_link='${CC-cc} -o conftest${ac_exeext} $CFLAGS $CPPFLAGS $LDFLAGS conftest.$ac_ext $LIBS 1>&5'
+cross_compiling=$ac_cv_prog_cc_cross
 
 echo "$ac_t""$ac_cv_prog_cc_works" 1>&6
 if test $ac_cv_prog_cc_works = no; then
   { echo "configure: error: installation or configuration problem: C compiler cannot create executables." 1>&2; exit 1; }
 fi
 echo $ac_n "checking whether the C compiler ($CC $CFLAGS $LDFLAGS) is a cross-compiler""... $ac_c" 1>&6
-echo "configure:807: checking whether the C compiler ($CC $CFLAGS $LDFLAGS) is a cross-compiler" >&5
+echo "configure:876: checking whether the C compiler ($CC $CFLAGS $LDFLAGS) is a cross-compiler" >&5
 echo "$ac_t""$ac_cv_prog_cc_cross" 1>&6
 cross_compiling=$ac_cv_prog_cc_cross
 
 echo $ac_n "checking whether we are using GNU C""... $ac_c" 1>&6
-echo "configure:812: checking whether we are using GNU C" >&5
+echo "configure:881: checking whether we are using GNU C" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_gcc'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
@@ -817,7 +886,7 @@ else
   yes;
 #endif
 EOF
-if { ac_try='${CC-cc} -E conftest.c'; { (eval echo configure:821: \"$ac_try\") 1>&5; (eval $ac_try) 2>&5; }; } | egrep yes >/dev/null 2>&1; then
+if { ac_try='${CC-cc} -E conftest.c'; { (eval echo configure:890: \"$ac_try\") 1>&5; (eval $ac_try) 2>&5; }; } | egrep yes >/dev/null 2>&1; then
   ac_cv_prog_gcc=yes
 else
   ac_cv_prog_gcc=no
@@ -828,11 +897,15 @@ echo "$ac_t""$ac_cv_prog_gcc" 1>&6
 
 if test $ac_cv_prog_gcc = yes; then
   GCC=yes
-  ac_test_CFLAGS="${CFLAGS+set}"
-  ac_save_CFLAGS="$CFLAGS"
-  CFLAGS=
-  echo $ac_n "checking whether ${CC-cc} accepts -g""... $ac_c" 1>&6
-echo "configure:836: checking whether ${CC-cc} accepts -g" >&5
+else
+  GCC=
+fi
+
+ac_test_CFLAGS="${CFLAGS+set}"
+ac_save_CFLAGS="$CFLAGS"
+CFLAGS=
+echo $ac_n "checking whether ${CC-cc} accepts -g""... $ac_c" 1>&6
+echo "configure:909: checking whether ${CC-cc} accepts -g" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_cc_g'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
@@ -847,16 +920,20 @@ rm -f conftest*
 fi
 
 echo "$ac_t""$ac_cv_prog_cc_g" 1>&6
-  if test "$ac_test_CFLAGS" = set; then
-    CFLAGS="$ac_save_CFLAGS"
-  elif test $ac_cv_prog_cc_g = yes; then
+if test "$ac_test_CFLAGS" = set; then
+  CFLAGS="$ac_save_CFLAGS"
+elif test $ac_cv_prog_cc_g = yes; then
+  if test "$GCC" = yes; then
     CFLAGS="-g -O2"
   else
-    CFLAGS="-O2"
+    CFLAGS="-g"
   fi
 else
-  GCC=
-  test "${CFLAGS+set}" = set || CFLAGS="-g"
+  if test "$GCC" = yes; then
+    CFLAGS="-O2"
+  else
+    CFLAGS=
+  fi
 fi
 
 # Find a good install program.  We prefer a C program (faster),
@@ -866,28 +943,30 @@ fi
 # SunOS /usr/etc/install
 # IRIX /sbin/install
 # AIX /bin/install
+# AIX 4 /usr/bin/installbsd, which doesn't work without a -g flag
 # AFS /usr/afsws/bin/install, which mishandles nonexistent args
 # SVR4 /usr/ucb/install, which tries to use the nonexistent group "staff"
 # ./install, which can be erroneously created by make from ./install.sh.
 echo $ac_n "checking for a BSD compatible install""... $ac_c" 1>&6
-echo "configure:874: checking for a BSD compatible install" >&5
+echo "configure:952: checking for a BSD compatible install" >&5
 if test -z "$INSTALL"; then
 if eval "test \"`echo '$''{'ac_cv_path_install'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
-    IFS="${IFS= 	}"; ac_save_IFS="$IFS"; IFS="${IFS}:"
+    IFS="${IFS= 	}"; ac_save_IFS="$IFS"; IFS=":"
   for ac_dir in $PATH; do
     # Account for people who put trailing slashes in PATH elements.
     case "$ac_dir/" in
     /|./|.//|/etc/*|/usr/sbin/*|/usr/etc/*|/sbin/*|/usr/afsws/bin/*|/usr/ucb/*) ;;
     *)
       # OSF1 and SCO ODT 3.0 have their own names for install.
-      for ac_prog in ginstall installbsd scoinst install; do
+      # Don't use installbsd from OSF since it installs stuff as root
+      # by default.
+      for ac_prog in ginstall scoinst install; do
         if test -f $ac_dir/$ac_prog; then
 	  if test $ac_prog = install &&
             grep dspmsg $ac_dir/$ac_prog >/dev/null 2>&1; then
 	    # AIX install.  It has an incompatible calling convention.
-	    # OSF/1 installbsd also uses dspmsg, but is usable.
 	    :
 	  else
 	    ac_cv_path_install="$ac_dir/$ac_prog -c"
@@ -917,20 +996,23 @@ echo "$ac_t""$INSTALL" 1>&6
 # It thinks the first close brace ends the variable substitution.
 test -z "$INSTALL_PROGRAM" && INSTALL_PROGRAM='${INSTALL}'
 
+test -z "$INSTALL_SCRIPT" && INSTALL_SCRIPT='${INSTALL_PROGRAM}'
+
 test -z "$INSTALL_DATA" && INSTALL_DATA='${INSTALL} -m 644'
 
 # Extract the first word of "ranlib", so it can be a program name with args.
 set dummy ranlib; ac_word=$2
 echo $ac_n "checking for $ac_word""... $ac_c" 1>&6
-echo "configure:926: checking for $ac_word" >&5
+echo "configure:1007: checking for $ac_word" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_RANLIB'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
   if test -n "$RANLIB"; then
   ac_cv_prog_RANLIB="$RANLIB" # Let the user override the test.
 else
-  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS="${IFS}:"
-  for ac_dir in $PATH; do
+  IFS="${IFS= 	}"; ac_save_ifs="$IFS"; IFS=":"
+  ac_dummy="$PATH"
+  for ac_dir in $ac_dummy; do
     test -z "$ac_dir" && ac_dir=.
     if test -f $ac_dir/$ac_word; then
       ac_cv_prog_RANLIB="ranlib"
@@ -949,7 +1031,7 @@ else
 fi
 
 echo $ac_n "checking whether ln -s works""... $ac_c" 1>&6
-echo "configure:953: checking whether ln -s works" >&5
+echo "configure:1035: checking whether ln -s works" >&5
 if eval "test \"`echo '$''{'ac_cv_prog_LN_S'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
@@ -971,12 +1053,12 @@ fi
 
 
 echo $ac_n "checking for wordexp""... $ac_c" 1>&6
-echo "configure:975: checking for wordexp" >&5
+echo "configure:1057: checking for wordexp" >&5
 if eval "test \"`echo '$''{'ac_cv_func_wordexp'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
   cat > conftest.$ac_ext <<EOF
-#line 980 "configure"
+#line 1062 "configure"
 #include "confdefs.h"
 /* System header to define __stub macros and hopefully few prototypes,
     which can conflict with char wordexp(); below.  */
@@ -999,7 +1081,7 @@ wordexp();
 
 ; return 0; }
 EOF
-if { (eval echo configure:1003: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest; then
+if { (eval echo configure:1085: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest${ac_exeext}; then
   rm -rf conftest*
   eval "ac_cv_func_wordexp=yes"
 else
@@ -1020,12 +1102,12 @@ HAVE_WORDEXP=""
 fi
 
 echo $ac_n "checking for glob""... $ac_c" 1>&6
-echo "configure:1024: checking for glob" >&5
+echo "configure:1106: checking for glob" >&5
 if eval "test \"`echo '$''{'ac_cv_func_glob'+set}'`\" = set"; then
   echo $ac_n "(cached) $ac_c" 1>&6
 else
   cat > conftest.$ac_ext <<EOF
-#line 1029 "configure"
+#line 1111 "configure"
 #include "confdefs.h"
 /* System header to define __stub macros and hopefully few prototypes,
     which can conflict with char glob(); below.  */
@@ -1048,7 +1130,7 @@ glob();
 
 ; return 0; }
 EOF
-if { (eval echo configure:1052: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest; then
+if { (eval echo configure:1134: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest${ac_exeext}; then
   rm -rf conftest*
   eval "ac_cv_func_glob=yes"
 else
@@ -1073,13 +1155,13 @@ fi
 
 if test "$ARCH" = "alpha"; then
   echo $ac_n "checking for broken alpha assembler""... $ac_c" 1>&6
-echo "configure:1077: checking for broken alpha assembler" >&5
+echo "configure:1159: checking for broken alpha assembler" >&5
   cat > conftest.c <<EOF
-#line 1079 "configure"
+#line 1161 "configure"
 static int x, y;
 int main() { return y; }
 EOF
-  if { (eval echo configure:1083: \"$ac_compile\") 1>&5; (eval $ac_compile) 2>&5; }; then
+  if { (eval echo configure:1165: \"$ac_compile\") 1>&5; (eval $ac_compile) 2>&5; }; then
     ac_broken_gas=no
     if objdump -r conftest.o | grep 'LITERAL.*y.*4$' > /dev/null; then
       cat >> confdefs.h <<\EOF
@@ -1126,7 +1208,7 @@ EOF
 # Ultrix sh set writes to stderr and can't be redirected directly,
 # and sets the high bit in the cache file unless we assign to the vars.
 (set) 2>&1 |
-  case `(ac_space=' '; set) 2>&1` in
+  case `(ac_space=' '; set | grep ac_space) 2>&1` in
   *ac_space=\ *)
     # `set' does not quote correctly, so add quotes (double-quote substitution
     # turns \\\\ into \\, and sed turns \\ into \).
@@ -1205,7 +1287,7 @@ do
     echo "running \${CONFIG_SHELL-/bin/sh} $0 $ac_configure_args --no-create --no-recursion"
     exec \${CONFIG_SHELL-/bin/sh} $0 $ac_configure_args --no-create --no-recursion ;;
   -version | --version | --versio | --versi | --vers | --ver | --ve | --v)
-    echo "$CONFIG_STATUS generated by autoconf version 2.12"
+    echo "$CONFIG_STATUS generated by autoconf version 2.13"
     exit 0 ;;
   -help | --help | --hel | --he | --h)
     echo "\$ac_cs_usage"; exit 0 ;;
@@ -1227,9 +1309,11 @@ sed 's/%@/@@/; s/@%/@@/; s/%g\$/@g/; /@g
  s/@@/%@/; s/@@/@%/; s/@g\$/%g/' > conftest.subs <<\\CEOF
 $ac_vpsub
 $extrasub
+s%@SHELL@%$SHELL%g
 s%@CFLAGS@%$CFLAGS%g
 s%@CPPFLAGS@%$CPPFLAGS%g
 s%@CXXFLAGS@%$CXXFLAGS%g
+s%@FFLAGS@%$FFLAGS%g
 s%@DEFS@%$DEFS%g
 s%@LDFLAGS@%$LDFLAGS%g
 s%@LIBS@%$LIBS%g
@@ -1248,8 +1332,6 @@ s%@includedir@%$includedir%g
 s%@oldincludedir@%$oldincludedir%g
 s%@infodir@%$infodir%g
 s%@mandir@%$mandir%g
-s%@COMBINE_rmmod@%$COMBINE_rmmod%g
-s%@COMBINE_modprobe@%$COMBINE_modprobe%g
 s%@host@%$host%g
 s%@host_alias@%$host_alias%g
 s%@host_cpu@%$host_cpu%g
@@ -1265,9 +1347,13 @@ s%@build_alias@%$build_alias%g
 s%@build_cpu@%$build_cpu%g
 s%@build_vendor@%$build_vendor%g
 s%@build_os@%$build_os%g
+s%@COMBINE_sparc@%$COMBINE_sparc%g
+s%@COMBINE_rmmod@%$COMBINE_rmmod%g
+s%@COMBINE_modprobe@%$COMBINE_modprobe%g
 s%@ARCH@%$ARCH%g
 s%@CC@%$CC%g
 s%@INSTALL_PROGRAM@%$INSTALL_PROGRAM%g
+s%@INSTALL_SCRIPT@%$INSTALL_SCRIPT%g
 s%@INSTALL_DATA@%$INSTALL_DATA%g
 s%@RANLIB@%$RANLIB%g
 s%@LN_S@%$LN_S%g

--sm4nu43k4a2Rpi4c--
