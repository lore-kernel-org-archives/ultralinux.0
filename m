From: yves@ultr.vub.ac.be
Date: Fri, 15 Oct 1999 13:30:55 +0000
Subject: X on ultrasparc creator3D
Message-Id: <marc-linux-ultrasparc-93999468103688@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I installed RH6 on  a ultrasparc creator3d with the latest patches and all. When I start X (gnome, KDE, AnotherLevel WM or whatever) the server starts, the wm starts, I even see xterms, taskbars, ... running when I log in using telnet, but the screen stops after 
-the Gnome welcome message, and the initial file manager window,
-the fwm blue screen with a pink rectangle in one of the corners.

The mouse moves, but the buttons do not show any response,
The keyboard appears to be dead, even <STOP><A> doesn't work, pressing CAPSLOCK doesn't show the light, none of the keys show responses.
When I reboot or halt the system, using the telnet session, the screen stays the same. 
Xsun24 takes about 90% of the cpu.
 

The logfile I created using startx shows
xauth:  creating new authority file /usr4/people/yves/.Xauthority

_X11TransSocketUNIXConnect: Can't connect: errno = 61

waiting for X server to begin accepting connections .(using VT number 7)


DEF /usr/share/enlightenment/themes/CleanBig
Xlib:  extension "XFree86-Misc" missing on display ":0.0".
Xlib:  extension "XFree86-Misc" missing on display ":0.0".
Gdk-Message: Got event for unknown window: 0

xscreensaver-command: no screensaver is running on display :0.0
xscreensaver disabling server builtin screensaver.
xscreensaver: you can re-enable it with "xset s on".
subshell.c: couldn't get terminal settings: Inappropriate ioctl for device
xinit:  unexpected signal 1
 for gnome, and
(using VT number 7)

for fwm



This is a desparate cry for help. Do I really have to reinstall solaris?


Yves Geunes
Vrije Universiteit Brussel
yves@ultr.vub.ac.be
