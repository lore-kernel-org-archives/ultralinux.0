From: Edwin Kremer <edwin@cs.uu.nl>
Date: Fri, 16 Apr 1999 11:25:48 +0000
Subject: Re: dual-boot Ultra 5 after Solaris JumpStart ?
Message-Id: <marc-linux-ultrasparc-92426206507441@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92395702128895@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92395702128895@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

To followup on my own question being unable to dual-boot Solaris and Linux:

  : 	nvalias linux /pci@1f,0/pci@1,1/ide@3,0/disk@0,0:f
  : 
  : 	boot linux
  : 
  : Next I get:
  : 
  : 	SILO
  : 	fatal error: Unable to open filesystem
  : 	Couldn't load /etc/silo.conf


The Ultra 5 (333MHz) systems now ship with the Seagate Medalist ST39140A
diskdrive, a 9.1GB drive. In my setup, I had Linux root and usr at the
end of this drive, and it occured to me that this could be a
too-large-a-disk problem.

So I put the Linux partition more to the beginning of the drive and
re-installed with the netboot images as announced by Jakub last wednesday.

Now it works fine, but I'm still uncertain if this was really the source
of trouble...

In Solaris, the disk is: cyl 17660, alt 2, head 16, sec 63.
Linux says: CHS662/16/63 (8693 MB)


Best regards,

-- 
Edwin H. Kremer, senior systems- and network administrator.   <edwin@cs.uu.nl>
Dept. of Computer Science,  Utrecht University, The Netherlands  [WHOIS: ehk3]
-------------------- http://www.cs.uu.nl/people/edwin/ -----------------------
