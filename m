From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sun, 27 Sep 1998 05:24:10 +0000
Subject: Re: sparc32 2.1.121 problems
Message-Id: <marc-linux-ultrasparc-90687365520034@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90682217607462@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90682217607462@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Sat, 26 Sep 1998, Derrick J Brashear wrote:

> with a recipe to reproduce, but i can make release *not* get closed when
> it should; i just modprobe amd7930, lsmod (to see normal usage), dd an au
> file to /dev/audio, and then lose. the device claims to still be open,
> e.g. release never called, and hence subsequent open attempts lose.

about time for bed, and i got sidetracked with other things (problems with
roof, plaster, and wall board, mostly) but I rebooted back into 2.1.99 and
had same problem, but this time i verified it easily.

[root@magnetbox ~]# modprobe amd7930
[root@magnetbox ~]# lsmod
Module                  Size  Used by
amd7930                 8092   0  (unused)
audio                   9612   1  [amd7930]
[root@magnetbox ~]# audioctl -a
name=SUNW,am79c30
...
record.errors=0
[root@magnetbox ~]# lsmod
Module                  Size  Used by
amd7930                 8092   0  (unused)
audio                   9612   2  [amd7930]

bing! subsequeunt opens of the audioctl device fail the same way, but
shouldn't: 
static int sparcaudioctl_release(struct inode * inode, struct file * file)
{
        MOD_DEC_USE_COUNT;
...

more tomorrow
-D
