From: Svante Sormark <svinto@ita.chalmers.se>
Date: Mon, 16 Nov 1998 16:30:29 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91126542421812@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Mon, 16 Nov 1998, Jakub Jelinek wrote:

>Quick solution (requires a screwdriver): reposition your SIMMs to the other
>bank (check in the PROM then if the /memory reg property is something like
>
>	00000000.00000000.00000000.08000000
>	00000000.10000000.00000000.04000000
>	00000000.20000000.00000000.04000000
>
almost...

reg     00000000 50000000 00000000 08000000 
        00000000 60000000 00000000 04000000 
        00000000 70000000 00000000 04000000 

/svante
