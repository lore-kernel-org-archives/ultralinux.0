From: "David S. Miller" <davem@dm.cobaltmicro.com>
Date: Wed, 28 Oct 1998 05:23:03 +0000
Subject: Re: 1.09 on ultra10
Message-Id: <marc-linux-ultrasparc-90955978828789@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90955161325948@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90955161325948@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Tue, 27 Oct 1998 16:40:04 -0800 (PST)
   From: Jason Hayes <Jason.Hayes@Eng.Sun.COM>

   i've been trying to nfs install 1.0.9 on my ultra 10 for a while
   now, and keep hitting the same stumbling block.  the nfs boot image
   loads fine, i'm able to set up the minimal filesystems (just ide
   disks) where hda has a large native, moderate swap, and whole disk
   partitions, and hdb has just the large native and whole disk
   partitions.  i do get a warning about the large number of cylinders
   possibly affecting LILO.  i am able to continue through to the
   installation phase, although there is an error message about line
   220 of glib at some point.  the installation formats my partitions,
   and then, no matter how minimal i make my filesystems (ie, no nfs,
   no scsi, just the two ide disks), the install will fail with
   "invalid mount parameter" (not at the computer, paraphrase).

   any ideas?

I think you are setting up your partitions incorrectly with fdisk.

The best bet is to let the fdisk program setup the root disk
partitions for you in the default way, via the 's' option.

Try that.

   also, following your documentation, i believe i have seen that the
   onboard m64 will not be acceptable for X until the next release?
   if so, is the next release soon?

This card works perfectly fine and has for some months now.  I use it
every day.

Later,
David S. Miller
davem@dm.cobaltmicro.com
