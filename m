From: Svante Sormark <svinto@ita.chalmers.se>
Date: Mon, 16 Nov 1998 13:42:22 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91124876913037@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Thu, 5 Nov 1998, Jakub Jelinek wrote:

>Can you tell me those some addresses and some other addresses? How much
>memory do you have? What size is your /boot/initrd*.img (provided you get
>tftprescue.img working - see below).

initrd overwritten (0xfffff800509c4000 < 0xfffff8005162a000) - disabling
it.
Memory: 256296k available (1304k kernel code, 3688k data, 128k init)
[fffff80000000000,fffff80073f4c000]

initrd-2.1.126.img: 212428

is that enough?


>Grab the most recent tftprescue.img, it should not fail horribly (I assume
>you don't have it, as it should not print the copy messages).
>

you're right, it works great.
