From: Nanook <nanook@eskimo.com>
Date: Fri, 12 Dec 2003 01:06:04 +0000
Subject: Need help with st driver / 2.2.25
Message-Id: <marc-linux-ultrasparc-107119117613184@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


     I've got an Ultra-2 with one of the old Sun combo 10-base-T/narrow SCSI
S-bus cards in it connected to an Exabyte DN8500C drive.

     There are some options compiled in the driver located in the file:

	/usr/src/linux/drivers/scsi/st_options.h

     One of which is the buffer size in terms of 1k blocks:

	#define ST_BUFFER_BLOCKS 32

     With this default size, the machine is incapable of streaming the drive
during backups.  Also, I get lousy compression effeciency.

     I increased this to 256:

	#define ST_BUFFER_BLOCKS 256

     Built and booted a new kernel, and this did wonderful things for write
performance.  Now the machine was able to stream the drive (more than doubled
the speed), and I'm getting the 2:1 compression the vendor claimed, actually
sometimes more than that.

     So I thought life was good, until I attempted to read a tape, at which
point it panic'd the machine.

     I experiemented and found that anything larger than 64k panic'd the
machine when I tried to read a tape.  64k, did not panic the machine but any
attempt at reading a tape resulted in read errors.  If I booted back to the
kernel with the default 32k setting it's OK.

     The machine has a gigabyte of RAM so it's not starved for memory.  The
drive is the only thing on the narrow SCSI, so it's not competing with other
periphery.

     Does anybody know how I can get things to work stable and correctly with
the larger buffer?

