From: Thunder from the hill <thunder@ngforever.de>
Date: Wed, 22 May 2002 15:12:06 +0000
Subject: arch/sparc(|64)/kernel/entry.S:do_fork_FIXME_NOW_RETURNS_TASK_STRUCT
Message-Id: <marc-linux-ultrasparc-102208060920224@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Hi,

I was looking out for a solution for the latest compile problems on 
sparc(|64): in arch/sparc(|64)/kernel/entry.S we have a symbol named 
do_fork_FIXME_NOW_RETURNS_TASK_STRUCT introduced by Rusty Russel, which of 
course is undefined. It's in the sparc thread implementation as well as 
in the sys_fork implementation on sparc64.

Any ideas what to do about that?

BTW, please make sure you carbon copy to me, for I'm on neither sparclinux 
nor ultralinux.

Regards,
Thunder
-- 
Was it a black who passed along in the sand?
Was it a white who left his footprints?
Was it an african? An indian?
Sand says, 'twas human.

