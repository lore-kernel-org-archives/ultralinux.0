From: "R. Marc" <rmarc@dimension.net>
Date: Mon, 11 May 1998 20:14:20 +0000
Subject: Mysql on UltraPenguin
Message-Id: <marc-linux-ultrasparc-90222356531003@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

If anyone might have a pointer for me on this issue, I'd appreciate it.

I've got UltraPenguin-1.0.9 with the latest updates running on a Ultra 1 in 
hopes of replacing solaris in my network.  It does almost everything I 
require of it but run Mysqld for me.

I've compiled it with mit-threads and it compiles without error (much
better than previous releases of UltraPenguin where the compile crapped
out on the perl modules).  The client now runs --WooHoo!-- but the server 
seg. faults immediately.

If I compile it using linuxthreads the client doesn't work.

I'm currently in the process of trying to get it to tell me exactly where
it's failing, but I thought I'd see if anybody here with more experience than
I would have an idea where to start looking.

I'm using the latest distribution of mysql (3.21.30).

R. Marc
