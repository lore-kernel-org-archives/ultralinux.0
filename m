From: Kenneth Preslan <kpreslan@lcse.umn.edu>
Date: Tue, 07 Jul 1998 16:51:52 +0000
Subject: UltraPenguin109 + Ultra5 = GettingBetter
Message-Id: <marc-linux-ultrasparc-90222358531008@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Thanks to Jakub Jelinek's suggestion and David Andrew's OBP upgrade I have
2.1.106 booting ok on my Ultra 5.  It now panics looking for a root 
filesystem.

My new question is how do I package this new kernel together with a root
filesystem to install from.  The new kernel doesn't appear to be able
to do nfsroot, and it doesn't recognize the SCSI disk I attached to the
machine.

Any suggestions on what I should do next?

Thanks,

Ken
