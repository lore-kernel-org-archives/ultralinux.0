From: Grzegorz Piotr Jaskiewicz <gj@pointblue.com.pl>
Date: Tue, 25 Jan 2005 18:43:29 +0000
Subject: [Fwd: Re: swap is never used on ultrasparc64/32 - 2.6.11-rc2 (STILL
Message-Id: <41F69351.3010604@pointblue.com.pl>
MIME-Version: 1
Content-Type: multipart/mixed; boundary="------------090600040301030005090005"
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

This is a multi-part message in MIME format.
--------------090600040301030005090005
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

is 2.6 usable anyway on ultra 5 sun ?

-- 
GJ

--------------090600040301030005090005
Content-Type: message/rfc822;
 name="Re: swap is never used on ultrasparc64/32 - 2.6.11-rc2 (STILL NOT SOLVED)"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="Re: swap is never used on ultrasparc64/32 - 2.6.11-rc2 (STILL NOT SOLVED)"

Return-Path: <linux-kernel-owner+gj=40pointblue.com.pl-S262029AbVAYRmQ@vger.kernel.org>
Delivered-To: gj@pointblue.com.pl
Received: by pointblue.com.pl (Postfix, from userid 65534)
	id 39D5725A; Tue, 25 Jan 2005 18:43:53 +0100 (CET)
Received: from vger.kernel.org (vger.kernel.org [12.107.209.244])
	by pointblue.com.pl (Postfix) with ESMTP id 1BE90179
	for <gj@pointblue.com.pl>; Tue, 25 Jan 2005 18:43:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
	id S262029AbVAYRmQ (ORCPT <rfc822;gj@pointblue.com.pl>);
	Tue, 25 Jan 2005 12:42:16 -0500
Received: (majordomo@vger.kernel.org) by vger.kernel.org id S262032AbVAYRmP
	(ORCPT <rfc822;linux-kernel-outgoing>);
	Tue, 25 Jan 2005 12:42:15 -0500
Received: from v6.netlin.pl ([62.121.136.6]:12806 "EHLO pointblue.com.pl")
	by vger.kernel.org with ESMTP id S262029AbVAYRl6 (ORCPT
	<rfc822;linux-kernel@vger.kernel.org>);
	Tue, 25 Jan 2005 12:41:58 -0500
Received: by pointblue.com.pl (Postfix, from userid 65534)
	id 84C081AA; Tue, 25 Jan 2005 18:41:56 +0100 (CET)
Received: from [10.0.0.43] (bqw168.neoplus.adsl.tpnet.pl [83.29.90.168])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by pointblue.com.pl (Postfix) with ESMTP id 056F225A
	for <linux-kernel@vger.kernel.org>; Tue, 25 Jan 2005 18:41:33 +0100 (CET)
Message-ID: <41F68473.8080705@pointblue.com.pl>
Date: Tue, 25 Jan 2005 18:40:03 +0100
From: Grzegorz Piotr Jaskiewicz <gj@pointblue.com.pl>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20050105 Debian/1.7.5-1
X-Accept-Language: en
MIME-Version: 1.0
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: swap is never used on ultrasparc64/32 - 2.6.11-rc2 (STILL NOT
 SOLVED)
References: <41F65F1E.3070504@pointblue.com.pl>
In-Reply-To: <41F65F1E.3070504@pointblue.com.pl>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Sender: linux-kernel-owner@vger.kernel.org
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-Spam-Checker-Version: SpamAssassin 3.0.2 (2004-11-16) on pointblue.com.pl
X-Spam-Status: No, score=-2.1 required=6.0 tests=AWL,BAYES_00 autolearn=ham 
	version=3.0.2
X-Spam-Level: 

Odd, see this:


[root@smark root]# cat /proc/meminfo
MemTotal:       123496 kB
MemFree:         61104 kB
Buffers:          6776 kB
Cached:          16752 kB
SwapCached:          0 kB
Active:          36280 kB
Inactive:        11824 kB
HighTotal:           0 kB
HighFree:            0 kB
LowTotal:       123496 kB
LowFree:         61104 kB
SwapTotal:      127984 kB
SwapFree:       127984 kB
Dirty:             360 kB
Writeback:          48 kB
Mapped:       18446744073652757328 kB
Slab:             6912 kB
CommitLimit:    189728 kB
Committed_AS:    46032 kB
PageTables:        952 kB
VmallocTotal:  3145728 kB
VmallocUsed:      1520 kB
VmallocChunk:  3144176 kB
HugePages_Total:     0
HugePages_Free:      0
Hugepagesize:      512 kB


Grzegorz Piotr Jaskiewicz wrote:
> I've 2.6.11-rc2 sparc64 kernel, userland is 32bits.
> 
> I was compiling few things, fired up firefox, and kaboom. No memory.
> 
> Meanwhile, I runned swapoff -a, mkswap -v1 /dev/hda2 , swapon -a, and 
> tried to replace swap partition with swap file, which didn't worked either.
> Here's dmesg:
> 
> oom-killer: gfp_mask=0x1d2
> DMA per-cpu:
> cpu 0 hot: low 6, high 18, batch 3
> cpu 0 cold: low 0, high 6, batch 3
> Normal per-cpu: empty
> HighMem per-cpu: empty
> 
> Free pages:        3520kB (0kB HighMem)
> Active:28 inactive:13023 dirty:0 writeback:0 unstable:0 free:440 
> slab:908 mapped:18446744073704443093 pagetables:167
> DMA free:3520kB min:1408kB low:1760kB high:2112kB active:224kB 
> inactive:104184kB present:125192kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> Normal free:0kB min:0kB low:0kB high:0kB active:0kB inactive:0kB 
> present:0kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> HighMem free:0kB min:256kB low:320kB high:384kB active:0kB inactive:0kB 
> present:0kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> DMA: 240*8kB 14*16kB 1*32kB 1*64kB 2*128kB 2*256kB 1*512kB 0*1024kB 
> 0*2048kB 0*4096kB 0*8192kB = 3520kB
> Normal: empty
> HighMem: empty
> Swap cache: add 310, delete 310, find 41/50, race 0+0
> Out of Memory: Killed process 15926 (mozilla-bin).
> Out of Memory: Killed process 15923 (mozilla-bin).
> Out of Memory: Killed process 15927 (mozilla-bin).
> Out of Memory: Killed process 15931 (mozilla-bin).
> ioctl32(esd:16474): Unknown cmd fd(10) cmd(40045500){00} arg(efffe35c) 
> on /dev/snd/controlC0
> oom-killer: gfp_mask=0x1d2
> DMA per-cpu:
> cpu 0 hot: low 6, high 18, batch 3
> cpu 0 cold: low 0, high 6, batch 3
> Normal per-cpu: empty
> HighMem per-cpu: empty
> 
> Free pages:        2312kB (0kB HighMem)
> Active:14 inactive:13186 dirty:0 writeback:0 unstable:0 free:289 
> slab:895 mapped:18446744073704347582 pagetables:161
> DMA free:2312kB min:1408kB low:1760kB high:2112kB active:112kB 
> inactive:105488kB present:125192kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> Normal free:0kB min:0kB low:0kB high:0kB active:0kB inactive:0kB 
> present:0kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> HighMem free:0kB min:256kB low:320kB high:384kB active:0kB inactive:0kB 
> present:0kB pages_scanned:0 all_unreclaimable? no
> protections[]: 0 0 0
> DMA: 95*8kB 11*16kB 1*32kB 1*64kB 2*128kB 2*256kB 1*512kB 0*1024kB 
> 0*2048kB 0*4096kB 0*8192kB = 2312kB
> Normal: empty
> HighMem: empty
> Swap cache: add 310, delete 310, find 41/50, race 0+0
> Out of Memory: Killed process 16456 (firefox-bin).
> Out of Memory: Killed process 16450 (firefox-bin).
> Out of Memory: Killed process 16457 (firefox-bin).
> Out of Memory: Killed process 16461 (firefox-bin).
> Adding 249936k swap on /dev/hda2.  Priority:-2 extents:1
> ioctl32(esd:16742): Unknown cmd fd(10) cmd(40045500){00} arg(efffe35c) 
> on /dev/snd/controlC0
> Adding 127984k swap on /swap.  Priority:-3 extents:5
> 
> 
> 
> top shows that swap memory is present, but it never get used.
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at  http://www.tux.org/lkml/

--------------090600040301030005090005--
