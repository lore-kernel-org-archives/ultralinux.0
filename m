From: Daz <daz@undertaker.homeip.net>
Date: Thu, 25 Jan 2001 07:33:10 +0000
Subject: Ultra4000 and kernel 2.4.0
Message-Id: <marc-linux-ultrasparc-98043007617176@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

I have installed redhat 62 on my smp ultra4000.  I needed to recompile the
kernel to get my soc drivers working (I had older firmware).  I managed to
extract (I believe) the firmware, and compile the kernel.  Unfortunately,
when I reboot to use the new kenrel (2.4.0 and 2.4.0ac9), I get this
error:

Remapping the kernel....done
Booting Linux...
sbus_apply_ranges: cannot find matching range nregs[1] nranges[3]
Program Terminated.



I have recompiled this kernel 15 times with smp trying different
settings.  I have
recompiled it 5 times specifying non-smp.  The same error every time.

I can boot with uni-and smp-kernels that come with rh6.2.

For the life of me, I cant figure out why this is happening.


Anyone have any ideas?

Thanks
David
-- 
"I find your lack of faith disturbing."
--Darth Vader

-
To unsubscribe from this list: send the line "unsubscribe sparclinux" in
the body of a message to majordomo@vger.kernel.org


-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
