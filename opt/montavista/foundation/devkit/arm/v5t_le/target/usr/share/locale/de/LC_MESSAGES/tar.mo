��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  W  ?3  B  �4    �5  �  �8  �   �<  6  u=  �  �?    �A  �   �B     qC  �   �C     GD  )   aD  +   �D     �D  ,   �D  =   E  7   @E  M   xE  "   �E     �E     F  $   "F  "   GF     jF  %   �F     �F  C   �F  -   	G     7G     MG     kG  :   {G  I   �G  B    H  *   CH  &   nH  -   �H  <   �H  #    I     $I  (   9I  >   bI  #   �I  +   �I     �I     J  0   -J  #   ^J  /   �J  /   �J  1   �J  '   K  ,   <K     iK  5   }K  !   �K  !   �K     �K     �K     L     L     =L  -   UL  B   �L  *   �L  2   �L  )   $M  >   NM  0   �M  $   �M  9   �M  @   N  -   ^N  ;   �N  K   �N  '   O  :   <O  #   wO  )   �O  -   �O  8   �O  '   ,P  '   TP  5   |P  5   �P     �P  3   Q     5Q     JQ  %   fQ     �Q  2   �Q  ,   �Q  ;   R  -   HR  *   vR  L   �R     �R  �   S  A   �S     �S  !   �S  "   T  0   0T     aT     yT     �T  $   �T     �T  $   �T     	U     U  $   1U     VU  "   oU     �U     �U     �U     �U     V  3   $V  G   XV  =   �V  E   �V     $W  3   ;W     oW  	   �W  3   �W     �W  &   �W  !   �W  -   X  4   KX     �X     �X  +   �X  &   �X  '   Y  -   7Y  �   eY  #   :Z  *   ^Z     �Z  -   �Z  #   �Z  !   �Z  /   [  <   F[     �[  �   �[     `\     {\     �\     �\  &   �\     �\     �\  !   ]  E   =]  =   �]     �]  .   �]  7   ^  /   @^     p^     t^      �^  
   �^  !   �^     �^     _     _  #   _     >_     S_     s_  8   �_  !   �_     �_     �_     `  )   `  :   I`     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
   h   +   �   ,   �   �   �          o   �      n           �   y                 2   �      �   0   �   �   p   �   ?          �   ]                     -   r   	   g           B   q   f   �      U       �   �   s          �       �      Y   S   /       u    
Device blocking:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=SIZE         SIZE bytes per record, multiple of 512
  -i, --ignore-zeros             ignore zeroed blocks in archive (means EOF)
  -B, --read-full-records        reblock as we read (for 4.2BSD pipes)
 
Device selection and switching:
  -f, --file=ARCHIVE             use archive file or device ARCHIVE
      --force-local              archive file is local even if has a colon
      --rsh-command=COMMAND      use remote COMMAND instead of rsh
  -[0-7][lmh]                    specify drive and density
  -M, --multi-volume             create/list/extract multi-volume archive
  -L, --tape-length=NUM          change tape after writing NUM x 1024 bytes
  -F, --info-script=FILE         run script at end of each tape (implies -M)
      --new-volume-script=FILE   same as -F FILE
      --volno-file=FILE          use/update the volume number in FILE
 
Handling of file attributes:
      --owner=NAME             force NAME as owner for added files
      --group=NAME             force NAME as group for added files
      --mode=CHANGES           force (symbolic) mode CHANGES for added files
      --atime-preserve         don't change access times on dumped files
  -m, --modification-time      don't extract file modified time
      --same-owner             try extracting files with the same ownership
      --no-same-owner          extract files as yourself
      --numeric-owner          always use numbers for user/group names
  -p, --same-permissions       extract permissions information
      --no-same-permissions    do not extract permissions information
      --preserve-permissions   same as -p
  -s, --same-order             sort names to extract to match archive
      --preserve-order         same as -s
      --preserve               same as both -p and -s
 
If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.  Similarly for optional arguments.
 
Main operation mode:
  -t, --list              list the contents of an archive
  -x, --extract, --get    extract files from an archive
  -c, --create            create a new archive
  -d, --diff, --compare   find differences between archive and file system
  -r, --append            append files to the end of an archive
  -u, --update            only append files newer than copy in archive
  -A, --catenate          append tar files to an archive
      --concatenate       same as -A
      --delete            delete from the archive (not on mag tapes!)
 
