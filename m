From: Svante Sormark <svinto@ita.chalmers.se>
Date: Mon, 16 Nov 1998 13:49:14 +0000
Subject: Re: ultrapenguin-1.0.9 on ultra30
Message-Id: <marc-linux-ultrasparc-91125068314116@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91029286902028@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91029286902028@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


On Fri, 6 Nov 1998, Jakub Jelinek wrote:

>Further question: can you on the SILO prompt do the following:
>type
>
>xxdebug ENTER
>
>then
>
>cd /virtual-memory
>.properties
>cd /memory
>.properties
>
>and tell me from virtual-memory's properties how does the last line of
>translations look like (it should be something like 
>00000000.00002000.00000000.XXXXXXXX.800000000.00002XXX or similar (the first
>two numbers are virtual address and I'm interested in the lowest one - I
>need to know the X numbers).

this is the last line from translations:
00000000 00002000 00000000 009fe000 80000000 50002036

>>From memory's properties if you could type all the reg: numbers.
>

reg                      00000000 50000000 00000000 08000000 
                         00000000 60000000 00000000 04000000 
                         00000000 70000000 00000000 04000000 


>Thanks for your cooperation. If I get those info (and the one I asked in the
>last mail), then I can fix SILO...
>

hope this helps, and thank you for the great work.

/svante
