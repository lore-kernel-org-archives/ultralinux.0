From: Stephan van Hienen <ddx@cable.a2000.nl>
Date: Thu, 14 May 1998 20:18:02 +0000
Subject: Re: 2 weird problems (second ide)
Message-Id: <marc-linux-ultrasparc-90222356531036@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531026@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531026@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, 14 May 1998, Eddie C. Dost wrote:

> > hda: dma_intr: status=0x51 { DriveReady SeekComplete Error }
> > hda: dma_intr: error=0x40 { UncorrectableError }, LBAsect1139,
> > sector1138
> > end_request: I/O error, dev 03:01 (ide), sector 131138
> > EXT2-fs error (device 03:01): ext2_read_inode: unable to read inode
> > block - inode496,
> > blocke569                                             
> 
> Did you run badblocks on this disk?
yes i did found nothing

> Does the sector/block number stay the same for these messages?
yes


also maybe have to do something with it :


[root@sun /root]# dmesg -c
[root@sun /root]# mkswap /dev/hda2     
Setting up swapspace, size = 52248576 bytes
[root@sun /root]# dmesg
sys32_ioctl: Unknown cmd fd(3) cmd(00001260) arg(effffcac)


> 
> 
> Eddie.
> ecd@skynet.be
> 
