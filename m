From: Juergen Kreileder <kreilede@issan.cs.uni-dortmund.de>
Date: Sat, 28 Nov 1998 19:55:58 +0000
Subject: Re: UltraPengiun 1.0.9 on Ultra 60
Message-Id: <marc-linux-ultrasparc-91233566326276@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-91220254914659@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-91220254914659@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>>>>> David S Miller writes:

    David>    Date: 	Fri, 27 Nov 1998 18:30:17 -0500 (EST)
    David>    From: Derrick J Brashear <shadow@DEMENTIA.ORG>

    >> * autofs doesn't work, first there was an syntax error in
    >> /etc/rc.d/init.d/autofs, and now automount hangs while trying
    >> to mounting file systems

    David>    It's an easy fix, as I recall, either involves replacing {} with []
    David>    or a semicolon, I don't recall which.

    David> There is more involved, only recent Linux kernels have the fixed
    David> autofs types for sparc, if you recall there was a problem in that
    David> autofs talks over a pipe using a specific protocol with the userspace
    David> program.  The 32-bit types in sparc32 userspace were not translated
    David> properly in this case on sparc64, poof.

Yup, it works with the current CVS kernel.
Thanks,

        Juergen

-- 
Juergen Kreileder, Universitaet Dortmund, Lehrstuhl Informatik V
Baroper Strasse 301, D-44221 Dortmund, Germany
Phone: ++49 231/755-5806, Fax: ++49 231/755-5802
