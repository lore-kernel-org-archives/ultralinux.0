From: Gerald McLarnon <mclarnon@atm.ox.ac.uk>
Date: Mon, 08 Jun 1998 09:17:11 +0000
Subject: Problems with UP1.0.9 on SS5/70
Message-Id: <marc-linux-ultrasparc-90222357630994@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi

I'm having some installation problems with UP1.0.9 on a SS5/70, 16Mb.
I have tried two different (and previously working under 4.1.3_U1) disks.

I tried both an NFS and a FTP install with minimal configuration (nothing
except networking [1]). On my most recent attempt as the RPMS are loading
the GUI install bombs out a few packages into the install. No errors on
any of the other virtual consoles. A redhat 4.2 install doesn't even
get as far as loading the base system.

Has anyone had any more luck than me with this [2] or is there more
information I could supply to help diagnose this problem? 

Thanks a lot,

- Gerald

[1]  The install complains that kbd requires perl, BTW - I think there
     must be an error in the hdlist.

[2]  Please CC me any replies as I tend to read this list via list
     WWW archives rather than through subscription.
