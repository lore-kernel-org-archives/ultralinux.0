From: Keith Owens <kaos@ocs.com.au>
Date: Sun, 17 Mar 2002 01:17:59 +0000
Subject: Re: Troubles booting sparc64 SMP 2.4.18 kernel
Message-Id: <marc-linux-ultrasparc-101632805625573@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101632405919252@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101632405919252@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sun, 17 Mar 2002 11:11:32 +1100, 
Erik de Castro Lopo <nospam@mega-nerd.com> wrote:
>If I then take the working uni-processor kernel tree, switch
>on SMP support and then do 
>
>    make dep ; make clean ; make ; make modules ; 
>    make modules_install

You must make mrproper after switching SMP on/off.  Kernel build 2.4
does not correctly rebuild after changing CONFIG_SMP.

