From: Alberto Brealey <beto@alpha.ulatina.ac.cr>
Date: Sat, 13 Jun 1998 00:22:40 +0000
Subject: netboot
Message-Id: <marc-linux-ultrasparc-90222357631011@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


i'm trying to netboot my ss4 to install ultra-1.0.9 on it.

i followed the directions on the users guide, set up arp/rarp and tftp.

however, whenever i issue a 'boot net' on the prompt, i crash the switches
of the campus network... (really shitty by the way, the switches)

i have one question:

on another machine i have to run arp -s and rarp -s with the MAC and IP of
the machine i want to install? on both arp and rarp?

i browsed the man pages and i think i'm doing right, but the switches
continue crashing...

any help would be appreciated

alberto
