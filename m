From: Thunder from the hill <thunder@ngforever.de>
Date: Sat, 13 Jul 2002 02:26:49 +0000
Subject: Lots of outdated LVM stuff in the kernel...
Message-Id: <marc-linux-ultrasparc-102652722717369@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

In arch/sparc64/kernel/ioctl32.c (and some other 64-bit architectures), we 
find lots of old and broken LVM code, for example:

static void put_lv_t(lv_t *l)
{
        if (l->lv_current_pe) vfree(l->lv_current_pe);
        if (l->lv_block_exception) vfree(l->lv_block_exception);
        kfree(l);
}

lv_t doesn't have lv_current_pe and lv_block_exception any more for ages. 
The code should either be updated or removed completely.

Wondering why I'm hitting this all? I'm currently doing make allmodconfig 
(kbuild-2.5) on a sparc64...

							Regards,
							Thunder
-- 
(Use http://www.ebb.org/ungeek if you can't decode)
------BEGIN GEEK CODE BLOCK------
Version: 3.12
GCS/E/G/S/AT d- s++:-- a? C++$ ULAVHI++++$ P++$ L++++(+++++)$ E W-$
N--- o?  K? w-- O- M V$ PS+ PE- Y- PGP+ t+ 5+ X+ R- !tv b++ DI? !D G
e++++ h* r--- y- 
------END GEEK CODE BLOCK------

