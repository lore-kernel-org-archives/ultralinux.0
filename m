From: Thomas Winder <thomas.winder@newlogic.at>
Date: Tue, 12 May 1998 17:41:12 +0000
Subject: nfs problem
MIME-Version: 1
Content-Type: multipart/mixed; boundary="Multipart_Tue_May_12_19:41:12_1998-1"
Message-Id: <marc-linux-ultrasparc-90222356531010@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
To: ultralinux@vger.kernel.org


--Multipart_Tue_May_12_19:41:12_1998-1
Content-Type: text/plain; charset=US-ASCII


Hi!

I am using the latest ultrapenguin 1.0.9 from ultra.linux.cz on a
ultra 1 creator system. Using nfs mounted data from a server running
SunOs 5.5.1 causes serious problems. I have included a tcpdump of a
typical session which hopefully gives enough information. The dump
corresponds to the following actions:

1. nfs mounting a directory from the sunos system (enterprise2) on the 
   linux client (ultra1-9)

2. a few cd and ls operations inside the mounted tree

3. use more to view the content of a file

4. use vi on the same file

5. quit vi without performing any modifications

Now vi is hanging and messages like "nfs server enterprise2 not
responding" and "rpc timeout" are displayed.

When mounting read-only the problem does not show up. But when I tried 
to copy a whole directory tree from this ro mounted directory the
machine locked up. It did react to "SHIFT/CTRL SCROLL-LOCK". This
revealed "update" in state R and the copy process "cp" in D. 

tom

ps: Actually I'm using linux-2.1.101 from the CVS archive. 2.1.99
    coming with the distribution itself does not work on my
    system. Init nearly immediately segfaults. 


--Multipart_Tue_May_12_19:41:12_1998-1
Content-Type: application/octet-stream
Content-Disposition: attachment; filename="xx"
Content-Transfer-Encoding: 8bit

begin 666 nfs.log.gz
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
K=<0C?%FN?Y0K\N]/\FV]0?8=/;^Y.NSV^^:]I_*P+3=W_P'A$F<[CC0`````
`
end

--Multipart_Tue_May_12_19:41:12_1998-1--
