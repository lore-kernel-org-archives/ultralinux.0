From: Jakub Jelinek <jj@sunsite.ms.mff.cuni.cz>
Date: Thu, 10 Dec 1998 16:45:14 +0000
Subject: UltraPenguin 1.1.9 (beta test release for upcoming 1.2 distribution)
Message-Id: <marc-linux-ultrasparc-91336124713393@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi!

I've just released UltraPenguin 1.1.9, go for it at
ftp://ultra.penguin.cz/pub/ultrapenguin-1.1.9/

This distribution is based on Red Hat 5.2/SPARC, UltraPenguin 1.1
and has a couple of bugfixes/additions against the resulting merge of
the above to distros.

I've put there a completely untested CD-ROM (I don't have enough $$ to 
create a test CD evey week), so someone interested please test it and report
any problems. Also included is the GNOME beta preview, the same as in RH
5.2. The whole distribution was compiled with egcs 1.0.3, so it will be
fully binary compatible to RH 5.2/SPARC (there were some undefined symbols
if you tried to run a RH 5.2 binary on UP 1.1).

The full distribution directory plus cdimages is 1.5GB, so be warned.
If you download just the sparc directory, it should be much better (.5GB).
For some reason, my proftpd does not show devices and pipes, I'll work on
it, so if you want the devices, grab the CD image, the devices are on it
just fine. To install it from local hd/CD/ftp, you don't need the devices
though.

This is a beta release, which is intended to find any last moment bugs and
problems, so that UP 1.2 can be a stable release (as opposed to UP 1.1,
where there are several problems here and there). So please report all bugs,
problems, missing things and the like to the mailing lists.

Also, SunAudio stuff is not in, I'm waiting for Derrick to come back from
Lisa to discuss it with him, but I'd definitely like to support Audio fully.

There are too many changes against UP 1.1, so I'd rather list changes
against Red Hat 5.2:

(total of 52 modified/added source packages of total 437 packages)
MAKEDEV			create new /dev/console, create on demand sdi* - sddx*
			devices
XFree86			merged in UP 1.1 stuff (Creator acceleration and
			much more) - I definitely plan to update this package
			before UP 1.2 once more, so that Xsun* servers
			use Files and Keyboard section of XF86Config.
			The infrastructure for it is done otherwise.
XFree86-ISO8859-2	updated to use Xfontreg - now just install this
			and latin2 fonts are ready to be used.
XFree86-ISO8859-9	updated to use Xfontreg - now just install this
			and latin2 fonts are ready to be used.
Xconfigurator		Merged UP 1.1 stuff (RH 5.2 does not configure X
			nicely on SPARC), autodetect keyboard type and its
			layout, handle national keyboards, use
			/etc/X11/XF86fonts so that font paths are not lost
			accross Xconfigurator invocations
Xfontreg		NEW PACKAGE - handle correctly installing additional
			fonts into the system. Will guess the right place
			in the font path (has several rules where to put it),
			and will edit your XF86Config and /etc/X11/XF86fonts -
			a new file which will help Xconfigurator not discard
			your font paths.
autoconf		update config.guess, so that it knows about
			sparc64-unknown-linux-gnu
bash			updated to 2.02.1 (RH 5.2 still uses bash 1.47, but
			rawhide finally uses 2.*), fix a typo in bashrc
			script (btw: be warned, if you have CDPATH variable
			set, make sure it does not include ., but an empty
			string instead of the dot (e.g. CDPATH=:/usr/src),
			as otherwise cd command will often want to print
			something to stdout, which confuses a lot of various
			scripts, which do e.g. (cd somedir; tar cf - *) | cmd).
console-tools		NEW PACKAGE - replaces kbd package. console-tools
			is much nicer package, and the most important thing
			is that it allows 16bit ACM maps.
			I was quite disappointed to see what RH 5.2 shows
			on console when I choose CZ language, mc looks
			disgustingly, etc. So, I've created to new fonts,
			lat0-sun16 and lat2-sun16, which are compatible in
			look and feel with the builtin SUN8x16 kernel font,
			these fonts contain as many characters as possible
			for latin0/latin1/vtline and latin2/cp850/vtline.
			Provided is a iso15.acm and iso01.acm to be used
			with the former font (to get latin0 and latin1),
			plus iso02.acm to get latin2, additionally a hack
			iso02+euro.acm, which replaces the useless currency
			symbol with euro sign. Included are also updated
			sun keymaps to handle euro, plus two new keymaps,
			sunt5-us-cz and sunt5-cz-us. With this package,
			you're really Euro-ready on the console.
dev			basically update to UP 1.1 devices, including
			/dev/console 5,1.
egcs			1.0.3 (sorry, I wanted to be as compatible as
			possible with RH 5.2, so no 1.1.1, and egcs-cvs
			is currently not stable enough on sparc/sparc64).
			Added a hack, so that if you specify -m64 on the
			command line, it will look for a
			sparc64-redhat-linux compiler instead (change its
			default -b and -V settings in that case).
			You can freely now compile both 32bit and 64bit
			proggies (well, 64bit just the kernel, sorry)
			just by running gcc.
egcs64			NEW PACKAGE - This is the latest egcs-current before 
			reload changes, which is known to build a working
			sparc64 kernel.
