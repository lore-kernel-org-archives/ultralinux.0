From: "Ansgar Bodenberger" <a.bodenberger@t-online.net>
Date: Fri, 11 Sep 1998 07:09:58 +0000
Subject: Problems with Silo on UltraSparc2
Message-Id: <marc-linux-ultrasparc-90549918609004@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hallo,

I installed the Ultrapinguin 1.09 and Solaris 2.6 on an Ultra 2 Prom
Version 3.7.0.

/dev/sda1     SunOs     /
/dev/sda2     SunOs    swap
/dev/sda3    whole      disk
/dev/sda4    linux        /
/dev/sda5    linux        /usr
/dev/sda6    linux        swap
/dev/sda7    SunOs    /usr

I have problems to boot both Operating Systems with the Silo. To start
linux is easy, but when I want to start Solaris i have problems.
At the Silo command line I put in the string /boot/old.b but  the boot
prom from answer SFast Data Access MMU Miss.

Has anybody an idea?

Ansgar
