��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  T  ?3  p  �4  �  6  n  �8  �   ]<    �<  �  ?  �   �@  �   �A     �B  �   �B     @C  #   TC  (   xC     �C     �C  <   �C  ,   D  C   ;D  !   D     �D     �D     �D  *   �D     E     #E     BE  8   WE      �E     �E     �E     �E  7   �E  6   'F  8   ^F  (   �F     �F  "   �F  *   �F  (   (G     QG  "   cG  /   �G  -   �G      �G     H     H  *   7H     bH  !   H  (   �H  +   �H     �H  "   I     9I  '   NI     vI     �I     �I     �I     �I     �I     �I  *   �I  :   $J  *   _J  -   �J  +   �J  B   �J  9   'K  '   aK  6   �K  9   �K  "   �K  1   L  A   OL     �L  3   �L     �L     M  &   M  A   FM  (   �M  7   �M  4   �M     N     ;N  '   RN     zN     �N     �N     �N     �N  0   �N  4   +O  &   `O  "   �O  4   �O     �O  Y   �O  4   OP     �P  !   �P     �P     �P     �P     �P     Q     +Q     HQ     UQ     kQ     ~Q     �Q     �Q     �Q     �Q     �Q     R     /R     OR  &   bR  7   �R  )   �R  H   �R     4S  1   MS     S  	   �S  (   �S     �S     �S     �S     T     #T     @T     XT  &   oT     �T     �T     �T  �   �T  '   �U     �U     �U  '   V     .V     FV  &   dV  -   �V     �V  �   �V     rW     �W     �W     �W  *   �W     �W  "   	X  !   ,X  E   NX  <   �X     �X  )   �X  4   Y  '   HY     pY     rY     �Y  	   �Y     �Y     �Y     �Y      Z  #   Z     0Z     CZ     _Z  )   rZ     �Z     �Z     �Z     �Z     �Z  -   [     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: GNU tar 1.13.25
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2002-03-27 13:57+0100
Last-Translator: Keld J�rn Simonsen <keld@dkuug.dk>
Language-Team: Danish <dansk@klid.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
blokh�ndtering:
  -b, --blocking-factor=ENHEDER  s�t blokst�rrelse ENHEDER x 512 byte
      --record-size=ST�RRELSE    ST�RRELSE byte per enhed (deleligt mad 512)
  -i, --ignore-zeros             ignor�r blokke som indeholder nuller
                                 (betyder filafslutning)
  -B, --read-full-records        omblok ved l�sning (for 4.2BSD datakanaler)
 
Enhedsvalg og enhedsskifte:
  -f, --file=ARKIV               brug arkivfil eller enhed ARKIV
      --force-local              arkivfil er lokal selv om den har et kolon
      --rsh-command=KOMMANDO     brug KOMMANDO i stedet for rsh
  -[0-7][lmh]                    angiv enhed og t�thed
  -M, --multi-volume             behandl arkivet som et arkiv af flere delarkiver
  -L, --tape-length=NUMMER       skift b�nd efter at NUMMER x 1024 byte er
                                 skrevet
  -F, --info-script=FIL          k�r kommandofil FIL ved slutningen af hvert
                                 b�nd (s�tter -M automatisk)
      --new-volume-script=FIL    samme som -F FIL
      --volno-file=FIL           brug/opdat�r delarkivnummeret i FIL
 
H�ndtering af filattributter:
      --owner=NAVN             brug NAVN som ejer for nye filer
      --gruppe=NAVN            brug NAVN som gruppe for nye filer
      --mode=OKTAL             brug OKTAL som modus for nye filer
      --atime-preserve         �ndre ikke accesstider p� tilf�jede filer
  -m, --modification-time      udtr�k ikke modificeringstiden
      --same-owner             fors�g at udtr�kke filer med samme ejer
      --numeric-owner          brug nummer for bruger/gruppe-navn
  -p, --same-permissions       fors�g at udtr�kke filer med samme
                               filbeskyttelse
      --preserve-permissions   samme som -p
  -s, --same-order             sorter navn som skal udtr�kkes s�dan at
                               de passer med arkivet
      --preserve-order         samme som -s
      --preserve               samme som b�de -p og -s
 
Dersom et langt flag har et obligatorisk argument, er argumentet ogs�
obligatorisk for det korte flag. Tilsvarende g�lder dersom argumentet
kan sl�jfes.
 
Hovedoperationsmodi:
  -t, --list              list indholdet af arkivet
  -x, --extract, --get    udtr�k filer fra arkivet
  -c, --create            oprette et nyt arkiv
  -d, --diff, --compare   vis forskelle mellem arkivet og filsystemet
  -r, --append            tilf�j filer ved slutningen af arkivet
  -u, --update            tilf�j kun filer som er nyere end dem i arkivet
  -A, --catenate          f�j en arkivfil til arkivet
      --concatenate       samme som -A
      --delete            slet fra arkivet (ikke for arkiv p� b�nd!)
 
