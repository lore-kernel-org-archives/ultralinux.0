From: "Dale B" <d_a_l_e_@hotmail.com>
Date: Wed, 14 Apr 1999 18:51:03 +0000
Subject: HME on ultrasparc
Message-Id: <marc-linux-ultrasparc-92413396908580@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

This is probably an easy question, but I have as of yet to find an 
answer.  I have an UltraSparc 2 2x200mhz and it contains an onboard 
ethernet interface.  It is a Tatung clone, and is reported as HME by 
both solaris and the newly installed UltraPenguin 1.1.9 (1.2?).

The thing is, the ethernet interface crashes a lot, and only runs at 
half duplex.  I'm sure the switch is capable of full duplex, as other 
intel/sparc machines can do full duplex.  It reports failing 
autodetection, and falls back on 100MB/ half duplex.

Is there a way to force 100MB Full Duplex?  I'm not sure about the 
ethernet hanging, but believe it has to do with the mode on the HME 
adapter.

_______________________________________________________________
Get Free Email and Do More On The Web. Visit http://www.msn.com