The backup suffix is `~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control may be set with --backup or VERSION_CONTROL, values are:

  t, numbered     make numbered backups
  nil, existing   numbered if numbered backups exist, simple otherwise
  never, simple   always make simple backups
 
Usage: %s [OPTION]... [FILE]...

Examples:
  %s -cf archive.tar foo bar  # Create archive.tar from files foo and bar.
  %s -tvf archive.tar         # List all files in archive.tar verbosely.
  %s -xf archive.tar          # Extract all files from archive.tar.
       --backup[=CONTROL]       backup before removal, choose version control
      --suffix=SUFFIX          backup before removal, override usual suffix
  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
  unknown file type %s
 %s is not continued on this volume %s is the wrong size (%s != %s + %s) %s: Cannot %s %s: Cannot change mode to %s %s: Cannot change ownership to uid %lu, gid %lu %s: Cannot create symlink to %s %s: Cannot extract -- file is continued from another volume %s: Cannot hard link to %s %s: Cannot remove %s: Cannot rename to %s %s: Cannot seek to %s %s: Cannot symlink to %s %s: Deleting %s
 %s: Directory has been renamed %s: Directory is new %s: Directory renamed before its status could be extracted %s: File removed before we read it %s: Invalid group %s: Not found in archive %s: Omitting %s: Unexpected inconsistency when making directory %s: Unknown file type '%c', diffed as normal file %s: Unknown file type '%c', extracted as normal file %s: Unknown file type; file ignored %s: Warning: Cannot %s %s: Warning: Cannot seek to %s %s: Was unable to backup this file %s: contains invalid volume number %s: door ignored %s: file changed as we read it %s: file is on a different filesystem; not dumped %s: file is the archive; not dumped %s: file is unchanged; not dumped %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: socket ignored %s: time stamp %s is %lu s in the future %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' (pipe) --Continued at byte %s--
 --Mangled file names--
 --Volume Header--
 Archive base-256 value is out of %s range Archive contains %.*s where numeric %s value expected Archive contains obsolescent base-64 headers Archive not labeled to match %s Archive octal value %.*s is out of %s range Archive octal value %.*s is out of %s range; assuming two's complement Archive signed base-64 string %s is out of %s range At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Blanks in header where numeric %s value expected Cannot allocate buffer space Cannot allocate memory for blocking factor %d Cannot backspace archive file; it may be unreadable without -i Cannot change working directory Cannot combine --listed-incremental with --newer Cannot execute remote shell Cannot save working directory Cannot update compressed archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Conflicting compression options Contents differ Cowardly refusing to create an empty archive Creating directory: Date file not found Deleting non-header from archive Device number differs Device number out of range EOF where user reply was expected Error exit delayed from previous errors Error in writing to standard output Error is not recoverable: exiting now Extracting contiguous files as regular files File type differs GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Garbage command Generating negative octal headers Gid differs Inode number out of range Invalid blocking factor Invalid device number Invalid inode number Invalid mode given on option Invalid owner Invalid record size Invalid tape length Invalid time stamp Invalid value for record_size Missing file name after -C Mod time differs Mode differs More than one threshold date No archive name given No new volume; exiting.
 Not linked to %s Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size must be a multiple of %d. Renamed %s to %s Renaming %s back to %s
 Renaming %s to %s
 Seek direction out of range Seek offset out of range Size differs Skipping to next header Substituting %s for unknown date format %s Symlink differs Symlinked %s to %s This does not look like a tar archive This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute it under the terms of the GNU General Public License;
see the file named COPYING for details. This volume is out of sequence Time stamp out of range Too many errors, quitting Try `%s --help' for more information.
 Uid differs Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown system error Usage: %s [OPTION]
Manipulate a tape drive, accepting commands from a remote process.

  --version  Output version info.
  --help  Output this help.
 Valid arguments are: Verify  Visible long name error Visible longname error Volume %s does not match %s Volume number overflow WARNING: Archive is incomplete WARNING: No volume header Warning: the -I option is not supported; perhaps you meant -j or -T? Warning: the -y option is not supported; perhaps you meant -j? Write checkpoint %d Written by John Gilmore and Jay Fenlason. You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options ` `%s' command failed ambiguous argument %s for %s block %s:  block %s: ** Block of NULs **
 block %s: ** End of File **
 block size child process exec/tcp: Service not available interprocess channel invalid argument %s for %s memory exhausted rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: tar 1.13.25
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2003-08-14 15:58:48+0200
Last-Translator: Michael Piefel <piefel@informatik.hu-berlin.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Blockung des Gerätes:
  -b, --block-size=BLÖCKE    BLÖCKE à 512 Bytes pro Record
      --record-size=GRÖSSE   GRÖSSE Bytes pro Record, Vielfaches von 512
  -i, --ignore-zeros         Blöcke mit Nullen im Archiv ignorieren (heißt EOF)
  -B, --read-full-blocks     Blockung beim Lesen ändern (für 4.2BSD‐Pipes)
 
