From: bob hubbard <rhubbard@amdahl.com>
Date: Sat, 09 Oct 1999 02:22:00 +0000
Subject: Cross compiler !!! egcs for intel host with target Sparc64
MIME-Version: 1
Content-Type: multipart/mixed; boundary="------------15669419C0B1FB2C7B889698"
Message-Id: <marc-linux-ultrasparc-93944515221060@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

This is a multi-part message in MIME format.
--------------15669419C0B1FB2C7B889698
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello ,

  I'm attempting to X-compile  from an I686 host for a Target system of
Sparc64-*-linux

My stock compiler is ..
root@localhost src]# gcc -v
Reading specs from /usr/lib/gcc-lib/i686-pc-linux-gnu/pgcc-2.91.66/specs

gcc version pgcc-2.91.66 19990314 (egcs-1.1.2 release)
[root@localhost src]#

I downloaded latest  egcs from Cygnus and this appears to not work  for
x-compiler .

[root@localhost bin]# ./gcc -v
Reading specs from /usr/X/lib/gcc-lib/sparc64-*-linux/2.95.1/specs
gcc version 2.95.1 19990816 (release)


I looked around and found a mention that the x-compile is broken for
sparc64 ? .


If someone has this working correctly then a simple YES will suffice me
for a user error , or an alternative known x-compiler .

running 2.2.12    Kernel .



Thanks for input .





--------------15669419C0B1FB2C7B889698
Content-Type: text/x-vcard; charset=us-ascii;
 name="rhubbard.vcf"
Content-Transfer-Encoding: 7bit
Content-Description: Card for bob hubbard
Content-Disposition: attachment;
 filename="rhubbard.vcf"

begin:vcard 
n:Hubbard;Bob
tel;cell:Calling me from USA 011 44 7967 109138
tel;home:Cellular from UK - 07967 109138
tel;work:+44(0)1252 386293
x-mozilla-html:TRUE
org:Amdahl
version:2.1
email;internet:rhubbard@amdahl.com
adr;quoted-printable:;;Note - Please use or contact me on my mobile .=0D=0AAvailable for messages and contactable globally .=0D=0A;;;;
x-mozilla-cpt:;-18784
fn:Bob Hubbard
end:vcard

--------------15669419C0B1FB2C7B889698--
