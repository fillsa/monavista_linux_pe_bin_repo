��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  I  ?3  R  �4  �  �5    �8  w   �<  8  R=  ~  �?  �   
A    
B     C  �   *C     �C      �C  "   D  !   )D  &   KD  5   rD  )   �D  >   �D  $   E     6E     KE  $   jE  %   �E     �E     �E     �E  9   �E  $   0F     UF     gF     �F  -   �F  /   �F  3   �F  !    G  *   BG  -   mG     �G  #   �G     �G  )   �G  6    H  +   WH  '   �H     �H     �H  %   �H     I  $   %I  %   JI  &   pI      �I  &   �I     �I  ,   �I     $J     =J     VJ     XJ     ^J     zJ     �J  7   �J  E   �J  /   K  +   LK  8   xK  N   �K  <    L     =L  5   ]L  8   �L     �L  ,   �L  @   M     TM  3   pM     �M     �M  &   �M  -   N  &   2N  #   YN  '   }N      �N     �N  $   �N     �N     O  $   %O     JO  &   `O  "   �O  5   �O  "   �O  $   P  1   (P     ZP  v   lP  3   �P     Q  /   &Q     VQ  $   cQ     �Q     �Q     �Q  %   �Q     �Q     �Q     R     +R     GR     eR     }R     �R     �R     �R     �R     �R  &   S  9   -S  +   gS  9   �S     �S  8   �S     T  	   0T  (   :T     cT  "   |T     �T  )   �T  0   �T     U     )U  -   DU     rU     �U  %   �U  �   �U  &   �V  #   �V     �V  ,   �V     W     $W     >W     \W     xW  �   �W     6X     KX     WX     mX  #   �X     �X  !   �X     �X  =   �X  4   :Y     oY  )   �Y  -   �Y  (   �Y     	Z     Z     'Z  
   DZ  $   OZ     tZ     �Z     �Z  &   �Z     �Z     �Z     �Z      [     ([     C[     ][     i[  (   u[  7   �[     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-11-27 21:06+0100
Last-Translator: Jan Dj�rv <jan.h.d@swipnet.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
 
Blockhantering:
  -b, --blocking-factor=BLOCK    BLOCK x 512 byte per post
      --record-size=ANTAL        ANTAL byte per post, multipel av 512
  -i, --ignore-zeros             ignorera block med enbart nolltecken
                                 (betyder filslut)
  -B, --read-full-records        omblocka vid l�sning (f�r 4.2BSD-r�r)
 
Enhetsval och enhetsbyte:
  -f, --file=ARKIV               anv�nd arkivfil eller enhet ARKIV
      --force-local              arkivfilen �r lokal �ven om namnet har kolon
      --rsh-command=KOMMANDO     anv�nd KOMMANDO ist�llet f�r rsh.
  -[0-7][lmh]                    ange enhet och densitet
  -M, --multi-volume             skapa/visa/extrahera ett flervolymsarkiv
  -L, --tape-length=ANTAL        byt band efter det att ANTAL x 1024
                                 byte skrivits
  -F, --info-script=FIL          k�r kommandofil FIL vid slutet av varje band
                                 (flaggan -M s�tts ocks�)
      --new-volume-script=FIL    samma som -F FIL
      --volno-file=FIL           anv�nd/uppdatera volymnummer i FIL
 
Hantering av filattribut:
      --owner=NAMN             s�tt NAMN som �gare f�r adderade filer
      --group=NAMN             s�tt NAMN som grupp f�r adderade filer
      --mode=R�TTIGHET         s�tt (symbolisk) R�TTIGHET f�r adderade filer
      --atime-preserve         �ndra inte �tkomsttider p� arkiverade filer
  -m, --modification-time      extrahera inte filers modifieringstid
      --same-owner             f�rs�k extrahera filer med samma �gare som i
                               arkivet
      --no-same-owner          extrahera filer med dig sj�lv som �gare
      --numeric-owner          anv�nd alltid tal f�r anv�ndar- och gruppnamn
  -p, --same-permissions       extrahera all �tkomstinformation
      --no-same-permissions    extrahera inte �tkomstinformation
      --preserve-permissions   samma som -p
  -s, --same-order             sortera namn som ska extraheras s� de passar
                               ihop med arkivet
      --preserve-order         samma som -s
      --preserve               samma som b�de -p och -s
 
Obligatoriska argument f�r l�nga flaggor �r obligatoriska �ven f�r korta.
Motsvarande g�ller f�r frivilliga argument.
 
Operationsl�ge:
  -t, --list              visa inneh�llet i arkivet
  -x, --extract, --get    extrahera filer fr�n arkivet
  -c, --create            skapa ett nytt arkiv
  -d, --diff, --compare   visa skillnader mellan filsystemet och arkivet
  -r, --append            l�gg till filer p� slutet av arkivet
  -u, --update            l�gg till filer som �r nyare �n de i arkivet
  -A, --catenate          l�gg till inneh�llet i en arkivfil till arkivet
      --concatenate       samma som -A
      --delete            ta bort fr�n arkivet (ej f�r arkiv p� magnetband!)
 
S�kerhetskopie�ndelse �r "~", om den inte s�tts med --suffix eller
SIMPLE_BACKUP_SUFFIX.
Versionshanteringen kan styras med --backup eller VERSION_CONTROL,
d�r v�rdena kan vara:

  t, numbered     g�r numrerade s�kerhetskopior
  nil, existing   numrerade s�kerhetskopior om det redan finns s�dana,
                   enkla annars
  never, simple   g�r alltid enkla s�kerhetskopior
 
Anv�ndning: %s [FLAGGA]... [FIL]...

Exempel:
  %s -cf arkiv.tar f1 f2  # Skapa arkiv.tar med filerna f1 och f2.
  %s -tvf arkiv.tar       # Visa filer som finns i arkiv.tar, all information.
  %s -xf arkiv.tar        # Extrahera alla filer i arkiv.tar.
       --backup[=KONTROLL]      g�r s�kerhetskopior f�re borttagning,
                               v�lj typ av versionshantering
      --suffix=SUFFIX          g�r s�kerhetskopior f�re borttagning,
                               ers�tt den normala s�kerhetskopie�ndelsen
  l�nk till %s
  n [namn]   Ge ett nytt filnamn f�r n�sta (och efterf�ljande) volym(er)
 q          Avsluta programmet
 !          Starta ett underskal
 ?          Skriv denna lista
  ok�nd filtyp "%s"
 %s forts�tter inte i denna volym %s har fel storlek (%s != %s + %s) %s: Systemanrop "%s" misslyckades %s: Kan inte �ndra r�ttigheter till %s %s: Kan inte byta �gare (chown) till uid %lu, gid %lu %s: Kan inte skapa symbolisk l�nk till %s %s: Kan inte extrahera -- filen forts�tter fr�n en annan volym %s: Kan inte skapa h�rd l�nk till %s %s: Kan inte ta bort %s: Kan inte byta namn till %s %s: Kunde inte flytta (seek) till %s %s: Kan inte symboliskt l�nka till %s %s: Tar bort %s
 %s: Katalogen har bytt namn %s: Katalogen �r ny %s: Katalog bytte namn innan dess status kunde extraheras %s: Fil borttagen innan vi l�ste den %s: Ogiltig grupp %s: Fanns inte i arkivet %s: Utel�mnad %s: Ov�ntad inkonsistens n�r katalog skapades %s: Ok�nd filtyp "%c" j�mf�rd som en normal fil %s: Ok�nd filtyp "%c", extraherad som en normal fil %s: Ok�nd filtyp; filen ignorerad %s: Varning: Systemanrop "%s" misslyckades %s: Varning: Kunde inte flytta (seek) till %s %s kunde inte s�kerhetskopieras %s: inneh�ller ogiltigt volymnummer %s: door-fil ignorerad %s: Fil �ndrades under tiden vi l�ste den %s: filen finns p� ett annat filsystem; inte arkiverad %s: filen �r sj�lva arkivet; inte arkiverad %s: filen �r of�r�ndrad; inte arkiverad %s: otill�ten flagga -- %c
 %s: ogiltig flagga -- %c
 %s: flagga "%c%s" tar inget argument
 %s: flaggan "%s" �r tvetydig
 %s: flagga "%s" kr�ver ett argument
 %s: flagga "--%s" tar inget argument
 %s: flagga "-W %s" tar inget argument
 %s: flaggan "-W %s" �r tvetydig
 %s: flaggan kr�ver ett argument -- %c
 %s: socketfil ignorerad %s: tidsv�rde %s �r %lu sekunder i framtiden %s: ok�nd flagga "%c%s"
 %s: ok�nd flagga "--%s"
 " (r�r) --Forts�tter vid byte %s--
 --Kodade filnamn--
 --Volymhuvud--
 Arkivets "base-256"-v�rde �r utanf�r intervallet f�r %s Arkivet inneh�ller %.*s d�r ett numeriskt v�rde av typ %s f�rv�ntades Arkivet inneh�ller f�r�ldrade "base-64"-huvuden Arkivet �r inte m�rkt f�r att st�mma med %s Arkivets oktala v�rde %.*s �r utanf�r intervallet f�r %s Arkivets oktala v�rde %.*s �r utanf�r intervallet f�r %s, antar tv�-komplement Arkivets "base-64"-str�ng "%s" �r utanf�r intervallet f�r %s Vid bandets b�rjan, avslutar nu F�rs�ker extrahera symboliska l�nkar som h�rda l�nkar Blanka i huvud d�r numeriskt v�rde av typ %s f�rv�ntades Kan inte allokera buffert Kunde inte allokera minne f�r blockfaktor %d Kunde inte s�ka bak�t i arkivfilen, den kan vara ol�sbar utan -i Kan inte byta arbetskatalog Kan inte kombinera --listed-incremental med --newer Kan inte exekvera fj�rrskal Kan inte spara arbetskatalog Komprimerade arkiv kan inte uppdateras Kan inte anv�nda komprimerade flervolymsarkiv Komprimerade arkiv kan inte verifieras Flervolymsarkiv kan inte verifieras Kan inte verifiera standard in/ut-arkiv Motstridiga komprimeringsflaggor Inneh�llet �r olika V�grar fegt att skapa ett tomt arkiv Skapar katalog: Tidsfil hittades inte Tar bort icke-huvuddata fr�n arkivet Enhetsnummer �r olika Enhetsnummer utanf�r giltigt intervall Filslut vid f�rv�ntat anv�ndarsvar Avslut med felslutstatus f�rdr�jd fr�n f�reg�ende fel Fel vid skrivning till standard ut Felet kan inte �tg�rdas, avslutar nu Extraherar sammanh�ngande filer som vanliga filer Filtyper �r olika GNU tar sparar m�nga filer tillsammans i ett band- eller fil-arkiv och
kan �terskapa individuella filer fr�n arkivet.
 GNU-till�gg �nskade i ett inkompatibelt arkivformat Ok�nt kommando Genererar negativa oktala v�rden i arkivhuvudet Gid �r olika Inodnummer utanf�r giltigt intervall Ogiltig blockfaktor Ogiltigt enhetsnummer Ogiltigt inodnummer Ogiltiga r�ttigheter givna f�r flagga Ogiltig �gare Ogiltigt v�rde p� poststorlek Ogiltig tape-l�ngd Ogiltigt v�rde p� tidsv�rde Ogiltigt v�rde p� record_size Filnamn efter -C saknas Modifieringstiderna �r olika R�ttigheterna �r olika Mer �n en datumgr�ns Arkivnamn saknas Ingen ny volym; avslutar.
 Inte l�nkad till %s Gammal flagga "%c" kr�ver ett argument Flaggorna "-%s" och "-%s" vill b�da l�sa fr�n standard in Flaggorna "-Aru" �r inkompatibla med "-f -" Flaggorna "-[0-7][lmh]" st�ds inte av *detta* tar-program F�r tidigt filslut G�r iordning volym nummer %d f�r %s och tryck vagnretur: L�ser kontrollpunkt %d L�ser %s
 Poststorlek m�ste vara en multipel av %d Bytte namn p� %s till %s Byter namn p� %s tillbaka till %s
 Byter namn p� %s till %s
 Positioneringsriktning har ogiltigt v�rde Positioneringsv�rde �r utanf�r giltigt intervall Storlekarna �r olika Hoppar till n�sta filhuvud Anv�nder %s ist�llet f�r ok�nt datumformat %s Symboliska l�nkar �r olika %s symboliskt l�nkad till %s Det h�r ser inte ut som ett tar-arkiv Detta program kommer UTAN GARANTI, i den m�n lagen s� till�ter.
Du f�r �terdistribuera det under villkoren i GNU General Public License,
se filen COPYING f�r ytterligare information. Denna volym kommer inte i r�tt ordning Tidsv�rde utanf�r giltigt intervall F�r m�nga fel, avslutar F�rs�k med "%s --help" f�r mer information.
 Uid �r olika Ov�ntat filslut i arkivet Ov�ntat filslut i kodade namn Ok�nt avkodningskommando %s Ok�nt systemfel Anv�ndning: %s [FLAGGA]
Manipulera en bandstation genom att ta emot kommandon fr�n en annan process.

  --version  Visa versionsinformation.
  --help  Visa denna hj�lptext.
 Giltiga argument �r: Verifierar  Fel p� ett l�ngt namn Fel p� ett l�ngt namn Volym %s �verensst�mmer inte med %s Volymnummer fl�dade �ver VARNING: Arkivet �r ofullst�ndigt VARNING: Inget volymhuvud Varning: flaggan -I st�ds inte, du kanske menade -j eller -T? Varning: flaggan -y st�ds inte, du kanske menade -j? Skriver kontrollpunkt %d Skrivet av John Gilmore och Jay Fenlason. Du kan endast ange en av flaggorna "-Acdtrux" Du m�ste ange en av flaggorna "-Acdtrux" " kommandot "%s" misslyckades tvetydigt argument %s f�r %s block %s:  block %s: ** Block av nolltecken **
 block %s: ** Filslut **
 blockstorlek barnprocess exec/tcp: Tj�nsten �r inte tillg�nglig interprocesskanal ogiltigt argument %s f�r %s minnet slut rmtd: Kan inte allokera buffert
 rmtd: Ok�nt kommando "%c"
 rmtd: F�r tidigt filslut
 standard in standard ut %s �r utanf�r intervallet f�r %s: %s..%s %s �r utanf�r intervallet f�r %s: %s..%s, byter till %s 