Suffikset for sikkerhedskopiering er '~', med mindre det er sat med --suffix
eller SIMPLE_BACKUP_SUFFIX.  Versionskontrol kan s�ttes med --backup eller
VERSION_CONTROL.  Gyldige v�rdier er:

  t, numbered     lav nummererede sikkerhedskopier
  nil, existing   nummererede, dersom nummererede sikkerhedskopier eksisterer,
                  ellers simple
  never, simple   lav simple sikkerhedskopier
 
Brug: %s [OPTION]... [FILE]...

Eksempler:
  %s -cf arkiv.tar foo bar  # Skab arkiv.tar fra filerne foo og bar.
  %s -tvf arkiv.tar         # List alle filer i arkiv.tar udf�rligt.
  %s -xf arkiv.tar          # Udtr�k alle filer fra arkiv.tar.
       --backup[=KONTROL]       lav sikkerhedskopi f�r sletning, med
                               versionskontrol
      --suffix=SUFFIKS         lav sikkerhedskopi f�r sletning, med
                               overstyring af det almindelige suffiks
  l�nke til %s
  n [navn]   Giv et filnavn for n�ste (og efterf�lgende) delarkiv(er)
 q          Afbryd tar
 !          Start en skal
 ?          Skriv denne list
  ukendt filtype %s
 %s forts�tter ikke i dette delarkiv %s har forkert st�rrelse (%s != %s + %s) %s: Kan ikke %s %s: Kan ikke �ndre modus til %s %s: Kan ikke �ndre ejerskab til bruger-ID %lu, gruppe-ID %lu %s: Kan ikke oprette symbolsk l�nke til '%s' %s: Kan ikke udtr�kke -- filen er fortsat fra et tidligere delarkiv %s: Kan ikke oprette l�nke til %s Kan ikke slette %s %s: Kan ikke omd�be til %s %s: Kan ikke s�ge til %s %s: Kan ikke oprette symbolsk l�nke til %s %s: Sletter %s
 %s: Kataloget er blevet omd�bt %s: Kataloget er nyt %s: Katalog omd�bt f�r dets status kunne blive udtrukket %s: Fil fjernet f�r vi l�ste den %s: ugyldig gruppe %s: Blev ikke fundet i arkivet Udelader %s %s: Uventet uoverensstemmelse ved oprettelse af katalog %s: Ukendt filtype '%c', diff-et som en almindelig fil %s: Ukendt filtype '%c', udtrukket som en almindelig fil %s: Ukendt filtype; filen blev ignoreret %s: Advarsel: Kan ikke %s %s: Advarsel: Kan ikke s�ge til %s %s: Kunne ikke sikkerhedskopiere denne fil %s: indeholder ugyldigt delarkivs-nummer %s: d�r ignoreret %s: Fil �ndredes mens vi l�ste den %s: fil er p� et andet filesystem.  Ikke lagret %s: fil er det samme som arkivet; ikke lagret %s: file er u�ndret; ikke lagret %s: ulovligt flag -- %c
 %s: ugyldigt flag -- %c
 %s: flag '%c%s' tillader ikke et argument
 %s: flag '%s' er flertydigt
 %s: flag '%s' kr�ver et argument
 %s: flag '%s' tillader ikke et argument
 %s: flag '-W %s' tillader ikke et argument
 %s: flag '-W %s' er flertydigt
 %s: flag kr�ver et argument -- %c
 %s: sokkel ignoreret %s: tidsstempel %s er %lu s i fremtiden %s: ukendt flag '%c%s'
 %s: ukendt flag '--%s'
 ' (datakanal) --Forts�tter ved byte %s--
 --�delagte filnavne--
 --Volumenhoved--
 Arkiv base-256 v�rdi er uden for %s omr�de Arkiv indeholder %.*s hvor numerisk %s v�rdi var forventet Arkiv indeholder for�ldede base-64 hoveder Arkivet er ikke navngivet til at passe med %s Arkiv oktal v�rdi %.*s er udenfor %s omr�de Arkiv oktal v�rdi %.*s er udenfor %s omr�de; antager to-komplement Arkiv base-64 streng med fortegn %s er uden for %s omr�de Ved begyndelsen af b�ndet, afslutter nu Fors�ger at udtr�kke symbolske l�nker som h�rde l�nker Blank-tegn i hovedet hvor numerisk %s v�rdi var forventet Kan ikke allokere plads til buffer Kunne ikke allokere hovedlager for blok-faktor %d Kunne ikke g� tilbage i arkivfilen. Den kan v�re ul�selig uden -i Kan ikke �ndre arbejdskatalog Kan ikke kombinere --listed-incremental med --newer Kan ikke eksekvere fjern skal Kan ikke gemme arbejdskatalog Kan ikke opdatere komprimerede arkiver Kan ikke bruge komprimerede arkiver som g�r over flere delarkiver Kan ikke verificere komprimerede arkiver Kan ikke verificere arkiv som g�r over flere delarkiver Kan ikke verificere standard-ind/standard-ud arkiver Konflikt i komprimeringsflag Indhold er forskelligt N�gter st�digt at oprette et tomt arkiv Opretter katalog: Datofil ikke fundet Sletter ikke-hoved fra arkivet Enhedsnummer er forskellig Enhedsnummer er uden for omr�de Filafslutning hvor svar fra bruger var forventet Udsat fejl-afslutning som resultat af tidligere fejl Fejl ved skrivning til standard uddata Fejl kan ikke reddes; afslutter nu Udtr�kker sammenh�ngende filer som almindelige filer Filtype er forskellig GNU 'tar' gemmer mange filer i et arkiv, og kan hente enkeltst�ende
