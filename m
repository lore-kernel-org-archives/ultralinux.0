From: brandoo@globe.net.nz
Date: Mon, 21 Oct 2002 03:40:24 +0000
Subject: Quota Problems
Message-Id: <marc-linux-ultrasparc-103517160809006@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hello, 

I'm having problems using Quotas on a Sparc Ultra Server 1 (Debian Woody with 
Kernel 2.4.19 [VFS: Diskquotas version dquot_6.4.0 initialized]) 

I've got the Quota package installed: 
ii  quota          3.07-1         An implementation of the disk quota system. 

And the quota.user file exists in the root path of the mount I wish to enable 
quotas (/home -> /dev/sdb1). 

No matter how I create the quota.user (quotacheck -a, quotacheck -aF vfsold, 
quotacheck -aFvfsv0), whenever quotaon is run, I get the following message: 

quotaon: using /home/quota.user on /dev/sdb1 [/home]: 
Invalid argument quotaon: Maybe create new quota files with quotacheck(8)? 

Has anyone else had issues with Quotas on a SPARC ? 

I've just tried setting up quotas on an i386 the same way as I'm trying to 
install on the SPARC, and it all works perfectly... 

Any info/help appreciated 

Regards 

John 

-------------------------------------------------
This mail sent through IMP: http://horde.org/imp/