eject			This package did not even build with 2.1 kernels.
elftoaout		Fix buildroot.
fbset			NEW PACKAGE - Updated against UP 1.1 to 19981104, 
			which knows how to set all consoles at once.
file			recognize correctly SPARC v9 ELF (patches
			sent to maintainer).
filesystem		It is strange if this package is noarch and differs
			on sparc and other world, so fix this, plus
			fix the /usr/X11R6.1 stuff (that one is a link
			to /usr/X11R6), plus add /usr/gnemul directory.
fvwm2			Fix headers, as SparcLinux is not SunOS.
gdb			Merge in UP 1.1 fixes and enhancements (core dumps,
			64bit ELF support, opcode fixes) and make it
			compile with 2.1 headers (the latter one is new
			against UP 1.1).
genromfs		NEW PACKAGE - merge in UP 1.1 version.
gperf			Update to 2.7, put in the required patch
			egcs-cvs needs (no need to apply yourself
			gperf-2.7-19981006.patch which comes with egcs).
hdparm			Merge in SPARC fixes from UP 1.1, plus make
			it compile with 2.1.1[23][0-9] kernels.
indexhtml		Change for UltraPenguin.
initscripts		Fix for bash 2.*, autodetect SMP on SPARC (for
			modules), autodetect serial/real console
			(for inittab), work with console-tools, recognize
			SYSFONTACM setting in /etc/sysconfig/i18n,
			if necessary, output Esc ( K to the vt to
			get the user SYSFONTACM working.
kbdconfig		Recognize attached Sun vs. PC keyboards (e.g. on 
			AX/AXi), use right set of keymaps in such cases.
kernel			2.1.130 as of yesterday, e.g. SBUS floppy should
			work just fine. Davem told me something is hosed
			currently for some E[3-6]k machines, plus
			E10k support has not made it in yet (but I hope
			both things will get resolved before real UP 1.2).
ld.so			Support both 32bit and 64bit SPARCs (basically
			the same as in UP 1.1).
ldconfig		Be prepared for 64bit native libraries.
man-pages		Include Andy Kleens 2.2 kernel networking
			man pages.
mc			Make rpmfs working for rpm 2.5+.
mkbootdisk		SPARC support (basically UP 1.1 version).
mkinitrd		SPARC64 support (basically UP 1.1 version).
mkkickstart		Don't be confused by Sun X servers.
modutils		Update to 2.1.121, fix UP 1.1 problems
			with loading stacked modules on sparc64.
mouseconfig		SPARC support (basically UP 1.1 version).
ncpfs			Fix building, this package did not even build,
			wonder how RH has made it.
net-tools		Update to 1.48, so that you're really 2.2 ready.
			E.g. ping -f should work just fine, and other
			things as well. Fix a compilation problem in it.
netscape		Update to 4.5/SPARC, seems to run fine, just
			disable JavaScript as not to have a security hole.
pciutils		NEW PACKAGE - basically UP 1.1 version.
prtconf			NEW PACKAGE - UP 1.1 version, just building fixes
			(buildroot).
quota			Update to 1.66 (ie. UP 1.1 version).
rpm			Recognize sparc64 correctly, requires script
			skips /etc/ld.so.preloaded things.
setconsole		Simplify for new /dev/console (UP 1.1 version).
setup			Allow root to log on tty9..tty11 and on
			/dev/console.
silo			Update to 0.8.4, fix a compilation problem
			with latest 2.1 headers, don't require romfs.h
			for those compiling on 2.0 kernels.
sliplogin		This package did not compile with current 2.1
			headers.
solemul			NEW PACKAGE - UP 1.1 version.
sparc32			NEW PACKAGE - buildroot.
sysklogd		Recognize SPARC and SPARC64 oopses, resolve
			them if System.map is available.
ultrapenguin-release	Replaced redhat-release for obvious reasons.
urw-fonts		updated to use Xfontreg - now just install this
			and latin2 fonts are ready to be used.
util-linux		Handle v1 swaps in mkswap (up to 2GB till Linus
			accepts my patch into vanilla kernel), SPARC mkswap
			fixes, -f option added (by default mkswap will not
			smash your partitions with v0 swaps, you have to
			force it if you want), make it compile with 2.1.1??
			headers.

(and some removed packages):
kbd			Replaced by console-tools
redhat-release		Replaced by ultrapenguin-release
termcap			Contained a typo in ExcludeArch, so was not
			actually excluded

The installer also has quite few changes against UP 1.1 (that one was
already synced to RedHat 5.2), e.g. the individual package choice dialogs
are reasonably sized, you can choose keyboard mappings (please tell me if this works
on AX with PC keyboards), should handle installation from a local UFS
partition (again, this is just coded and I had no possibility to test it
anywhere, so please report how it went), fix mkswapping for v1 swaps,
update to 2.1.121 modutils for installation, an attempt to fix the Ultra30
CD booting problems (please report to me how it went), sets SYSFONTACM.

Cheers,
    Jakub
___________________________________________________________________
Jakub Jelinek | jj@sunsite.mff.cuni.cz | http://sunsite.mff.cuni.cz
Administrator of SunSITE Czech Republic, MFF, Charles University
___________________________________________________________________
Ultralinux - first 64bit OS to take full power of the UltraSparc
Linux version 2.1.130 on a sparc64 machine (3958.37 BogoMips)
___________________________________________________________________
