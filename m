From: "David S. Miller" <davem@redhat.com>
Date: Fri, 05 May 2000 18:37:27 +0000
Subject: Re: Oops with 2.2.14 on Ultra 1.
Message-Id: <marc-linux-ultrasparc-95755695816926@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-95754803607277@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-95754803607277@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   Date: 	Fri, 5 May 2000 19:57:54 +0300
   From: Antti Salmela <asalmela@iki.fi>

   This was non-fatal, but system has sometimes locked up hard.
   If any other info is need, just tell.

The following patch will fix this OOPS.  Thanks for the excellent
and detailed bug report.

--- arch/sparc64/mm/ultra.S.~1~	Fri Mar  3 15:50:46 2000
+++ arch/sparc64/mm/ultra.S	Fri May  5 11:16:03 2000
@@ -37,7 +37,7 @@
 		    */
 #define TLB_MAGIC	207 /* Students, do you know how I calculated this?  -DaveM */
 /*IC3*/	cmp		%o5, %o4
-	be,pt		%xcc, __flush_tlb_page
+	bleu,pt		%xcc, __flush_tlb_page
 	 srlx		%o5, 13, %g5
 	cmp		%g5, TLB_MAGIC
 	bgeu,pn		%icc, __flush_tlb_range_constant_time
