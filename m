From: "David S. Miller" <davem@redhat.com>
Date: Tue, 13 Nov 2001 05:33:04 +0000
Subject: Re: libstdc++ bus errors
Message-Id: <marc-linux-ultrasparc-100562958724139@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100562646118090@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100562646118090@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: Jeff Sturm <jsturm@one-point.com>
   Date: Tue, 13 Nov 2001 01:29:09 -0500 (EST)

   Upgrading binutils to 2.11.2 doesn't solve the problem, because ld.so
   doesn't understand R_SPARC_UA32 relocations:
   
   ./a.out: error while loading shared libraries: /home/jsturm/junk.so:
   unexpected reloc type 0x17

Upgrade glibc, then binutils :-)  Current glibc understands
the UA32 relocs properly.

Franks a lot,
David S. Miller
davem@redhat.com
