From: Sven Grundmann <grundema@uni-duesseldorf.de>
Date: Mon, 08 Jun 1998 19:56:10 +0000
Subject: ultralinux 1.1 .. 1.0.9 ??
Message-Id: <marc-linux-ultrasparc-90222357630997@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi !

I have just installed ultrapenguin 1.1 on a sun4u and have some bugs
comments suggentions to report .
Kernel version is 2.1.99  ( were do i get new kernels ?)


Problems:

- The installation via ftp://ultra.linux.cz reported two packages
missing ( or corrupt):
        sh-utils-1.16-8.sparc.rpm
        sparc64-linux-binutils-2.8.1-5.sparc.rpm

-Problems with the autofs script cause getmounts is missing ( probably
contens of sh-utils ? )

- Icons in control-panel  were not displayed.
    A survey with strace reported that the files were present and could
be opened and read !
    It also cannot be a problem with the colormap cause xv could display
the icons without
    private colormap .

- Somtimes screen is corrupted when switching vt between console and X
Display .
    The Display is the a mixture of  the console and the X screen.

- Another Problem with vt switching is, that ctrl sometimes gets locked
when you switch vt from
    console to X with ctrl-alt- F12 and not simply with alt-F12

- Shutting down the Xserver seems to bee very slow and does not switch
back to the vt startet
    from , so a user could assume the server has locked .

- I am a little bit confused about the development state of the solaris
binary emulation module.
    The first thing is that i am not very sure about the setup of the
emulator.
    I copied shared solaris libs to /usr/gnemul/solaris/usr/lib and
/usr/gnemul/solaris/usr/openwin/lib.
    The i exuted modprobe solaris as root and tried some binaries.
    Some of the console binaries ran but telnet reported

                        ioctl I_FIND ttcompat: Bad file number

    I tried a simple X application then ( xeyes ) :

    bash-2.01$ echo $DISPLAY
    :0.0
    bash-2.01$ ./xeyes
    Error: Can't open display: :0.0
    bash-2.01$
    when i  ran it as root the complete machine has locked up ( i tried
it two times ;) )

    Question :
        Do i need additional ibcs2 package to run solaris binaries or is
all includet ??
        I didn't try the ibcs2 cause the released date of the package
was much before the
         release date of this ultrapenguin distribution.


Suggenstions:

  - I was  able to install via ftp but glint is not able to reconfiure
the packages via ftp  !
        ( I tried a URL as a path and pressed the available button in
glint but it didn't work )


Wishes:

We have the best wishes for the Ultrapenguin developer Team and  if we
can get netscape
running we will UPGRADE ;)  our  whole  sparc pool to linux .

Have fun :)

ciao

Sven Grundmann
Thomas Bruss

ps: We were not able to configure silo to boot the old solaris 2.5 but
that doesn't matter ;)
