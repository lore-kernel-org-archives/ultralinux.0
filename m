From: Kapil Chowksey <kchowksey@hss.hns.com>
Date: Sat, 11 Jul 1998 14:29:14 +0000
Subject: another openboot question
Message-Id: <marc-linux-ultrasparc-90222358531011@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

hi all,

I was able to set breakpoints in the ultralinux kernel after it
relocates itself. I just `map-page'd the location KERNBASE into paddr
0. But I still cannot examine memory using the dump command. eg.

If I do 

ok 0x404300 dump 
<displays data at vaddr 0xfffe0000>

All this is with OpenBoot rev 3.0.

I will be grateful if someone can give me the magic incantation to
enable the PROM to dump memory correctly from the relocated address.

-- 
Kapil Chowksey                         Viva GNU !
kchowksey@hss.hns.com
