From: Edwin Kremer <edwin@cs.uu.nl>
Date: Thu, 12 Nov 1998 17:13:55 +0000
Subject: Re: no go on Ultra 10 ?
Message-Id: <marc-linux-ultrasparc-91089820119192@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91088532111774@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91088532111774@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Thu, Nov 12, 1998 at 04:21:10PM +0100, Jakub Jelinek wrote:

  : > appears and there's a blinking mouse pointer in the upper left corner
  : > of the screen. That's where it stops...
  : 
  : I guess your Mach64 is being used as the console and not Creator.

Direct hit; bulls-eye!

  : boot video=atyfb:off

This works very well. Installation (via NFS) went pretty smooth. I'm
deeply impressed! (598.02 BogoMIPS)

I learned something today! :-)

Best regards,

-- 
Edwin H. Kremer, systems- and network administrator.          <edwin@cs.uu.nl>
Dept. of Computer Science,  Utrecht University, The Netherlands  [WHOIS: ehk3]
-------------------- http://www.cs.uu.nl/people/edwin/ -----------------------
