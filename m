From: Kris Boulez <kris@belbone.be>
Date: Mon, 18 May 1998 15:53:48 +0000
Subject: Re: List archives ?
Message-Id: <marc-linux-ultrasparc-90222356531049@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90222356531047@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90222356531047@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Quoting Jakub Jelinek (jj@sunsite.ms.mff.cuni.cz):

[ description of outstanding bugs deleted]

> If it is any other bug, let us know.
> 
In trying to compile ssh-1.2.22 I get the following

[root@t123 ssh-1.2.22]# make 
gcc -pipe -c -I.  -I./gmp-2.0.2-ssh-2 -I./zlib-1.0.4 -DHAVE_CONFIG_H  -DHOST_KEY_FILE=\"/etc/ssh_host_key\" -DHOST_CONFIG_FILE=\"/etc/ssh_config\" -DSERVER_CONFIG_FILE=\"/etc/sshd_config\" -DSSH_PROGRAM=\"/usr/local/bin/ssh\" -DETCDIR=\"/etc\" -DPIDDIR=\"/var/run\" -DSSH_BINDIR=\"/usr/local/bin\" -DTIS_MAP_FILE=\"/etc/sshd_tis.map\" -g -O2 -I/usr/X11R6/include ssh.c
ssh.c: In function `main':
ssh.c:389: storage size of `ws' isn't known
ssh.c:865: `TIOCGWINSZ' undeclared (first use this function)
ssh.c:865: (Each undeclared identifier is reported only once
ssh.c:865: for each function it appears in.)
make: *** [ssh.o] Error 1

Trying to use sparc64-linux-gcc (what is it and why is it hidden in
/usr/local/bin) didn't seem to solve the problem neither.


Another problem I seem to have is with X. Every time another window
gets the focus the screen 'blinks' (getting completely blank and coming
back up). This is very annoying to say the least, not to say unworkable.


Kris,
-- 
Kris Boulez				kris@belbone.be
