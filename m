From: Stephan van Hienen <s.v.hienen@cable.a2000.nl>
Date: Wed, 20 May 1998 18:36:52 +0000
Subject: weird problems with ipmasq
Message-Id: <marc-linux-ultrasparc-90222356531060@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

hi just looked at dmesg and saw this :
(what's up ? )


[ddx@ddx ddx]$ dmesg
Socket destroy delayed (r=3D0 w=128)
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:0680,
len=1480/1480/1500
TCPv4 bad checksum from 9.255.159.194:e829 to 27.24.108.62:0077,
len /20/40
TCPv4 bad checksum from 9.255.159.194:e829 to 27.24.108.62:0077,
len /20/40
Socket destroy delayed (r=3D0 w=96)
Socket destroy delayed (r=3D0 w=96)
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:0808,
len=1480/1480/1500
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:09bf,
len=804/804/824
Socket destroy delayed (r=3D0 w=96)
TCPv4 bad checksum from 9.255.159.194:1a0d to 27.24.108.62:0427,
lenh/68/88
TCPv4 bad checksum from 9.255.159.194:1e6a to 27.24.108.62:1244,
lens/73/93
TCPv4 bad checksum from 9.255.159.194:0035 to 27.24.108.62:0529,
len=119/119/139
TCPv4 bad checksum from 9.255.159.194:044a to 27.24.108.62:0077,
lenS6/536/556
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
TCPv4 bad checksum from 9.255.159.194:0050 to 27.24.108.62:04eb,
len /20/40
Socket destroy delayed (r=3D0 w=96)
Socket destroy delayed (r=3D0 w=96)
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=13
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:masq_expire delayed: TCP C0A80075:3062->8BA5590A:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D1
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
IP_MASQ:failed TCP/UDP checksum from 91.6.109.194!
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:1258,
len=1480/1480/1500
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:1258,
len=1480/1480/1500
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:133e,
len=1274/1274/1294
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:1354,
len=1480/1480/1500
IP_MASQ:masq_expire delayed: TCP C0A80075:0829->89E084D6:0015 nlocks-1=3D0
masq.refcnt-1=3D2 masq.n_control=3D5
TCPv4 bad checksum from 9.255.159.194:1e6a to 27.24.108.62:0a6f,
len /20/40
TCPv4 bad checksum from 91.6.109.194:0077 to 27.24.108.62:052f,
len=1480/1480/1500
Socket destroy delayed (r=3D0 w=1680)
