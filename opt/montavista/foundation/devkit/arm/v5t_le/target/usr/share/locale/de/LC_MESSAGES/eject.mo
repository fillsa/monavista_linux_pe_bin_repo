��    >        S   �      H  )   I      s  #   �  -   �  *   �  +     =   =  )   {  ;   �  :   �          3      M     n  $   �     �     �  (   �          -     ?     ^     x     �  '   �  &   �  $   �     	      4	  #   U	  )   y	  ,   �	  0   �	  /   
     1
      P
  !   q
      �
  #   �
     �
  4   �
  -   %  4   S  4   �  $   �  +   �  ,        ;  "   S     v  *   �     �     �     �  �  
  �      �   �  5   v     �     �     �    �  )   �  #   %     I  -   g  *   �  0   �  F   �  (   8  9   a  B   �  %   �       (   $     M  0   m  !   �     �  1   �          /  &   C     j     �     �  &   �  $   �  "   �       '   >  !   f  1   �  4   �  8   �  8   (     a  )   s  *   �  '   �  !   �        6   3  0   j  2   �  :   �  -   	  2   7  (   j     �  %   �     �  ,   �  &        D     W  S  w  �   �  �   �  6   f      �   #   �      �      ,   )                '      =           8   "   (                     -      9      :   2                      5       
       ;   %      1                  #   *                 6       	   >   /      4      7       3       !             +       &   $                          .       0      <       %s: CD-ROM auto-eject command failed: %s
 %s: CD-ROM eject command failed
 %s: CD-ROM eject command succeeded
 %s: CD-ROM load from slot command failed: %s
 %s: CD-ROM select disc command failed: %s
 %s: CD-ROM select speed command failed: %s
 %s: CD-ROM select speed command not supported by this kernel
 %s: CD-ROM tray close command failed: %s
 %s: CD-ROM tray close command not supported by this kernel
 %s: IDE/ATAPI CD-ROM changer not supported by this kernel
 %s: SCSI eject failed
 %s: SCSI eject succeeded
 %s: `%s' can be mounted at `%s'
 %s: `%s' is a link to `%s'
 %s: `%s' is a multipartition device
 %s: `%s' is mounted at `%s'
 %s: `%s' is not a mount point
 %s: `%s' is not a multipartition device
 %s: `%s' is not mounted
 %s: closing tray
 %s: could not allocate memory
 %s: default device: `%s'
 %s: device is `%s'
 %s: device name is `%s'
 %s: disabling auto-eject mode for `%s'
 %s: enabling auto-eject mode for `%s'
 %s: exiting due to -n/--noop option
 %s: expanded name is `%s'
 %s: floppy eject command failed
 %s: floppy eject command succeeded
 %s: invalid argument to --auto/-a option
 %s: invalid argument to --cdspeed/-x option
 %s: invalid argument to --changerslot/-c option
 %s: maximum symbolic link depth exceeded: `%s'
 %s: selecting CD-ROM disc #%d
 %s: setting CD-ROM speed to %dX
 %s: setting CD-ROM speed to auto
 %s: tape offline command failed
 %s: tape offline command succeeded
 %s: too many arguments
 %s: trying to eject `%s' using CD-ROM eject command
 %s: trying to eject `%s' using SCSI commands
 %s: trying to eject `%s' using floppy eject command
 %s: trying to eject `%s' using tape offline command
 %s: unable to eject, last error: %s
 %s: unable to exec /bin/umount of `%s': %s
 %s: unable to find or open device for: `%s'
 %s: unable to fork: %s
 %s: unable to open /etc/fstab: %s
 %s: unable to open `%s'
 %s: unmount of `%s' did not exit normally
 %s: unmount of `%s' failed
 %s: unmounting `%s'
 %s: using default device `%s'
 Eject version %s by Jeff Tranter (tranter@pobox.com)
Usage:
  eject -h				-- display command usage and exit
  eject -V				-- display program version and exit
  eject [-vnrsfq] [<name>]		-- eject device
  eject [-vn] -d			-- display default device
  eject [-vn] -a on|off|1|0 [<name>]	-- turn auto-eject feature on or off
  eject [-vn] -c <slot> [<name>]	-- switch discs on a CD-ROM changer
  eject [-vn] -t [<name>]		-- close tray
  eject [-vn] -x <speed> [<name>]	-- set CD-ROM max speed
Options:
  -v	-- enable verbose output
  -n	-- don't eject, just show device found
  -r	-- eject CD-ROM
  -s	-- eject SCSI device
  -f	-- eject floppy
  -q	-- eject tape
  -p	-- use /proc/mounts instead of /etc/mtab
  -m	-- do not unmount device even if it is mounted
 Long options:
  -h --help   -v --verbose	 -d --default
  -a --auto   -c --changerslot  -t --trayclose  -x --cdspeed
  -r --cdrom  -s --scsi	 -f --floppy
  -q --tape   -n --noop	 -V --version
  -p --proc   -m --no-unmount
 Parameter <name> can be a device file or a mount point.
If omitted, name defaults to `%s'.
By default tries -r, -s, -f, and -q in order until success.
 eject version %s by Jeff Tranter (tranter@pobox.com)
 unable to open %s: %s
 usage: volname [<device-file>]
 volname Project-Id-Version: eject 2.0.13deb-4
