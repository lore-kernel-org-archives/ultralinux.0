From: Gerold.Pauler@t-online.de (Gerold Pauler)
Date: Fri, 12 Jun 1998 16:15:20 +0000
Subject: Re: Solaris and Linux on one disk?
Message-Id: <marc-linux-ultrasparc-90222357631010@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222357630987@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222357630987@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Grant Beattie wrote:
> 
> Hi all,
> 
> Is it possible to have Solaris and Linux reside on the same disk and
> multiboot?

I use SunOS 4.1.2, Solaris 2.4 and Linux on both an IPC and a SS2.
I use the following configuration for /etc/silo.conf:

------->snip<-----
timeoutP
partition=5
root=/dev/sda5
image=/boot/vmlinux-2.0.27.gz
        label=linux
        root=/dev/sda5
        read-only
image=/boot/vmlinux-2.0.32.gz
        label=lin32
        root=/dev/sda5
        read-only
image=1/kernel/unix
        label=sol
        solaris
image=1/kernel/unix
        label=sol-single
        literal="-s"
        solaris
image=1/kernel/unix
        label=sol-conf
        literal="-r"
        solaris
other=4
        label=sun
image=sd()1/kernel/unix
        label=sol-ipc
        solaris
other=sd()4
        label=sun-ipc
------->snip<-----

One word to the mixed bootprom V0 and V2 entries.
I have one silo.conf for both machines.
And my IPC has a bootprom V0 whereas my SS2 has V2.
For the linux partition this does not matter but for SunOS and Solaris.

Of course you have to modify it for your needs.

> Also, does Ultralinux support the UFS file system? Would be nice if
> both OS's could share a partition, eg. /export.

As far as I know UFS is only supported read only.
And there is yet no ext2 support for Solaris.
So both OS's can NOT share a partition except the swap partition.

Hope this helps.
        Gerold


-- 
Gerold Pauler                                  Gerold.Pauler@t-online.de
Friedrich-Wilhelm-Str. 92
12099 Berlin
------------------------------------------------------------------------