Geräteauswahl und -einstellung:
  -f, --file=ARCHIV              Gerät oder Datei ARCHIV benutzen
      --force-local              Archiv-Datei ist lokal, auch wenn der Name
                                 einen Doppelpunkt enthält
      --rsh-command=BEFEHL       statt „rsh“ den BEFEHL benutzen
  -[0-7][lmh]                    Laufwerk und Schreibdichte angeben
  -M, --multi-volume             mehrteiliges Archiv anlegen/listen/herausholen
  -L, --tape-length=ZAHL         Medium wechseln, wenn ZAHL KBytes geschrieben sind
  -F, --info-script=DATEI        am Ende jedes Mediums das Skript DATEI
                                 ausführen (impliziert -M)
      --new-volume-script=DATEI  wie -F DATEI
      --volno-file=DATEI         Teil-Nummer in DATEI benutzen/aktualisieren
 
Behandlung der Datei-Eigenschaften:
      --owner=NAME             Eigentümer für hinzugefügte Dateien auf NAME setzen
      --group=NAME             Gruppe für hinzugefügte Dateien auf NAME setzen
      --mode=RECHTE            Zugriffsrechte für hinzugefügte Dateien auf RECHTE setzen
      --atime-preserve         Zugriffszeit beim Auspacken erhalten
  -m, --modification-time      Änderungszeit nicht aus Archiv nehmen
      --same-owner             Eigentümer beim Auspacken erhalten
      --no-same-owner          Eigentümer beim Auspacken auf Ausführenden setzen
      --numeric-owner          Zahlen für Benutzer bzw. Gruppen benutzen
  -p, --same-permissions       Zugriffsrechte beim Auspacken erhalten
      --no-same-permissions    Keine Zugriffsrechte erhalten
      --preserve-permissions   wie -p
  -s, --same-order             zu entpackende Dateinamen wie im Archiv sortieren
      --preserve-order         wie -s
      --preserve               wie -p und -s zusammen
 
Wenn eine lange Option ein Argument erfordert, ist es für die entsprechende
kurze Option auch erforderlich. Das gleich gilt für optionale Argumente.
 
Aktionen:
  -t, --list              Inhalt eines Archivs anzeigen
  -x, --extract, --get    Dateien aus Archiv holen
  -c, --create            neues Archiv erzeugen
  -d, --diff, --compare   Dateien im Archiv und im Dateisystem vergleichen
  -r, --append            Dateien an das Archiv anhängen
  -u, --update            nur Dateien anhängen, die jünger sind als ihre Archiv-Version
  -A, --catenate          „tar“-Dateien an ein Archiv anhängen
      --concatenate       wie '-A'
      --delete            aus Archiv löschen (nicht auf Magnetbändern!)
 
Die Namenserweiterung für Sicherheitskopien ist ‚~‘, wenn nicht mit --suffix
oder der Umgebungsvariablen SIMPLE_BACKUP_SUFFIX etwas anderes eingestellt ist.
Die Versionskontrolle kann mit --backup oder der Umgebungsvariablen
VERSION_CONTROL gesetzt werden. Mögliche Werte sind:

  t, numbered     nummerierte Sicherheitskopien
  nil, existing   nummerierte Sicherheitskopien, wenn schon nummerierte
                    vorhanden sind, sonst einfache
  never, simple   immer einfache Sicherheitskopien
 
Aufruf: %s [OPTION]... [Datei]...

