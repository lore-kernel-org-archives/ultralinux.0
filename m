From: "Roger J. Allen" <rja@sis.rpslmc.edu>
Date: Fri, 08 Jan 1999 06:51:55 +0000
Subject: Re: New Year's changes in UltraPenguin 1.1.9 [testers welcome]
Message-Id: <marc-linux-ultrasparc-91587234805610@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91563809426749@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91563809426749@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Wed, 6 Jan 1999, Jakub Jelinek wrote:

> Hi!
> 
> UltraPenguin 1.1.9 has undergone following changes:
> 

> - SCSI Tape Install method: this is a shiny new installation method.
>   In images you have tapeboot.img, which you can just dd to a tape
>   and boot tape. But if you do that, you have to install off the network,
>   or local hd, or CD. But you can also use utils/maketape script (e.g.
> 
>   /ftp/ultrapenguin-1.1.9/sparc/utils/maketape /dev/nst0 /ftp/ultrapenguin-1.1.9/sparc/
> 
>   which will create a bootable tape with which you can then select
>   Local SCSI Tape install. I've tested it on SS20 with Sun DLT, but I hope
>   it will run elsewhere as well. I'm looking for feedback about this.

It looks like my tape drive needs a different block size.  The maketape
script is using dd without a block size, so I think it defaults to 512
bytes.  With the latest ultrapenguin 1.1.9 (2.2.0-pre4) on an Ultra1
170E and an Exabyte 8505XLE, "mt -f /dev/nst0 status" shows a tape block
size of 1024 bytes on a new tape.

When I ran maketape, I got an error like:

dd: /dev/nst0: Input/output error

After running "mt -f /dev/nst0 setblk 512", maketape was able to create
the tape.  It took about 130 minutes to finish.  Booting from tape was
ok until after it rewound the tape and tried to "Find installation
files".  Control-Alt-F4 showed:

<4>Detected scsi tape st0 at scsi0, channel 0, id 4, lun 0
<5>st0: Incorrect block size

Control-Alt-F3 had:

* running: /bin/insmod /bin/insmod /modules/st.o
* status fileno 0 blkno 0
* status fileno 1 blkno 0
* could not read from tape: Input/output error

After rebooting and changing the maketape dd commands to use "bs24",
it was not necessary to set the tape block size.  It only took 15
minutes to create the tape.  That tape was able to boot and upgrade
UP-1.1.9 (it upgraded basesystem-4.9).  It also was able to boot and
perform a complete install.

So, changing dd to use the same block size as the default for my
hardware was all that the maketape script needed.

I am guessing that the installation program rewinds the tape, but it
does not set the tape block size before it tries to "Find installation
files".  Maybe changing maketape to set the tape block size and also
changing the installation program to set the tape block size after
rewinding the tape would work if other tape drives have the same problem
as mine.

Another thing, while the maketape script doesn't cause errors under
Solaris 2.6, the xargs puts nine different copies of the three base
files interspersed thru the archive.  I don't know if this will mess up
the installation program, because that tape was using the 512 byte block
size.  The tape did boot, but could not "Find installation files".

-- 
Roger J. Allen                Rush-Presbyterian-St. Luke's Medical Center
System Administrator                                   Chicago,  IL   USA
Surgical Information Systems                       Voice:  (312)-942-4825
Internet: rja@sis.rpslmc.edu                         FAX:  (312)-733-6921
