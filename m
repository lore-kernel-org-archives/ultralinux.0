From: Peter Jones <pjones@redhat.com>
Date: Fri, 26 Mar 1999 04:52:33 +0000
Subject: Re: /usr/lib64
Message-Id: <marc-linux-ultrasparc-92242422523046@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-92239744703556@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-92239744703556@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

It isn't.  There's no 64-bit userland, and no 64-bit libraries.  The
kernel is all that runs in 64-bit mode.  

Now, having no 64-bit libraries, you don't really need a directory for
them... ;)

 -- Peter

"What does not destroy me, makes me stronger."
		-- Nietzsche

On Thu, 25 Mar 1999, Scott Michel wrote:

> This is probably a FAQ, but in which RPM or source is /usr/lib64
> contained?
> 
> 
> -- 
> Scott Michel                                      scottm@aero.org
> Member of Technical Staff, CSRD                   310/336-5034
> The Aerospace Corporation
> 
> 