Beispiele:
  %s -cf archiv.tar foo bar  # archiv.tar mit den Dateien foo und bar erzeugen
  %s -tvf archiv.tar         # Inhalt von archiv.tar ausführlich anzeigen
  %s -xf archiv.tar          # alle Dateien aus archiv.tar extrahieren
       --backup[=CONTROL]       Sicherheitskopie vor dem Löschen, wählt Versionskontrolle
      --suffix=SUFFIX          Sicherheitskopie vor dem Löschen, Namenserweiterung SUFFIX
  Verküpfung auf %s
  n [NAME]   Für die nächsten (und folgenden) Medien neuen Dateinamen angeben
 q          „tar“ abbrechen
 !          Shell in einem Unterprozess starten
 ?          Diese Liste ausgeben
  unbekannter Dateityp %s
 Dieser Teil ist keine Fortsetzung von %s. %s hat die falsche Größe (%s != %s + %s). %s: Kann %s nicht ausführen. %s: Kann Zugriffsrechte nicht zu %s ändern. %s: Kann Datei-Eigentümer nicht zu uid %lu, gid %lu ändern. %s: Kann keinen symbolischen Link auf „%s“ anlegen. Kann „%s“ nicht herausholen -- Datei ist Fortsetzung eines anderen Teils. %s: Kann nicht zu „%s“ linken. Kann %s nicht entfernen. %s: Kann nicht in %s umbenennen %s: Kann nicht auf %s positionieren. %s: Kann nicht zu „%s“ linken. %s: Lösche ‚%s‘.
 Verzeichnis „%s“ wurde umbenannt. Verzeichnis „%s“ ist neu. %s: Verzeichnis umbenannt bevor sein Status ermittelt werden konnte %s: Datei gelöscht, bevor sie gelesen wurde. %s: Ungültige Gruppe %s: Nicht im Archiv gefunden. %s: Ausgelassen %s: Unerwarteter Fehler beim Erstellen des Verzeichnisses. %s: Unbekannter Dateityp ‚%c‘, Differenz wie für eine normale Datei. %s: Unbekannter Dateityp ‚%c‘, wie normale Datei herausgeholt. %s: Unbekannter Dateityp; Datei ignoriert. %s: Warnung. Kann %s nicht ausführen. %s: Warnung. Kann nicht auf %s positionieren. %s: Konnte keine Sicherheitskopie von dieser Datei erstellen %s enthält ungültige Teil-Nummer. %s: Klappe ignoriert %s: Datei hat sich beim Lesen geändert. Datei %s liegt auf einem anderen Dateisystem; nicht gesichert. %s ist das Archiv; nicht gesichert. Datei %s ist unverändert; nicht gesichert. %s: Unzulässige Option -- %c
 %s: Ungültige Option -- %c
 %s: Option ‚%c%s‘ erlaubt keinen Parameter.
 %s: Option ‚%s‘ ist mehrdeutig
 %s: Option ‚%s‘ benötigt einen Parameter.
 %s: Option ‚--%s‘ erlaubt keinen Parameter
 %s: Option ‚-W %s‘ erlaubt keinen Parameter.
 %s: Option ‚-W %s‘ ist mehrdeutig.
 %s: Option benötigt einen Parameter -- %c.
 Socket %s ignoriert %s: Zeitstempel %s liegt %lu Sekunden in der Zukunft. %s: Unbekannte Option ‚%c%s‘
 %s: Unbekannte Option ‚--%s‘
 “ (pipe) --Fortgesetzt bei Byte %s--
 --Verstümmelte Dateinamen--
 --Vorspann des Teils--
 Base-256-Wert ist außerhalb des %s Bereichs. Archiv enthält ‚%.*s‘ wo nummerische %s-Werte stehen sollten. Archiv enthält veraltete Base64-Kopfteile Kennzeichnung des Archivs passt nicht zu ‚%s‘. Oktalzahl %.*s außerhalb des %s-Bereichs Oktalzahl %.*s außerhalb des %s-Bereichs, vermutlich negativ? Base64-Text ‚%s‘ außerhalb des %s-Bereichs. Am Anfang des Mediums, beende jetzt. Versuche symbolische Links als harte Links herauszuholen. Leerzeichen im Kopfteil, wo nummerische %s-Werte stehen sollten. Kann keinen Speicher für Puffer reservieren. Konnte keinen Speicher für Blockungsfaktor %d reservieren. Kann Archiv-Datei nicht zurücksetzen; könnte ohne ‚-i‘ unlesbar sein. Kann Arbeitsverzeichnis nicht wechseln. --listed-incremental kann nicht mit --newer benutzt werden Kann Remote-Shell nicht ausführen. Kann aktuelles Verzeichnis nicht sichern. Kann komprimierte Archive nicht aktualisieren Kann keine mehrteiligen komprimierten Archive verwenden. Kann komprimierte Archive nicht prüfen Kann mehrteilige Archive nicht prüfen. Kann Archive auf Standard-Ein-/Ausgabe nicht prüfen. Kompressionsoptionen schließen sich gegenseitig aus. Unterschiedliche Inhalte Anlegen eines leeren Archivs wird feige verweigert. Erzeuge Verzeichnis: Datumsdatei nicht gefunden. Lösche nicht-Kopfteil aus dem Archiv Unterschiedliche Gerätenummern Gerätenummer außerhalb des zulässigen Bereichs. Dateiende gefunden, Benutzereingabe erwartet Fehler beim Beenden, verursacht durch vorhergehende Fehler. Fehler beim Schreiben auf die Standardausgabe Nicht behebbarer Fehler: Programmabbruch.  Extrahiere zusammenhängende Dateien (‚contiguous files‘) als reguläre. Unterschiedliche Dateitypen  GNU „tar“ schreibt mehrere Dateien in ein Archiv auf Band oder Festplatte und
