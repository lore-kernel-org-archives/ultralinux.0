From: Peter Jones <pjones@redhat.com>
Date: Mon, 11 Sep 2000 13:59:26 +0000
Subject: Re: Need help with RedHat post install- sound, keyboard
Message-Id: <marc-linux-ultrasparc-96868058911162@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-96843062507029@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-96843062507029@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Fri, 8 Sep 2000, Edward J. Bradshaw wrote:

>     I just loaded Red Hat 6.2 on a Sparc Ultra60 and have just a few
> minor problems.
> 
> First - My audio works fine on the internal speaker but I can't figure
> out how to switch it over to the audio out on the back of the sytem.
> Under Solaris 2.6 you would go to the audio tool to switch this.

You want audioctl(1).

-- 
        Peter

Gravity is a habbit that is hard to shake off.
		-- Pratchett

-
To unsubscribe from this list: send the line "unsubscribe ultralinux" in
the body of a message to majordomo@vger.kernel.org
