From: Eric <ebrower@usa.net>
Date: Mon, 20 Nov 2000 14:37:29 +0000
Subject: Any CP1400 users?
Message-Id: <marc-linux-ultrasparc-97475979806524@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hey everyone, 
If you have access to a CP1400 I would greatly appreciate it
if you could run the following OBP commands and email me 
privately with the results-- I don't need results from the
CP1500, just the 1400.

If you can help me out, please be sure that the 'watchdog-enable?'
option returns false.  If not, please set it to 'false' and reset
prior to running the following commands:

  .version
  1fff1200030 15 spacec?
  5 1fff1200030 15 spacec!
  1fff1200030 15 spacec?

Thanks in advance!
E

 

____________________________________________________________________
Get free email and a permanent address at http://www.netaddress.com/?N=1
-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
