From: Ong Lon Voon <rarf@ddns.org>
Date: Tue, 15 Dec 1998 04:46:55 +0000
Subject: UltraSparc 10 Clone with Qlogic SCSI
Message-Id: <marc-linux-ultrasparc-91370717917495@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hi,

Has anyone any success with this? It seems to be unsupported on the
Supported Hardware list...

On booting, no SCSI devices are found.

Tried on an ultrasparc 2 clone too, but it could not mount the root
filesystem at 0b:00. Any ideas? The cdrom is id 6 on the primary SCSI
channel, and is recognised. Tried "linux root=/dev/sr0", but it didn't
work too.

TIA!

N.B. Sorry if these are stupid questions. It's my first forays in
ultrapenguin.

--
Ong Lon Voon                          Webworks Pte Ltd
rarf@ddns.org                         103A, Geylang Road
Engineering                           Singapore 389212

http://www.ddns.org                   Tel: (+65)  741-9526
Sales: sales@ddns.org                 Fax: (+65)  749-3806
Tech : tech@ddns.org                  Pgr:       9417-5680
Info : info@ddns.org                  GSM: (+65) 9677-6445
