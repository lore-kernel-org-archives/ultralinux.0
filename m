From: Leo Wong <leowong@electec.com.sg>
Date: Fri, 02 Apr 1999 11:03:54 +0000
Subject: X server cannot start
Message-Id: <marc-linux-ultrasparc-92305145319111@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello,
 I have the pleasure of evaluating an UltraSparc machine from Donovan
Systems and have just installed Ultrapenguin 1.1.9 (I think), the one
with kernel 2.2.2.

During installation, I booted from the CD without any problems and chose
the custom installation because the server installation fails to provide
a working SILO.conf.  I have not tried the workstation install option.

The install detects all hardware correctly and all is well here.

Ok, after a custom install, the system boots beautifully and I am happy
to say that I have successfully compiled some popular stuff on it
including MySQL 3.21, mod_perl 1.18, eperl, Apache 1.3.4, ssh 1.2.26 and
other small  utils.  Networking and internet access is OK too.

BUT - I can't get X to start.  The error is Fatal Server Error, cannot
open /dev/kbd - error 19.  Even calling xinit or X directly won't work.

I'm sorry, but those are all the details that I know of to provide.
Does anyone have this problem too ?  I'd really appreciate the help as
Donovan is plannign to go big time with UltraPenguin.

Thanks in advance.

Leo Wong
