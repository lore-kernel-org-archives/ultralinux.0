From: Wesley Hosking <wes@atlantek.com.au>
Date: Fri, 05 Jun 1998 07:46:29 +0000
Subject: NFS Root image suitable for boot low memory machines
Message-Id: <marc-linux-ultrasparc-90222357630986@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Any instructions, FAQ on how to build these ?
I have a number of 12M and 16MB machines that I would like to try
the install and usage on, but I need information on how to create an
appropriate NFS directory :


ie: from the RH4.2 installation manual I have :

C.5.3.1 Network Boot Commands

You're now ready to boot. If you're going to boot tftpboot.img, simply use the following command (in
new command mode): 

       boot net

On the other hand, if you're going boot from vmlinux and use an NFS-mounted root, use this command: 

       boot net linux nfsroot=nfs.server.IP.address:/path/to/RH/image

Replace nfs.server.ip.address with the NFS server's IP address, and
/path/to/RH/image with the path to the exported directory containing the appropriate Red Hat
Linux/SPARC files. 

SPARC systems with PROM versions less than 2.0 should use this boot command, appending the usual
NFS root argument if required: 

       b le()


Any hints gratefully accepted.

wes
