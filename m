From: Sven Grundmann <grundema@uni-duesseldorf.de>
Date: Mon, 29 Jun 1998 15:42:18 +0000
Subject: problem with control-panel
Message-Id: <marc-linux-ultrasparc-90222357631045@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi !
I just upgraded my ultralinux and now my control-panel isn't working
anymore !
error message is :
bash-2.01$ su
Password:
bash-2.01# control-panel

** WARNING **: Creating pixmap from xpm with NULL window and colormap
control-panel: error in loading shared libraries
: undefined symbol: gtk_tooltips_set_tips
bash-2.01#
before upgrading it worked but without any icons .. now it doesn't start
anymore .


my second problem is, that autofs isn't working . It always  says :

bash-2.01$ autofs start
././autofs: line 133: syntax error near unexpected token `;'
././autofs: line 133: ` ;;      '
bash-2.01$

The bug with the blinking screen in x seems to be fixed ! tnx

After the autoupgrade i thought that it could get better if i reinstall
everthing cause i got error messages
during my first installation . But there were even more error messages
. I include my update log !

Question : Is there a differnce between  choosing the sparc or the
sparc64 directory ?

ciao
Sven Grundmann

This is the complete upgrade log  ( i manually selcted all cause i
thought it couldn't get worse upgrading all ) :

Upgrading basesystem.
Upgrading acm.
Upgrading adjtimex.
Upgrading amd.
Upgrading anonftp.
Upgrading AnotherLevel.
Upgrading apache.
Upgrading apachecfg.
Upgrading arena.
Upgrading aumix.
Upgrading autoconf.
Upgrading autofs.
Upgrading automake.
Upgrading basic.
Upgrading biff.
Upgrading bind.
Upgrading bind-utils.
Upgrading bison.
Upgrading bootp.
Upgrading bootparamd.
Upgrading bsd-games.
Upgrading byacc.
Upgrading bzip2.
Upgrading caching-nameserver.
Upgrading cdecl.
Upgrading cdp.
Upgrading christminster.
Upgrading cmu-snmp.
Upgrading cmu-snmp-devel.
Upgrading cmu-snmp-utils.
Upgrading colour-yahtzee.
Upgrading control-panel.
Upgrading cproto.
Upgrading cracklib.
Upgrading ctags.
Upgrading cvs.
Upgrading xinitrc.
Upgrading xpm.
Upgrading XFree86-libs.
Upgrading xbanner.
Upgrading XFree86.
Upgrading cxhextris.
Upgrading dhcpd.
Upgrading dialog.
Upgrading dip.
Upgrading dump.
Upgrading e2fsprogs-devel.
Upgrading efax.
Upgrading ElectricFence.
Upgrading elm.
Upgrading emacs.
Upgrading emacs-el.
Upgrading emacs-nox.
Upgrading emacs-X11.
Upgrading exmh.
Upgrading expect.
Upgrading f2c.
Upgrading faces-devel.
Upgrading faq.
Upgrading fetchmail.
Upgrading finger.
Upgrading flex.
Upgrading flying.
Upgrading fort77.
Upgrading fortune-mod.
Upgrading fstool.
Upgrading ftp.
Upgrading fvwm.
Upgrading fvwm2.
Upgrading fvwm2-icons.
Upgrading fwhois.
Upgrading gated.
Upgrading gcc.
Upgrading gcc-c++.
Upgrading gcc-objc.
Upgrading gdb.
Upgrading gdbm-devel.
Upgrading gettext.
Upgrading ghostscript.
Upgrading ghostscript-fonts.
Upgrading giftrans.
Upgrading gimp.
Upgrading gimp-data-extras.
Upgrading gimp-devel.
Upgrading gimp-libgimp.
Upgrading git.
Upgrading glib.
Upgrading glibc-debug.
Upgrading glibc-devel.
Upgrading glibc-profile.
Upgrading glint.
Upgrading gmp.
Upgrading gmp-devel.
Upgrading gnome-libs.
Upgrading gnome-libs-devel.
Upgrading gnuchess.
Upgrading gnuplot.
Upgrading gpm-devel.
Upgrading groff-gxditview.
Upgrading groff-tools.
Upgrading gtk+.
Upgrading gtk+-devel.
Upgrading guavac.
Upgrading guile.
Upgrading guile-devel.
Upgrading gv.
Upgrading helptool.
Upgrading howto.
Upgrading howto-dvi.
Upgrading howto-html.
Upgrading howto-ps.
Upgrading howto-sgml.
Upgrading howto-translations.
Upgrading ical.
Upgrading ImageMagick.
Upgrading ImageMagick-devel.
Upgrading imap.
Upgrading imlib.
Upgrading imlib-devel.
Upgrading indent.
Upgrading indexhtml.
Upgrading inews.
Upgrading inn.
Upgrading inn-devel.
Upgrading install-guide.
Upgrading intimed.
Upgrading ipfwadm.
Upgrading ipxutils.
Upgrading ircii.
Upgrading ircii-help.
Upgrading jed.
Upgrading jed-xjed.
Upgrading joe.
Upgrading kaffe.
Upgrading kaffe-bissawt.
Upgrading kernel-headers.
Upgrading kernel-source.
Upgrading kernelcfg.
Upgrading lha.
Upgrading libelf.
Upgrading libg++-devel.
Upgrading libgr.
Upgrading libgr-devel.
Upgrading libgr-progs.
Upgrading libjpeg.
Upgrading libjpeg-devel.
Upgrading libpng.
Upgrading libpng-devel.
Upgrading libtermcap-devel.
Upgrading libtiff.
Upgrading libtiff-devel.
Upgrading libtool.
Upgrading lout.
Upgrading lout-doc.
Upgrading lpg.
Upgrading lpr.
Upgrading lrzsz.
Upgrading lynx.
Upgrading macutils.
Upgrading make.
Upgrading man-pages.
Upgrading maplay.
Upgrading mc.
Upgrading mcserv.
Upgrading metamail.
Upgrading mgetty.
Upgrading mgetty-sendfax.
Upgrading mgetty-voice.
Upgrading mh.
Upgrading minicom.
Upgrading mkdosfs-ygg.
Upgrading mkisofs.
Upgrading mkxauth.
Upgrading modemtool.
Upgrading moonclock.
Upgrading mpage.
Upgrading mtools.
Upgrading multimedia.
Upgrading mutt.
Upgrading mxp.
Upgrading mysterious.
Upgrading nag.
Upgrading ncftp.
Upgrading ncpfs.
Upgrading ncurses-devel.
Upgrading netcfg.
Upgrading netkit-base.
Upgrading newt-devel.
Upgrading nfs-server.
Upgrading nfs-server-clients.
Upgrading nls.
Upgrading ntalk.
Upgrading open.
Upgrading p2c.
Upgrading p2c-devel.
Upgrading paradise.
Upgrading pdksh.
Upgrading pidentd.
Upgrading pinfocom.
Upgrading playmidi.
Upgrading playmidi-X11.
Upgrading pmake.
Upgrading popt.
Upgrading portmap.
Upgrading ppp.
Upgrading printtool.
Upgrading procinfo.
Upgrading procps-X11.
Upgrading psacct.
execution of script failed
        cannot open RPM file psacct-6.3-2.sparc.rpm: No such file or
directory
Upgrading python-devel.
Upgrading python-docs.
Upgrading rcs.
Upgrading rdate.
Upgrading rdist.
Upgrading readline-devel.
Upgrading rgrep.
Upgrading rhbackup.
Upgrading rhl-install-guide-en.
Upgrading rhmask.
Upgrading rhs-printfilters.
Upgrading rhsound.
Upgrading rmt.
Upgrading routed.
Upgrading rpm-devel.
Upgrading rsh.
Upgrading rusers.
execution of script failed
        cannot open RPM file rusers-0.10-2.sparc.rpm: No such file or
directory
Upgrading rwall.
execution of script failed
        cannot open RPM file rwall-0.10-3.sparc.rpm: No such file or
directory
Upgrading rwho.
execution of script failed
        cannot open RPM file rwho-0.10-4.sparc.rpm: No such file or
directory
Upgrading rxvt.
Upgrading sag.
Upgrading samba.
execution of script failed
        cannot open RPM file samba-1.9.17p4-3.sparc.rpm: No such file or
directo
ry
Upgrading scottfree.
Upgrading screen.
Upgrading sendmail-cf.
Upgrading sendmail-doc.
Upgrading seyon.
Upgrading sgml-tools.
Upgrading sharutils.
Upgrading slang-devel.
Upgrading sliplogin.
Upgrading slrn.
Upgrading solemul.
Upgrading sox.
Upgrading sparc64-linux-binutils.
Upgrading sparc64-linux-gcc.
Upgrading spice.
Upgrading spider.
Upgrading strace.
Upgrading swatch.
Upgrading symlinks.
Upgrading taper.
Upgrading tcl.
Upgrading tclx.
Upgrading tcp_wrappers.
Upgrading tcpdump.
Upgrading telnet.
Upgrading tetex.
execution of script failed
        cannot open RPM file tetex-0.4pl8-10.sparc.rpm: No such file or
director
y
Upgrading tetex-afm.
Upgrading tetex-dvilj.
Upgrading tetex-dvips.
Upgrading tetex-latex.
Upgrading tetex-texmf-src.
Upgrading tetex-xdvi.
Upgrading texinfo.
Upgrading tftp.
Upgrading timed.
Upgrading timetool.
Upgrading tin.
Upgrading tix.
Upgrading tk.
Upgrading tkinter.
Upgrading tkmc.
Upgrading tksysv.
Upgrading traceroute.
Upgrading tracker.
Upgrading transfig.
Upgrading tree.
Upgrading trn.
Upgrading trojka.
Upgrading tunelp.
Upgrading umb-scheme.
execution of script failed
        cannot open RPM file umb-scheme-3.2-5.sparc.rpm: No such file or
directo
ry
Upgrading unarj.
Upgrading units.
Upgrading unzip.
Upgrading usercfg.
Upgrading usermode.
Upgrading usernet.
Upgrading uucp.
execution of script failed
        cannot open RPM file uucp-1.06.1-14.sparc.rpm: No such file or
directory
Upgrading vim-X11.
Upgrading vlock.
Upgrading wmconfig.
Upgrading wu-ftpd.
Upgrading X11R6-contrib.
Upgrading x3270.
execution of script failed
        cannot open RPM file x3270-3.1.1.6-1.sparc.rpm: No such file or
director
y
Upgrading xanim.
Upgrading Xaw3d.
Upgrading Xaw3d-devel.
Upgrading xbill.
Upgrading xbl.
Upgrading xboard.
Upgrading xboing.
Upgrading xchomp.
Upgrading Xconfigurator.
       cannot open RPM file uucp-1.06.1-14.sparc.rpm: No such file or
directory
Upgrading vim-X11.
Upgrading vlock.
Upgrading wmconfig.
Upgrading wu-ftpd.
Upgrading X11R6-contrib.
Upgrading x3270.
execution of script failed
        cannot open RPM file x3270-3.1.1.6-1.sparc.rpm: No such file or
director
y
Upgrading xanim.
Upgrading Xaw3d.
Upgrading Xaw3d-devel.
Upgrading xbill.
Upgrading xbl.
Upgrading xboard.
Upgrading xboing.
Upgrading xchomp.
Upgrading Xconfigurator.
Upgrading xdaliclock.
Upgrading xdemineur.
Upgrading xearth.
Upgrading xevil.
Upgrading xfig.
Upgrading xfishtank.
Upgrading xfm.
Upgrading XFree86-100dpi-fonts.
Upgrading XFree86-75dpi-fonts.
Upgrading XFree86-devel.
Upgrading XFree86-Xnest.
Upgrading XFree86-Xvfb.
Upgrading xgalaga.
Upgrading xgammon.
Upgrading xgopher.
Upgrading xjewel.
Upgrading xlander.
Upgrading xloadimage.
Upgrading xlockmore.
Upgrading xmailbox.
Upgrading xmorph.
Upgrading xpaint.
Upgrading xpat2.
Upgrading xpm-devel.
Upgrading xpuzzles.
Upgrading xrn.
Upgrading xscreensaver.
Upgrading xserver-wrapper.
Upgrading xsnow.
Upgrading xsysinfo.
Upgrading xterm-color.
Upgrading xtoolwait.
Upgrading xtrojka.
Upgrading xv.
Upgrading xwpick.
Upgrading xxgdb.
Upgrading xzip.
Upgrading yp-tools.
Upgrading ypbind.
Upgrading yppasswd.
Upgrading ypserv.
execution of script failed
        cannot open RPM file ypserv-1.1.7-5.sparc.rpm: No such file or
directory
Upgrading ytalk.
Upgrading zip.
Upgrading zlib-devel.
