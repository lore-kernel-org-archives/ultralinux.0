From: Fredrik Lundholm <exce7@ce.chalmers.se>
Date: Thu, 27 Aug 1998 10:01:52 +0000
Subject: Wait_on_irq
Message-Id: <marc-linux-ultrasparc-90424190309537@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

SMP 2.1.99 kernel, ultrap. 1.0.9 2x66MHz ROSS modules SS10

After some concurrent disk-activity I get messages like:

Wait_on_irq CPU#1 stuck at f0117cb8 waiting for f002f95c (local=0, global=1)
Wait_on_irq CPU#1 stuck at f0117cb8 waiting for f002f95c (local=0, global=1)
Wait_on_irq CPU#1 stuck at f0117cb8 waiting for f002f95c (local=0, global=1)

(powercycle is the only way out)

Observing System map at those regions reveal:

f0117b68 T esp_queue
f01183ac T esp_command

f002f934 t timer_bh
f002fdd4 T do_timer

Some kernel locks not properly handeled?

If there's some other kernel I should try, please give me a pointer!
Well perhaps I should wait for the newest ones to work properly on sun4m-SMP

-- 
Fredrik Lundholm
exce7@ce.chalmers.se
