From: "David S. Miller" <davem@redhat.com>
Date: Fri, 10 Sep 1999 23:56:30 +0000
Subject: Re: RH 6.0 and Ultra 2
Message-Id: <marc-linux-ultrasparc-93700849902247@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
References: <marc-linux-ultrasparc-93700556200359@msgid-missing>
In-Reply-To: <marc-linux-ultrasparc-93700556200359@msgid-missing>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org


Try this:

1) log in
2) rm -rf .xauth
3) rm -f .ICEauthority .Xauthority
4) log out
5) log back in
6) startx

Later,
David S. Miller
davem@redhat.com
