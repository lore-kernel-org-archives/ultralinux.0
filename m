From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Sun, 20 Sep 1998 19:50:54 +0000
Subject: init script "bugs"
Message-Id: <marc-linux-ultrasparc-90633488926965@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Found two of these, if anyone cares:
a) /etc/rc.d/init.d/bootparamd needs to source /etc/rc.d/init.d/functions
to get "daemon"
b) /etc/rc.d/init.d/autofs needs {} replaced with () in the TMP1=, TMP2lines

Enjoy
-D
