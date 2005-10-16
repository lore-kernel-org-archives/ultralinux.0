From: Alexandr Kanevskiy <kad@crystalowl.net>
Date: Sun, 16 Oct 2005 19:21:31 +0000
Subject: small patch to fix compilation 2.4.31/sparc64
Message-Id: <1129490491.21366.9.camel@orava.homeip.net>
MIME-Version: 1
Content-Type: multipart/mixed; boundary="=-W03fPx+8knoxJPG8GHGn"
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org


--=-W03fPx+8knoxJPG8GHGn
Content-Type: multipart/mixed; boundary="=-LeSL9JFpGnhW/1KPmbpa"


--=-LeSL9JFpGnhW/1KPmbpa
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi.

I tried to build 2.4.31 on sparc64, and found minor problem.=20
Patch for it attached, and I hope it will be useful for maintainers
before next 2.4.x release.

--=20
Alexandr Kanevskiy <kad@crystalowl.net>

--=-LeSL9JFpGnhW/1KPmbpa
Content-Disposition: attachment; filename=linux-2.4.31-__bzero_noasi-fix.patch
Content-Type: text/x-patch; name=linux-2.4.31-__bzero_noasi-fix.patch; charset=KOI8-R
Content-Transfer-Encoding: base64

ZGlmZiAtcnUgbGludXgtMi40LjMxLm9yZy9hcmNoL3NwYXJjNjQva2VybmVsL3NwYXJjNjRfa3N5
bXMuYyBsaW51eC0yLjQuMzEvYXJjaC9zcGFyYzY0L2tlcm5lbC9zcGFyYzY0X2tzeW1zLmMNCi0t
LSBsaW51eC0yLjQuMzEub3JnL2FyY2gvc3BhcmM2NC9rZXJuZWwvc3BhcmM2NF9rc3ltcy5jCTIw
MDUtMDQtMDQgMDQ6NDI6MTkuMDAwMDAwMDAwICswMzAwDQorKysgbGludXgtMi40LjMxL2FyY2gv
c3BhcmM2NC9rZXJuZWwvc3BhcmM2NF9rc3ltcy5jCTIwMDUtMTAtMTYgMjE6MDk6MDkuMDAwMDAw
MDAwICswMzAwDQpAQCAtNjMsNyArNjMsNyBAQA0KIGV4dGVybiB2b2lkIGRpZV9pZl9rZXJuZWwo
Y2hhciAqc3RyLCBzdHJ1Y3QgcHRfcmVncyAqcmVncyk7DQogdm9pZCBfc2lncGF1c2VfY29tbW9u
ICh1bnNpZ25lZCBpbnQgc2V0LCBzdHJ1Y3QgcHRfcmVncyAqKTsNCiBleHRlcm4gdm9pZCAqX19i
emVybyh2b2lkICosIHNpemVfdCk7DQotZXh0ZXJuIHZvaWQgKl9fYnplcm9fbm9hc2kodm9pZCAq
LCBzaXplX3QpOw0KK2V4dGVybiBfX2tlcm5lbF9zaXplX3QgX19iemVyb19ub2FzaSh2b2lkICos
IF9fa2VybmVsX3NpemVfdCk7DQogZXh0ZXJuIHZvaWQgKl9fbWVtc2Nhbl96ZXJvKHZvaWQgKiwg
c2l6ZV90KTsNCiBleHRlcm4gdm9pZCAqX19tZW1zY2FuX2dlbmVyaWModm9pZCAqLCBpbnQsIHNp
emVfdCk7DQogZXh0ZXJuIGludCBfX21lbWNtcChjb25zdCB2b2lkICosIGNvbnN0IHZvaWQgKiwg
X19rZXJuZWxfc2l6ZV90KTsNCg==


--=-LeSL9JFpGnhW/1KPmbpa--

--=-W03fPx+8knoxJPG8GHGn
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.1 (GNU/Linux)

iD8DBQBDUqg7JGLEG1jrYMgRAgQfAJ9228LW1YhB8O1JK8j28jXBdVmIowCff9p0
I7nkYPHGrVFrLUpZOEySFgA=
=uufU
-----END PGP SIGNATURE-----

--=-W03fPx+8knoxJPG8GHGn--

