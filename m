From: <pau@readysoft.es>
Date: Tue, 28 Sep 1999 18:13:46 +0000
Subject: Re: 2.2.13pre8 on Ultra still crashing
Message-Id: <marc-linux-ultrasparc-93854395400750@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93790194403208@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93790194403208@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

On Tue, 28 Sep 1999, David S. Miller wrote:

>    Date:   Tue, 21 Sep 1999 10:24:06 +0200 (CEST)
>    From: <pau@readysoft.es>
> 
>    I attach a new log -ksymoops- caught through the serial console, of
>    an Ultra Axi PCI machine hanging.
> 
>    I don't know if it'll be enough or if I miss something; if that's
>    the case, could you please tell me how to setup syslogd to log
>    these messages to the console?
> 
> Ok, I've been staring at these messages for quite some time.
> I'm stumped for the moment, it's always dieing in fput() with
> a completely corrupted stack (it's been totally zero'd)
> 
> What do you run on this machine?  Lots of POP and other mail daemons?
> Any weird networking things enabled such as IP Masquerading or
> appletalk, things like this?

I'm running a qmail pop3 server that includes delivery to mailboxes, a
pop3 proxy and yhe qmail popper itself.

I've got quite a few symoops from these last days. If you need them I can
send them again. Meanwhile I'll unncomment kern.* in syslogd to get more
input.

> Finally, what does your syslogd.conf look like?

Here it is:

syslogd.conf

----------8<--------------8<----------8<-----------

# Log all kernel messages to the console.
# Logging much else clutters up the screen.
#kern.*                                                 /dev/console

# Log anything (except mail) of level info or higher.
# Don't log private authentication messages!
*.info;mail.none;authpriv.none                          /var/log/messages

# The authpriv file has restricted access.
authpriv.*                                              /var/log/secure

# Log all the mail messages in one place.
mail.*                                                  /var/log/maillog

# Everybody gets emergency messages, plus log them on another
# machine.
*.emerg                                                 *

# Save mail and news errors of level err and higher in a
# special file.
uucp,news.crit                                          /var/log/spooler

----------8<--------------8<----------8<-----------

Thanks for your help.
Pau
