From: Thierry Lafage <Thierry.Lafage@irisa.fr>
Date: Thu, 15 Oct 1998 12:37:22 +0000
Subject: Using gprof with ultrapenguin
Message-Id: <marc-linux-ultrasparc-90849828006596@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Hello,

Has anyone used `gprof' successfully under ultrapenguin-1.0.9?

I tried to, but at linking stage, ld does not find the library libgmon
("ld: cannot open -lgmon: No such file or directory").  I don't know
where I can find this library or how to modify gcc specs file.

Any help?

Thierry Lafage.
