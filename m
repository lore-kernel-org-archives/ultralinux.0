From: Eric Brower <ebrower@gmail.com>
Date: Thu, 24 Feb 2005 04:10:30 +0000
Subject: Re: [RFC/PATCH] envctrl framework and envctrltwo (UE250) driver
Message-Id: <ec7cefb05022320102bf4f6f2@mail.gmail.com>
MIME-Version: 1
Content-Type: multipart/mixed; boundary="----=_Part_1285_22905090.1109218230705"
List-Id: <ultralinux.vger.kernel.org>
References: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
In-Reply-To: <ec7cefb05022210074a5e4fe3@mail.gmail.com>
To: ultralinux@vger.kernel.org

------=_Part_1285_22905090.1109218230705
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I'm hesitant to provide a patch to a patch, but there was a tiny
buglet in how the Thermal Error LED was represented in sysfs.  A
patchlet is attached, but I can resend an entire new patch if
necessary.  There are probably a few others lurking in there... :)

E


On Tue, 22 Feb 2005 19:46:02 -0800, David S. Miller <davem@davemloft.net> wrote:
> On Tue, 22 Feb 2005 14:27:58 -0800
> Eric Brower <ebrower@gmail.com> wrote:
> 
> > DaveM, et. al,
> >
> > It occurred to me that we had spoken a long while back about
> > coalescing the logic for system LED blinking into one location (one
> > timer, I suppose).  This driver does not do that, but we could speak
> > about how you'd like that done were this driver at some point
> > considered for inclusion in the kernel.
> 
> Don't worry about it for the time being.
> 
> I'll review your envctrl stuff soon, it looks really nice.
> 


-- 
E

------=_Part_1285_22905090.1109218230705
Content-Type: application/octet-stream; name="26_envctrl_templed.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="26_envctrl_templed.patch"

LS0tIGFyY2gvc3BhcmM2NC9rZXJuZWwvZW52X2VudmN0cmx0d28uYy5vbGQJMjAwNS0wMi0yMyAx
OToxMjoxMC41NTI0NzMyMjYgLTA4MDAKKysrIGFyY2gvc3BhcmM2NC9rZXJuZWwvZW52X2VudmN0
cmx0d28uYwkyMDA1LTAyLTIzIDE5OjEyOjI4LjA3NDgwOTQyNiAtMDgwMApAQCAtNDYsNyArNDYs
NyBAQAogI2luY2x1ZGUgImVudl9saWIuaCIKIAogI2RlZmluZSBFTlYyX0RFVk5BTUUJImVudmN0
cmx0d28iCi0jZGVmaW5lIEVOVjJfVkVSU0lPTiAgICAiMC4yLjAiCisjZGVmaW5lIEVOVjJfVkVS
U0lPTiAgICAiMC4zLjAiCiAKICNkZWZpbmUgRU5WMl9ERUJVR19USEVSTVMgKDApIC8qIGR1bXAg
dGhlcm1pc3RlcnMgZm91bmQgYW5kIHZhbHVlcyBwcm9iZWQgICovCiAjZGVmaW5lIEVOVjJfREVC
VUdfRkFOICAgICgwKSAvKiB1c2VyIGZhbnNwZWVkIGNvbnRyb2wgdmlhIHN5c2ZzIC0gREFOR0VS
ISAqLwpAQCAtNjc2LDcgKzY3Niw3IEBACiAJcmV0ICs9IHNwcmludGYoYnVmICsgcmV0LCAiRElT
SyBFUlJPUjogWyVzXVxuIiwgCiAJCXN0YXQgJiBFTlYyX0xFRF9ESVNLRVJSID8gIk9GRiIgOiAi
T04iKTsKIAlyZXQgKz0gc3ByaW50ZihidWYgKyByZXQsICJURU1QIEVSUk9SOiBbJXNdXG4iLCAK
LQkJc3RhdCAmIEVOVjJfTEVEX0RJU0tFUlIgPyAiT0ZGIiA6ICJPTiIpOworCQlzdGF0ICYgRU5W
Ml9MRURfVEVNUEVSUiA/ICJPRkYiIDogIk9OIik7CiAJcmV0ICs9IHNwcmludGYoYnVmICsgcmV0
LCAiUFMgRVJST1I6ICAgWyVzXVxuIiwgCiAJCXN0YXQgJiBFTlYyX0xFRF9QU0VSUiA/ICJPRkYi
IDogIk9OIik7CiAK
------=_Part_1285_22905090.1109218230705--
