From: Aric Hagberg <aric@t7.lanl.gov>
Date: Thu, 03 Dec 1998 02:19:49 +0000
Subject: no bootp request made?
Message-Id: <marc-linux-ultrasparc-91269733830271@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I'm trying to get my ultrapenguin machine to bootp
it's network information and having no sucess.

I have the kernel (2.1.126) configured 
CONFIG_IP_PNP=y
CONFIG_IP_PNP_BOOTP=y
# CONFIG_IP_PNP_RARP is not set
and
CONFIG_NFS_FS=y
CONFIG_ROOT_NFS=y

The machine sucessfully gets it's IP address from a rarp 
but doesn't seem to make a bootp request.
I get the error
IP-Config: Incomplete network configuration information
IP-Config: Auto-configuration of network failed
and then in bombs tyring to mount a nfs root filesystem.

I am fairly confident my bootp server is set up correctly
since I am booting two other Sparc5s this way (with a much
older sparc kernel).  And bootpd is not reporting that it
got a request.  Also no traffic on the network to that machine.

Does anyone have this working or can make a suggestion to debug it?

Aric
