From: "David S. Miller" <davem@davemloft.net>
Date: Tue, 28 Jun 2005 22:42:44 +0000
Subject: Re: Looking Linux for Sun Enterprise 6900 (UltraSPARC-IV)
Message-Id: <20050628.154244.55845759.davem@davemloft.net>
List-Id: <ultralinux.vger.kernel.org>
References: <42C1D040.4030608@Sun.COM>
In-Reply-To: <42C1D040.4030608@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

From: Juan Gamboa <Juan.Gamboa@Sun.COM>
Date: Tue, 28 Jun 2005 18:33:36 -0400

> I need to know if your Linux Distribution supports E6900 with
> UltraSPARC-IV cpu.
> 
> If you have an affirmative answer please send me information ASAP.

I've added support to the current kernels, but it is totally
untested since I lack any access to such systems or cpus.

Systems with mixed UltraSPARC-III and UltraSPARC-IV cpus
definitely does not work.  Currently, if the kernel sees
an UltraSPARC-IV cpu, it assumes all cpus have the capabilities
that UltraSPARC-III+ and later cpus have.

If you want support to work and be tested, send me a test
machine so that I can do this.