kann einzelne Dateien aus diesem Archiv herausholen.
 GNU-Erweiterungen bei einem inkompatiblen Archiv-Format verlangt. Ungültiges Kommando. Erzeuge negative oktale Kopfteile Gruppenkennung ist unterschiedlich Inode-Nummer außerhalb des zulässigen Bereichs Ungültige Blockgröße Ungültige Gerätenummer Ungültige Inode-Nummer Ungültige Zugriffsrechte angegeben. Ungültiger Benutzer Ungültiger Wert für Recordgröße. Ungültige Bandlänge Ungültiges Datum Ungültiger Wert für "record_size". Dateiname nach -C fehlt. Änderungszeit ist unterschiedlich ‚mode‘ ist unterschiedlich Mehr als ein Datum angegeben. Kein Archiv-Name angegeben Kein neues Medium; halte an.
 Nicht auf ‚%s‘ gelinkt. Die alte Option ‚%c‘ benötigt einen Parameter. Die beiden Optionen ‚-%s‘ und ‚-%s‘ verlangen Standard-Eingabe. Die Optionen ‚-Aru‘ sind nicht kompatibel mit ‚-f -‘. Die Optionen ‚-[0-7][lmh]‘ unterstützt _dieses_ „tar“ nicht. Vorzeitiges Dateiende. Medium #%d für %s einlegen und "Return" drücken:  Lese Checkpoint %d. Lese %s.
 Die Recordgröße  muss ein Vielfaches von %d sein. %s in %s umbenannt Benenne ‚%s‘ zurück in ‚%s‘.
 Benenne ‚%s‘ in ‚%s‘ um.
 Richtung für Positionierung nicht zulässig. Anfangsposition außerhalb des zulässigen Bereichs. Größe ist unterschiedlich Springe zum nächsten Kopfteil. Ersetze %s für unbekanntes Datumsformat %s Symbolischer Link ist unterschiedlich. Symbolischer Verküpfung von %s auf %s. Das sieht nicht wie ein „tar“-Archiv aus. Dieses Programm wird ohne Gewährleistung geliefert, soweit dies gesetzlich zulässig ist.
Sie können es unter den Bedingungen der GNU General Public License weitergeben.
Details dazu enthält die Datei COPYING. Dieser Teil ist nicht an der Reihe. Datum außerhalb des zulässigen Bereichs. Zu viele Fehler, beende. ‚%s --help‘ zeigt weitere Informationen.
 Benutzerkennung ist unterschiedlich Unerwartetes Dateiende im Archiv. Unerwartetes Dateiende in verstümmelten Namen. Unbekanntes Kommando „%s“ beim Zusammensetzen von Namen. Unbekannter Systemfehler. Benutzung: %s [OPTION]
Arbeiten mit einem Bandlaufwerk, Kommandos können von einem anderen Prozess stammen.

  --version    Verionsinformation ausgeben
  --help       Diesen Hilfetext ausgeben
 Zulässige Argumente sind: Prüfe  Fehler bei langem Dateinamen. Fehler bei langem Dateinamen. Teil ‚%s‘ passt nicht zu ‚%s‘. Teil-Nummer zu groß. WARNUNG: Archiv unvollständig WARNUNG: Kein Kopfteil vorhanden. Warnung: Die Option -I ist nicht unterstützt, meinen Sie -j oder -T? Warnung: Die Option -y ist nicht unterstützt, meinen Sie -j? Schreibe Checkpoint %d. Geschrieben von John Gilmore und Jay Fenlason. Von den Optionen ‚-Acdtrux‘ ist nur _eine_ erlaubt. Eine der Optionen ‚-Acdtrux‘ ist notwendig. „ „%s“ Kommando gescheitert. mehrdeutiges Argument %s für %s Block %s:  Block %s: ** Block aus NULlen **
 Block %s: ** Ende der Datei **
 Blockgröße Kindprozess exec/tcp: Service nicht verfügbar. interprocess channel ungültiges Argument %s für %s Kein Speicher mehr rmtd: Kann Speicherplatz für Puffer nicht reservieren.
 rmtd: Ungültiges Kommando '%c'.
 rmtd: Vorzeitiges Dateiende.
 Standardeingabe Standardausgabe Wert %s außerhalb des %s-Bereichs %s..%s Wert %s außerhalb des %s-Bereich %s..%s; ersetze durch %s 