From: "Durantez, Marc" <durantez@is.s.u-tokyo.ac.jp>
Date: Wed, 14 Apr 1999 07:11:42 +0000
Subject: Re: Accessing an arbitrary user space from a module
Message-Id: <marc-linux-ultrasparc-92407426618643@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92406432012725@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92406432012725@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


>    First case: I am not at interrupt time but I am in the context of
>    another process like a deamon or whatever.
> 
> copy_to_user(user_pointer, kernel_pointer, size);

Should I understand that copy_to_user and the other functions of uaccess.h allow
to access the memory of any user task? I thougth they accessed only the
'current' task's memory space... :-(
