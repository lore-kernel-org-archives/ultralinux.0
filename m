From: Eric <ebrower@usa.net>
Date: Fri, 30 Mar 2001 09:58:09 +0000
Subject: Re: [Re: Sun Blade 100 status?]
Message-Id: <marc-linux-ultrasparc-98597571130027@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

...and the tech ref manual is finally available from SME.

E

Joshua Uziel <uzi@uzix.org> wrote:
As an FYI, if you go the nfsroot route, the machine will work currently
to some extent with the latest 2.4.3 from cvs:

[7:07pm] blackberry:~> uname -a
Linux blackberry 2.4.3 #11 Thu Mar 29 23:51:31 PST 2001 sparc64 unknown
[7:07pm] blackberry:~> cat /proc/cpuinfo 
cpu             : TI UltraSparc IIe
fpu             : UltraSparc IIe integrated FPU
promlib         : Version 3 Revision 0
prom            : 4.0.1
type            : sun4u
ncpus probed    : 1
ncpus active    : 1
BogoMips        : 999.42
MMU Type        : Spitfire
[7:07pm] blackberry:~> cat /proc/openprom/name 
'SUNW,UltraAX-e2'

(Actually, this is an AX1105-500, but it and the SB100 are very similar.)

This is actually with an nfsroot environment I have set up for my
javastation. ;)  Several components definitely still need work, but
this is at least a start.

-
To unsubscribe from this list: send the line "unsubscribe sparclinux" in
the body of a message to majordomo@vger.kernel.org


____________________________________________________________________
Get free email and a permanent address at http://www.netaddress.com/?N=1
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
