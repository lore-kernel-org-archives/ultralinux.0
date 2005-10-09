From: Sven Hartge <hartge@ds9.argh.org>
Date: Sun, 09 Oct 2005 00:23:18 +0000
Subject: Fix for sparc64 irq.c compile error
Message-Id: <di9nk82mm0@ds9.argh.org>
MIME-Version: 1
Content-Type: multipart/mixed; boundary="-1463811740-1903503627-1128817398=:2774"
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1463811740-1903503627-1128817398=:2774
Content-Type: TEXT/PLAIN; charset=iso-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hello.

Please excuse me for contacting you so bluntly, but after some hours of=20
debugging, I feel the need to contribute my little patch, in the hope it=20
is somewhat helpful.

The problem: On sparc64, arch/sparc64/kernel/irq.c is missing the=20
inclusion of asm/io.h, which causes readb() and writeb() to be undefined.=
=20
Please see the attached patch for the correction.

This should also go into the -stable-series.

Gr=FC=DFe,
Sven Hartge

--=20
Sven Hartge -- professioneller Unix-Geek
Meine Gedanken im Netz: http://sven.formvision.de/blog/
---1463811740-1903503627-1128817398=:2774
Content-Type: TEXT/PLAIN; charset=US-ASCII; name=fix_sparc64_irq_c.patch
Content-Transfer-Encoding: BASE64
Content-ID: <di9ntm2mm0@ds9.argh.org>
Content-Description: 
Content-Disposition: attachment; filename=fix_sparc64_irq_c.patch

W1NQQVJDNjRdOiBGaXggY29tcGlsZSBlcnJvciBpbiBpcnEuYw0KDQppcnEu
YyBpcyBtaXNzaW5nIHRoZSBpbmNsdXNpb24gb2YgYXNtL2lvLmgsIHdoaWNo
IGNhdXNlcw0KcmVhZGIoKSBhbmQgd3JpdGViKCkgdGhlIGJlIHVuZGVmaW5l
ZC4NCg0KU2lnbmVkLW9mZi1ieTogU3ZlbiBIYXJ0Z2UgPGhhcnRnZUBkczku
YXJnaC5vcmc+DQoNCmRpZmYgLS1naXQgYS9hcmNoL3NwYXJjNjQva2VybmVs
L2lycS5jIGIvYXJjaC9zcGFyYzY0L2tlcm5lbC9pcnEuYw0KLS0tIGEvYXJj
aC9zcGFyYzY0L2tlcm5lbC9pcnEuYw0KKysrIGIvYXJjaC9zcGFyYzY0L2tl
cm5lbC9pcnEuYw0KQEAgLTI3LDYgKzI3LDcgQEANCiAjaW5jbHVkZSA8YXNt
L2F0b21pYy5oPg0KICNpbmNsdWRlIDxhc20vc3lzdGVtLmg+DQogI2luY2x1
ZGUgPGFzbS9pcnEuaD4NCisjaW5jbHVkZSA8YXNtL2lvLmg+DQogI2luY2x1
ZGUgPGFzbS9zYnVzLmg+DQogI2luY2x1ZGUgPGFzbS9pb21tdS5oPg0KICNp
bmNsdWRlIDxhc20vdXBhLmg+DQo=

---1463811740-1903503627-1128817398=:2774--
