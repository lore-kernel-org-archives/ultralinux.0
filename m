From: Kris Boulez <kris@belbone.be>
Date: Wed, 20 May 1998 12:03:59 +0000
Subject: Decompression error with silo and new kernel
Message-Id: <marc-linux-ultrasparc-90222356531054@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

After having installed the latest ultrapenguin release I wanted to
compile a new kernel. I couldn't find any (ultra)sparclinux specific
docs about this, so I used my Intel/PMac knowledge about Linux. I did 
the following

- make kernel as usual
- copy and gzip the resulting vmlinux file (tiens, it is not located somewhere 
  deep down in the arch hierarchy this time) to /boot
- edit /etc/silo.conf to add a new target
- reboot

I get the error "Decompression error: uncompressed image too large - 
		 wouldn't fit into destination"

/etc/silo.conf
timeoutP
partition=3
root=/dev/sda1
image=/boot/vmlinux-2.1.102
        label=linux102
        root=/dev/sda1
        read-only
image=/boot/vmlinux-2.1.99.gz
        label=linux
        root=/dev/sda1
        read-only

# ls -l /boot/vml*
-rwxr-xr-x   1 root     root       987827 May 20 08:31 /boot/vmlinux-2.1.102.gz
-rw-r--r--   1 root     root       938796 May  2 20:56 /boot/vmlinux-2.1.99.gz
-rw-r--r--   1 root     root       966315 May  2 21:20 /boot/vmlinux-smp-2.1.99.gz
lrwxrwxrwx   1 root     root           17 Feb 19 19:53 /boot/vmlinux.gz -> vmlinux-2.1.99.gz


Uncompressing the kernel by hand doesn't solve the problem : "Image too large
to fit in destination"

Kris,
-- 
Kris Boulez				kris@belbone.be
