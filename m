From: Frederic Corne <fcorne@club-internet.fr>
Date: Fri, 05 Jun 1998 18:22:01 +0000
Subject: Re: Solaris and Linux on one disk?
Message-Id: <marc-linux-ultrasparc-90222357630990@msgid-missing>
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
> 

yes.

Very important : See the Silo readme in /usr/doc the boot partitions of both
Solaris and Linux must be on the same first 1Go of the disk. because there is
a bug in eprom.
So you must have 
/dev/sda1 450mo -> solaris /
/dev/sda2 450mo -> linux /
/dev/sda3 xxxxMo -> solaris /usr
/dev/sdaYY xxxxMo -> solaris or linux  /usr local home or other

install solaris first, and ask for a second partition /linux than install
linux : reformat this partition and install it.
than configure silo

> Also, does Ultralinux support the UFS file system? Would be nice if
> both OS's could share a partition, eg. /export.

No problem :

mount -t ufs /dev/sdxx /export

FC
