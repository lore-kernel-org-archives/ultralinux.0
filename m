From: Peter Jones <pjones@redhat.com>
Date: Sun, 18 Apr 1999 21:34:24 +0000
Subject: ide-scsi on sparc64...
Message-Id: <marc-linux-ultrasparc-92447134026461@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ultralinux@vger.kernel.org

Has anybody other than me tried this?  I've been atacking it for, well, a
day or so now, and I can't seem to make it work.  If I turn off ide-cdrom,
and turn on ide-scsi, I get an unaligned trap in idescsi_setup, at the
line listed below.

static void idescsi_setup (ide_drive_t *drive, idescsi_scsi_t *scsi, int
id)
{
        DRIVER(drive)->busy++;
        idescsi_drives[id] = drive;
        drive->driver_data = scsi;
        drive->ready_stat = 0;
        memset (scsi, 0, sizeof (idescsi_scsi_t));
        scsi->drive = drive;
        if (drive->id && (drive->id->config & 0x0060) = 0x20)
                set_bit (IDESCSI_DRQ_INTERRUPT, &scsi->flags);
        set_bit(IDESCSI_TRANSFORM, &scsi->transform);           <-- here
        clear_bit(IDESCSI_SG_TRANSFORM, &scsi->transform);
#if IDESCSI_DEBUG_LOG
        set_bit(IDESCSI_LOG_CMD, &scsi->log);
#endif /* IDESCSI_DEBUG_LOG */
        idescsi_add_settings(drive);
}

It panics claiming unaligned load/store... This is a bit past my
expertise.  Any ideas?

This is on a virgin CVS checkout.
 -- Peter

"Talking much about oneself can also be a means to conceal oneself."
		-- Nietzsche