filer ud af arkivet.
 GNU-funktioner fors�gt p� inkompatibelt arkiv-format Ugyldig kommando Genererer negative oktale hoveder Gruppe-ID er forskellig Inode-nummer uden for omr�de Ugyldig blokfaktor Ugyldigt enhedsnummer Ugyldigt inode-nummer Ugyldig modus angivet i flag Ugyldig ejer Ugyldig postst�rrelse Ugyldig b�ndl�ngde Ugyldigt tidsstempel Ugyldig v�rdi for record_size Mangler filnavn efter -C Modificeringstid er forskellig Modus er forskellig Mere end �n gr�nse-dato Arkivnavn er ikke opgivet Intet nyt delarkiv; afslutter.
 Ikke l�nket til %s Gammelt flag '%c' beh�ver et argument. Flagene '-%s' and '-%s' vil begge have standard inddata Flagene '-Aru' er inkompatible med '-f -' Flagene '-[0-7][lmh]' underst�ttes ikke af *denne* implementering af tar For tidlig filafslutning Klarg�r delarkiv nummer %d for %s og tryk retur:  L�ser kontrolpunkt %d L�ser %s
 Postst�rrelse skal v�re deleligt med %d. Omd�bt %s til %s Omd�ber %s tilbage til %s
 Omd�ber %s til %s
 S�geretning uden for omr�de S�geposition uden for omr�de St�rrelse er forskellig Hopper til n�ste hoved Erstatter %s for ukendt dato-format %s Symbolsk l�nke er forskellig L�nkede %s symbolsk til %s Dette ligner ikke et tar-arkiv Dette program kommer UDEN GARANTI, i den grad som dette er tilladt ved lov.
Du m� redistribuere det under betingelsene i GNU General Public License;
se filen kaldet COPYING for detaljer. Dette delarkiv kommer ude af r�kkef�lge Tidsstempel uden for omr�de For mange fejl, afslutter Pr�v '%s --help' for mere information.
 Bruger-ID er forskellig Uventet filslutning i arkivet Uventet filafslutning i �delagte navne Ukendt kommando %s ved rekonstruering af navn Ukendt systemfejl Brug: %s [FLAG]
Behandl en b�ndstation, med kommandoer fra en anden proces.

      --help            vis denne hj�lpetekst
      --version         vis programversion
 Gyldige argumenter er: Verificering  Fejl p� et langt navn Fejl p� et langt navn Volumenet '%s' stemmer ikke overens med %s Overl�b p� delarkiv-nummer ADVARSEL: Arkivet er ufuldst�ndigt ADVARSEL: Manglende delarkivhoved Advarsel: -I flaget er ikke underst�ttet; m�ske mente du -j eller -T? Advarsel: -y flaget er ikke underst�ttet; m�ske mente du -j? Skriver kontrolpunkt %d Skrevet af John Gilmore and Jay Fenlason. Du kan ikke angive mere end et af '-Acdtrux'-flagene Du skal angive et af '-Acdtrux'-flagene ' '%s'-kommando mislykkedes flertydigt argument '%s' for %s blok %s:  blok %s: ** Blok med NUL-er **
 blok %s: ** Slut p� fil **
 blokst�rrelse underproces exec/tcp: Tjeneste ikke tilg�ngelig mellemproces-kanal ugyldigt argument %s for %s hovedlager opbrugt rmtd: Kan ikke allokere plads til buffer
 rmtd: Ugyldig kommando %c
 rmtd: For tidlig filafslutning
 standard-ind standard-ud v�rdi %s ud af %s omr�de %s..%s v�rdi %s ud af %s omr�de %s..%s; erstatter %s 