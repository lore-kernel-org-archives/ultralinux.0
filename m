From: "David S. Miller" <davem@redhat.com>
Date: Fri, 30 Nov 2001 22:29:25 +0000
Subject: Re: openssh 3.0.1 rpm for sparc (redhat 6.x)
Message-Id: <marc-linux-ultrasparc-100715958517222@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-100679315520732@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-100679315520732@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

   From: "Stephan van Hienen" <ddx@a2000.nu>
   Date: Fri, 30 Nov 2001 16:06:12 +0100

   > Run "sparc32 bash" before building the rpm.
   
   Thnx, that fixed the problem
   
   P.s. why can I rebuild a lot of src.rpms witouth this ?

Because we lack a 64-bit build environement on many distributions.
