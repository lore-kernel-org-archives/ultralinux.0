From: Gerard Roudier <groudier@club-internet.fr>
Date: Sat, 14 Aug 1999 21:52:49 +0000
Subject: Re: FIXED (was Re: Problems with NEW PATCH: ncr/sym drivers and bridges)
Message-Id: <marc-linux-ultrasparc-93466756814867@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93420530614874@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93420530614874@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org



On Mon, 9 Aug 1999, David S. Miller wrote:

> All of this PCI write posting mumbo turned out to have nothing at all
> to do with the UltraSparc crashes on AXi systems with NCR scsi
> controllers, absolutely nothing.

I am not surprised. ;)

> I have fixed the bug, the issue is that something about some component
> of these AXi systems (be it the CPU fabs, the memory SIMMS being used,
> whatever) is causing correctable ECC errors at the CPU (note the word
> correctable).
>=20
> Turns out our trap handler for this condition is as good as
> unimplemented (ie. it's wrong) and this is what led to the resets in
> the end.  The following is the workaround which will be in Linux
> 2.2.11
>=20
> I'm going to run some more tests/logging to see if I can figure out
> what the precise source of these ECC errors are, perhaps bad SIMMS,
> overheating CPU (yes, I know the temperature sensors in this box would
> show this), who knows.
>=20
> At any rate, with the fix below I can no longer reproduce problems
> on Ultra/AXi using APB revision 1.3 + NCR scsi Ultra/AXi.

This does not demonstrate that everything is actually safe regarding PCI
posted writes and flushing for some (most?) Linux PCI device drivers when
they are running on your Sparc machine.

> [ I am going to gloat for a moment, and note to everyone involved in
>   this thread how at the beginning I warned everyone not to jump to
>   any particular conclusion about the cause of this bug... Instead
>   of heeding my words, about a week of in-depth discussion about PCI
>   write posting rules ensued, and this did nothing to fix the bug.
>=20
>   It did nothing because everyone assumed from the beginning that
>   the bug had something to do with some PCI non-compliance of Sun's
>   bridges or whatever, so everyone wanted to point fingers, and work
>   on a fix/workaround before we were sure of what the problem was in
>   the first place!  8-) ]

Re-read my postings if you still have them and you will know of the
reasons some (most?) Linux PCI device drivers are just lucky with some
bridges we know about, and very probably some others ...

Btw, I discovered that all my fingers and toes are probably not enough to
point to all HOST-PCI bridges that may make problems, by _design_, when
correct PCI device drivers are used. ;-)

Note, that, when we know about how these beasts are supposed to work, it
does not seem that hard to deal with their supposed features. ;)

G=E9rard.

[ patch removed ]
