From: Alberto Brealey <beto@alpha.ulatina.ac.cr>
Date: Wed, 29 Jul 1998 18:51:21 +0000
Subject: bad CVS kernel...
Message-Id: <marc-linux-ultrasparc-90222358531098@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org



just downloaded CVS image, and i found some errors in the
linux/drivers/video/atyfb.c file:

around line 1002...

	<---snip---->

    xoffset = var->xoffset;
    yoffset = var->yoffset;
      pixel retrieving attributes */
    
				^^^^^^ where does this comment start?

    aty_st_le32(SRC_CNTL, SRC_LIt = var->right_margin;
			  ^^^^^^^^ undeclared const, var... 

	      ^^^ they are never closed, function aty_st_le32() accepts
three arguments.... there's only two.

    upper = var->upper_margin;
    lower = var->lower_margin;
    hslen = var->hsync_len;

	<---snip---->

hope this helps

alberto
