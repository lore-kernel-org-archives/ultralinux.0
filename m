From: otel@ce.chalmers.se
Date: Wed, 31 Mar 1999 13:58:11 +0000
Subject: Two newbie questions
Message-Id: <marc-linux-ultrasparc-92288903607919@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



Hello everybody,


1) I installed the UltraPenguin 1.1.9 with a 2.2.2 kernel on my
SparcStation 4 machine. Everything goes pretty smooth until I using
X. Then unpredictably the X server breaks and the only thing left is
the gpm cursor on the screen. The machine is still up  but the
only way to get back to text mode is  to logon from remote and
re-start the X server and then move back locally to text mode. I tried 
to use a GCX video card instead of TCX built-in but the X server still
breaks. Any hint ? Are  there any updates to the X server ? Again, the
system is a  vanilla UltraPenguin 1.1.9

===2) I tried to do a kernel CVS checkout from cvs.on.openprojects.net
as described in their homepage:

yup.ce.chalmers.se:otel:[~]>setenv CVSROOT ':pserver:anonymous@cvs.on.openprojects.net:/cvs/linux'
yup.ce.chalmers.se:otel:[~]>cvs login
(Logging in to anonymous@cvs.on.openprojects.net)
CVS password: 

====
Can somebody tell me where i can find the password for the anonymous
checkout ? Is there any other procedure ? I browsed the mail archives
without any success.


TIA,

Florian
