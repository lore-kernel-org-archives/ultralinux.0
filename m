From: "Holzrichter, Bruce" <bruce.holzrichter@monster.com>
Date: Wed, 20 Feb 2002 19:27:28 +0000
Subject: RE: 2.5.5 on Sparc, Ughh...
Message-Id: <marc-linux-ultrasparc-101423344320400@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-101422154814029@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-101422154814029@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

> You can start out with the below to fix things correctly.  The only
> unhandled thing is the pte_offset stuff and I'll work on that some time
> later today.

Thanks Dave,

I finally had the chance to try out your changes.  That pesky work thing
keeps getting in my way.  So far so good, from a clean tree, they apply
fine, and fix all the other issues up to the pte_offset issues in filemap.c.
If you get to them, shoot me a copy and I'll apply and test for you.

 I see alot of warnings still from flush_dcache_page in
/include/linux/highmem.h and it looks like a duplicate declaration in
/asm-sparc64/pgalloc.h, but I have not had the chance to check that out yet.
I'll try to follow it up if you haven't seen that one yet.

On a side note, though not arch specific, if you use ramdisk, you'll need to
apply the patch below that removes second argument to bi_end_io that was
removed earlier in the series.  I have seen a patch floating around,
hopefully it will get pushed up the chain.

Thanks again for your help!
Bruce H.

--- drivers/block/rd.c.old	Wed Feb 20 14:20:53 2002
+++ drivers/block/rd.c	Wed Feb 20 12:42:52 2002
@@ -268,7 +268,7 @@
 		goto fail;
 
 	set_bit(BIO_UPTODATE, &sbh->bi_flags);
-	sbh->bi_end_io(sbh, len >> 9);
+	sbh->bi_end_io(sbh);
 	return 0;
  fail:
 	bio_io_error(sbh)

