From: Derrick J Brashear <shadow@DEMENTIA.ORG>
Date: Mon, 14 Sep 1998 19:22:36 +0000
Subject: Re: MAJOR 1.09 problem!!!!!!
Message-Id: <marc-linux-ultrasparc-90580925905191@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-90564416421025@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-90564416421025@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

>  > Boot Device: disk:b  File and args:
>  > The File just loaded does not appear to be executable.
>  > 
>  > Tries that twice, then comes to an OK prompt

setenv boot-device disk
at the prom (ok) prompt 
might help

-D