POT-Creation-Date: 2004-05-07 01:11+0200
PO-Revision-Date: 2004-05-07 01:35+0200
Last-Translator: nordi <nordi@addcom.de>
Language-Team:
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
 %s: CD-ROM auto-eject fehlgeschlagen: %s
 %s: CD eject war nicht erfolgreich
 %s: CD eject war erfolgreich
 %s: CD-ROM load from slot fehlgeschlagen: %s
 %s: CD-ROM select disc fehlgeschlagen: %s
 %s: CD-ROM selecter vitesse pas s'accomplir: %s
 %s: CD-ROM Geschwindigkeit setzen von diesem Kernel nicht unterst�tzt
 %s: CD-ROM Schlie�en fehlgeschlagen: %s
 %s: CD-ROM Schlie�en von diesem Kernel nicht unterst�tzt
 %s: IDE/ATAPI CD-ROM Wechsler von diesem Kernel nicht unterst�tzt
 %s: SCSI eject war nicht erfolgreich
 %s: SCSI eject war erfolgreich
 %s: `%s' kann nach`%s' gemountet werden
 %s: `%s' ist ein Link auf `%s'
 %s: `%s' ist ein Ger�t mit mehreren Partitionen
 %s: `%s' ist nach `%s' gemountet
 %s: `%s' ist kein mount point
 %s: `%s' ist kein Ger�t mit mehreren Partitionen
 %s: `%s' ist nicht gemountet
 %s: schlie�e jetzt
 %s: Konnte keinen Speicher allozieren
 %s: Standardger�t: `%s'
 %s: Ger�t ist `%s'
 %s: Ger�tename ist `%s'
 %s: deaktiviere Auto-Auswurf f�r `%s'
 %s: aktiviere Auto-Auswurf f�r `%s'
 %s: beende wegen -n/--noop Option
 %s: erweiterter Name ist `%s'
 %s: Floppy eject war nicht erfolgreich
 %s: Floppy eject war erfolgreich
 %s: ung�ltiges Argument f�r die --auto/-a Option
 %s: ung�ltiges Argument f�r die --cdspeed/-x Option
 %s: ung�ltiges Argument f�r die --changerslot/-c Option
 %s: maximale symbolische Link Tiefe �berschritten: `%s'
 %s: w�hle CD #%d
 %s: setze CD-ROM Geschwindigkeit auf %dX
 %s: setze CD-ROM Geschwindigkeit auf auto
 %s: Band offline war nicht erfolgreich
 %s: Band offline war erfolgreich
 %s: zu viele Optionen angegeben
 %s: Versuche `%s' mit dem CD eject Befehl auszuwerfen
 %s: versuche `%s' mit SCSI Befehlen auszuwerfen
 %s: versuche `%s' mit Floppy Befehlen auszuwerfen
 %s: versuche `%s' mit dem Band offline Befehl auszuwerfen
 %s: Kann nicht auswerfen! Letzter Fehler: %s
 %s: kann /bin/umount f�r `%s' nicht ausf�hren: %s
 %s: kann Ger�t `%s' nicht finden/�ffnen
 %s: kann nicht forken: %s
 %s: kann /etc/fstab nicht �ffnen: %s
 %s: kann `%s' nicht �ffnen
 %s: Unmounten von `%s' nicht normal beendet
 %s: Unmounten von `%s' fehlgeschlagen
 %s: Unmounte `%s'
 %s: benutze Standardger�t `%s'
 Eject version %s von Jeff Tranter (tranter@pobox.com)
Usage:
  eject -h				-- gibt die Hilfe aus und beendet das Programm
  eject -V				-- gibt Versioninformation aus und beendet das Programm
  eject [-vnrsfq] [<name>]		-- Laufwerk �ffnen
  eject [-vn] -d			-- zeige Standardlaufwerk an
  eject [-vn] -a on|off|1|0 [<name>]	-- auto-eject an-/ausschalten
  eject [-vn] -c <slot> [<name>]	-- wechselt CD im CD-Wechsler
  eject [-vn] -t [<name>]		-- Laufwerk schlie�en
  eject [-vn] -x <speed> [<name>]	-- maximale CD-ROM Geschwindigkeit setzen
Options:
  -v	-- zeige Details an
  -n	-- Laufwerk nicht �ffnen, nur gefundenes Ger�t anzeigen
  -r	-- CD-ROM auswerfen
  -s	-- Disk im SCSI Ger�t auswerfen
  -f	-- Floppy auswerfen
  -q	-- Band auswerfen
  -p	-- benutze/proc/mounts statt /etc/mtab
  -m	-- Ger�t nicht unmounten, selbst wenn es gemounted ist
 Lange Optionen:
  -h --help   -v --verbose	 -d --default
  -a --auto   -c --changerslot  -t --trayclose  -x --cdspeed
  -r --cdrom  -s --scsi	 -f --floppy
  -q --tape   -n --noop	 -V --version
  -p --proc   -m --no-unmount
 Parameter <Name> kann eine Ger�tedatei oder ein Mount Punkt sein.
Wenn ausgelassen wird `%s' gew�hlt.
Versucht standardm��ig -r, -s, -f und -q in dieser Reihenfolge bis es funktioniert.
 eject Version %s von Jeff Tranter (tranter@pobox.com)
 kann %s nicht �ffnen: %s
 Benutzung: volname [<Ger�tedatei>]
 Volname 