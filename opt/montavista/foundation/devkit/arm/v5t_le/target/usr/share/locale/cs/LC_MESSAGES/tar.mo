��    �      �  �   �      �  -  �  �  �  �  @  �   �  -  m  7  �    �  �   �     r  �          "   /  $   R     w     �  /   �     �  ;   �     .     I     [     s     �     �     �     �  "   �     
          5  2   B  1   u  4   �  #   �               "   6   "   Y      |      �   1   �   #   �   !   !     $!     >!  ,   X!     �!  %   �!  ,   �!  -   �!      $"  &   E"     l"  (   "     �"     �"     �"     �"     �"     #     ##  )   6#  5   `#  ,   �#     �#  +   �#  F   $  3   V$  "   �$  5   �$  0   �$     %  -   1%  >   _%     �%  0   �%     �%     &  !   )&  +   K&  !   w&  #   �&  "   �&     �&      '  ,   '     ='     Q'      e'     �'     �'  !   �'  '   �'  #   (  %   %(  ,   K(     x(  {   �(  2   )     9)  !   I)     k)     w)     �)     �)     �)     �)     �)     �)     *     '*     :*     X*     s*     �*     �*     �*     �*     �*  %   �*  0   +  +   E+  1   q+     �+  *   �+     �+     �+  %   ,     ),     :,     R,     e,     �,     �,     �,  *   �,     �,     �,  %   -  �   3-     �-     
.     ".  &   <.     c.     o.     �.     �.     �.  �   �.     r/     �/     �/     �/     �/     �/     �/     0  D   *0  >   o0     �0  )   �0  3   �0  .    1     O1     Q1     e1  
   �1     �1     �1  
   �1     �1     �1     2     2     22  #   C2     g2     �2     �2     �2     �2  0   �2  S  �2  �  H4  �  !6  #  9  �   1>  +  �>  �  A    �B  �   �C     �D  �   �D     �E     �E  "   �E     �E     �E  0   F  +   9F  :   eF  $   �F     �F     �F  '   �F  )   G     DG     QG     mG  )   �G     �G     �G     �G  5   �G  =   H  ;   [H  )   �H     �H  6   �H  '   I  "   7I     ZI  !   oI  7   �I  "   �I  &   �I     J     /J  1   KJ  #   }J  $   �J  1   �J  2   �J  &   +K  %   RK     xK  +   �K     �K     �K     �K     �K     �K     L     6L  '   KL  B   sL  *   �L  6   �L  -   M  L   FM  )   �M     �M  4   �M  D   N  $   PN  A   uN  4   �N     �N  /   
O  !   :O     \O  &   {O  /   �O      �O  %   �O      P  !   :P     \P  &   jP     �P  6   �P  (   �P     Q     Q  2   8Q     kQ  %   �Q  %   �Q  8   �Q     R  �   #R  ;   �R     S  #   S     6S     BS     [S     zS     �S     �S     �S     �S     �S     �S  #   T     4T     NT     nT     |T     �T     �T     �T      �T  7   U  6   =U  2   tU     �U  6   �U     �U     V  %   V     BV     ^V     {V  $   �V  (   �V     �V     �V  +   W     ;W     TW  "   fW  �   �W  )   ~X     �X     �X  -   �X     Y     Y  $   .Y  0   SY     �Y  �   �Y     <Z     SZ     \Z     {Z     �Z      �Z     �Z     �Z  C   [  ;   ^[     �[  $   �[  5   �[  )   \     9\     ;\  #   N\  	   r\     |\     �\     �\     �\  !   �\     �\      ]     ]  +   /]     []     t]     �]     �]  (   �]  9   �]     �           G   C      !       (      3          5   6   �      �   d       w       a       N       I       J       )   ^              B   �   �   :   V       [   D   �   �           y      ;              U       �   �             _       �   �   j   O   z   W   H               �   $   i   �   �   �       M   |   K   �   �   l      b   ]              v   �           c   �   ?               @       8   �       4   Y   7   &       �              �   0   �      �   �   �   L       %           s           S   �   =   �   P   Q   <   k   �   2       �           �          E   �   �   �   "   #   '   �      {       �   9   Z       �       �       }   `   �   u                               -   F      h   
   g   *   �   +   �   �   �          n   �      m           �   x                 1   �      �   /   �   �   o   �   >   �       �   \                     ,   q   	   f           A   p   e   �      T       �   �   r   ~       �       �      X   R   .       t    
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
 %s: Directory has been renamed %s: Directory is new %s: File removed before we read it %s: Invalid group %s: Not found in archive %s: Omitting %s: Unexpected inconsistency when making directory %s: Unknown file type '%c', diffed as normal file %s: Unknown file type '%c', extracted as normal file %s: Unknown file type; file ignored %s: Warning: Cannot %s %s: Warning: Cannot seek to %s %s: Was unable to backup this file %s: contains invalid volume number %s: door ignored %s: file changed as we read it %s: file is on a different filesystem; not dumped %s: file is the archive; not dumped %s: file is unchanged; not dumped %s: illegal option -- %c
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
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: tar 1.13.21
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2001-09-01 10:55+0200
Last-Translator: Vladimir Michl <Vladimir.Michl@seznam.cz>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
 
Bloky u za��zen�:
  -b, --blocking-factor=BLOK�    BLOK� x 512 bajt� na z�znam
      --record-size=VELIKOST     VELIKOST bajt� na z�znam, n�sobek 512
  -i, --ignore-zeros             ignoruje nulov� bloky v archivu,
                                 kter� norm�ln� znamenaj� EOF.
  -B, --read-full-records        kdy� nen� p�e�teno tolik bajt�,
                                 kolik je po�adov�no, zkou�� do��st zbytek
                                 (vhodn� pro roury)
 
V�b�r za��zen�:
  -f, --file=ARCHIV              pracuje s archivem nebo za��zen�m ARCHIV
      --force-local              archivn� soubor je lok�ln�, dokonce i kdy�
                                 obsahuje v n�zvu dvojte�ku
      --rsh-command=P��KAZ       pou�ije P��KAZ pro p�ihl�en� m�sto rsh
  -[0-7][lmh]                    zad�n� za��zen� a hustoty
  -M, --multi-volume             pr�ce s v�cesvazkov�m archivem
  -L, --tape-length=��SLO        vym�n� p�sku po zaps�n� ��SLO x 1024 bajt�
  -F, --info-script=SOUBOR       spust� script na konci ka�d� p�sky
                                 (zahrnuje i -M)
      --new-volume-script=SOUBOR stejn� jako -F SOUBOR
      --volno-file=SOUBOR        pou�ije/aktualizuje ��slo svazku v SOUBORu
 
Zpracov�n� atribut� soubor�:
      --owner=JM�NO            pou�ije JM�NO jako vlastn�ka p�id�van�ch soubor�
      --group=JM�NO            pou�ije JM�NO jako skupinu p�id�van�ch soubor�
      --mode=ZM�NY             pou�ije jako pr�va (symbolick�) p�id�van�ch
                               soubor�
      --atime-preserve         nem�n� p��stupov� �as na zpracov�van�ch
                               souborech
  -m, --modification-time      u rozbalov�van�ch soubor� nenastav� �as
                               posledn� modifikace souboru z archivu
      --same-owner             u rozbalov�van�ch soubor� zkou�� nastavit
                               stejn�ho vlastn�ka jako je v archivu
      --no-same-owner          rozbal� soubory a v�echny budou vlastn�n� V�mi
      --numeric-owner          v�dy pou��v� ��sla pro jm�na vlastn�ka/skupiny
  -p, --same-permissions       u rozbalov�van�ch soubor� nastav� stejn�
                               pr�va, jak� maj� v archivu
      --no-same-permissions    p�i rozbalov�n� nenastavuje pr�va
      --preserve-permissions   stejn� jako -p
  -s, --same-order             se�azen� jmen soubor� pro rozbalen� je
                               stejn� s archivem
      --preserve-order         stejn� jako -s
      --preserve               stejn� jako zad�n� -p a -s
 
  Jestli�e dlouh� p�ep�na�e maj� povinn� argument, pak tento argument je
povinn� i u jejich kr�tk�ch forem. Obdobn� je tomu v p��pad�, kdy je argument
nepovinn�.
 
Hlavn� funkce:
  -t, --list              vyp��e obsah archivu
  -x, --extract, --get    vyzvede soubor(y) z archivu
  -c, --create            vytvo�� nov� archiv
  -d, --diff, --compare   nalezne rozd�ly mezi archivem a souborov�m syst�mem
  -r, --append            p�id� soubory na konec archivu
  -u, --update            p�id� pouze soubory nov�j��, ne� jsou v archivu
  -A, --catenate          p�id� soubory z tar archivu do archivu
      --concatenate       stejn� jako -A
      --delete            ma�e z archivu (nefunguje na magnetick�ch p�sk�ch)
 
  P��pona z�lo�n�ch soubor� bude `~', pokud nen� nastavena pomoc� --suffix
nebo prom�nn� SIMPLE_BACKUP_SUFFIX. Jak se maj� tvo�it z�lo�n� kopie, m��e b�t
nastaveno pomoc� p�ep�na�e --backup nebo prom�nn� VERSION_CONTROL. Hodnoty
mohou b�t:

  t, numbered     tvo�� ��slovan� z�lo�n� kopie
  nil, existing   ��slovan�, jestli�e ji� ��slovan� z�lo�n� kopie
                  existuj�, jinak tvo�� jednoduch�
  never, simple   tvo�� v�dy jednoduch� z�lo�n� kopie soubor�
 
Pou�it�: %s [P�EP�NA�]... [SOUBOR]...

P��klady:
  %s -cf archiv.tar foo bar  # Vytvo�� archiv.tar ze soubor� foo a bar.
  %s -tvf archiv.tar         # Podrobn� vyp��e v�echny soubory v archiv.tar.
  %s -xf archiv.tar          # Rozbal� v�echny soubory z archive.tar.
       --backup[=TYP]           zp�sob z�lohov�n� soubor�, p�ed jejich p�eps�n�m
      --suffix=P��PONA         z�lohuje p�ed p�eps�n�m (smaz�n�m), jako p��ponu
                               u z�lo�n�ch soubor� pou�ije P��PONU
  odkaz na %s
  n [name]   Zad�n� nov�ho n�zvu pro dal�� (a n�sleduj�c�) svazek(ky)
 q          Ukon�en� programu tar
 !          Vytvo�en� podshell
 ?          Vyp�s�n� t�to n�pov�dy
  nezn�m� souborov� typ %s
 %s nepokra�uje na tomto svazku %s je �patn� d�lky (%s != %s + %s) %s: Nelze %s %s: Pr�va nelze zm�nit na %s %s: Vlastnictv� nelze zm�nit na uid %lu, gid %lu %s: Symbolick� odkaz na `%s' nelze vytvo�it %s: Nelze rozbalit -- soubor je pokra�ov�n�m jin�ho svazku %s: Pevn� odkaz na %s nelze vytvo�it %s: Nelze smazat %s: nelze p�ejmenovat na %s %s: Nelze zm�nit pozici v souboru na %s %s: Symbolick� odkaz na %s nelze vytvo�it %s: Ma�u %s
 %s: Adres�� byl p�ejmenov�n %s: Adres�� je nov� %s: Soubor smaz�n d��ve ne� mohl b�t �ten %s: Neplatn� skupina %s: V archivu nenalezen %s: Vynech�v�m %s: Neo�ek�van� inkonzistence, p�i vytv��en� adres��e %s: Nezn�m� typ souboru '%c', porovn�v�n jako norm�ln� soubor %s: Nezn�m� typ souboru `%c', rozbalen jako norm�ln� soubor %s: Nezn�m� typ souboru; soubor ignorov�n %s: Varov�n�: Nelze %s %s: Varov�n�: Ukazatel v souboru nelze p�em�stit na %s %s: Tento soubor nebylo mo�n� z�lohovat %s: obsahuje neplatn� ��slo svazku %s: dve�e ignorov�ny %s: soubor byl b�hem �ten� zm�n�n %s: soubor je na jin�m souborov�m syst�mu; nearchivov�n %s: soubor je archiv; nearchivov�n %s: soubor nen� zm�n�n; neaktualizov�n %s: nezn�m� p�ep�na� -- %c
 %s: nezn�m� p�ep�na� -- %c
 %s: p�ep�na� `%c%s' mus� b�t zad�n bez argumentu
 %s: p�ep�na� `%s' nen� jednozna�n�
 %s: p�ep�na� `%s' vy�aduje argument
 %s: p�ep�na� `--%s' mus� b�t zad�n bez argumentu
 %s: p�ep�na� `-W %s' mus� b�t zad�n bez argumentu
 %s: p�ep�na� `-W %s' nen� jednozna�n�
 %s: p�ep�na� vy�aduje argument -- %c
 %s: soket ignorov�n %s: �asov� zna�ka %s je %lu s v budoucnosti %s: nezn�m� p�ep�na� `%c%s'
 %s: nezn�m� p�ep�na� `--%s'
 ' (roura) --Pokra�ov�no od %s bajtu--
 --Rozd�len� n�zev souboru--
 --Hlavi�ka svazku--
 Hodnota base-256 je mimo rozsah typu %s Archiv obsahuje %.*s tam, kde je o�ek�v�na ��seln� hodnota typu %s Archiv obsahuje zastaral� base-64 hlavi�ky Pro vyhodnocen� vzorku `%s' mus� b�t archiv pojmenov�n Osmi�kov� hodnota %.*s typu %s je mimo rozsah Osmi�kov� hodnota %.*s typu %s je mimo rozsah; p�i�azuji dvojkov� complement Base-64 �et�zec %s je mimo rozsah typu %s P�ska na za��tku, kon��m Zkou��m rozbalit symbolick� odkazy jako pevn� odkazy Mezery v hlavi�ce na m�st�, kde je o�ek�v�na ��seln� hodnota typu %s M�sto pro buffer nen� mo�n� alokovat Pro blokov� faktor (blok� na z�znam) %d nen� mo�n� alokovat pam� V archivu se nelze vr�tit, bez -i m��e b�t ne�iteln� Pracovn� adres�� nelze zm�nit --listed-incremental a --newer nelze kombinovat Vzd�len� shell nen� mo�n� spustit Pracovn� adres�� nelze uchovat Komprimovan� archiv nelze aktualizovat V�cesvazkov� komprimovan� archiv nelze vytvo�it Komprimovan� archiv nelze ov��it V�cesvazkov� archiv nen� mo�n� ov��it Stdin/Stdout archiv nelze ov��it Odporuj�c� si kompresn� p�ep�na�e Obsah se li�� Vytvo�en� pr�zdn�ho archivu odm�tnuto. Vytv���m adres��: Soubor ze kter�ho se m� vz�t datum a �as nebyl nalezen Z archivu je maz�no to, co nen� hlavi�ka ��slo za��zen� se li�� ��slo za��zen� je mimo rozsah M�sto u�ivatelsk� odpov�di byl zad�n konec souboru Za b�hu programu nastala chyba Chyba p�i z�pise na standardn� v�stup Z chyby se nelze zotavit: ukon�uji se Souvisle ulo�en� soubory rozbaluji jako oby�ejn� soubory Typ souboru se li��   GNU `tar' je archiva�n� program. Ukl�d� soubory do archivu na p�sku nebo 
disk. Z archivu dok�e rozbalit jak cel� hierarchie soubor�, tak i jednotliv�
soubory.
 GNU roz���en� po�adov�ny na nekompatibiln�m form�tu archivu Nezn�m� p��kaz Generuji z�porn� osmi�kov� hlavi�ky Gid se li�� ��slo i-uzlu mimo rozsah Neplatn� po�et bajt� na z�znam Neplatn� ��slo za��zen� Neplatn� ��slo i-uzlu Zad�na chybn� pr�va Neplatn� vlastn�k Chybn� velikost z�znamu Neplatn� d�lka p�sky Neplatn� �as souboru Chybn� hodnota pro velikost z�znamu Za -C chyb� n�zev souboru �as posledn� modifikace se li�� Pr�va se li�� V�ce ne� jedeno po��te�n� datum N�zev archivu nebyl zad�n Nen� nov� svazek; kon��m.
 Nen� odkazem na %s P�ep�na� `%c' vy�aduje argument. P�ep�na�e `-%s' a `-%s' oba dva cht�j� standardn� vstup P�ep�na�e `-Aru' jsou neslu�iteln� s p�ep�na�em `-f -' P�ep�na� `-[0-7][lmh]' nen� podporov�n t�mto tarem P�ed�asn� konec souboru P�ipravte svazek #%d pro archiv %s a stiskn�te return: �ten� testovac�ho bodu %d �ten� z %s
 Velikost z�znamu mus� b�t n�sobek %d. Soubor %s p�ejmenov�n na %s P�ejmenov�v�m %s zp�t na %s
 P�ejmenov�v�m %s na %s
 Sm�r posunu v souboru je mimo rozsah Velikost pozice v souboru je mimo rozsah Velikost se li�� P�eskakuji na dal�� hlavi�ku Datum nezn�m�ho form�tu %2$s nahrazuji %1$s Symbolick� odkaz se li�� %s odkazuje na %s Toto pravd�podobn� nen� tar archiv   Toto je voln� �i�iteln� programov� vybaven�, kter� je zcela BEZ Z�RUKY.
Podm�nky pro kop�rov�n� a roz�i�ov�n� naleznete v Obecn� ve�ejn� licenci GNU
(GNU General Public Licence). V�ce informac� z�sk�te ve zdrojov�ch textech
v souboru COPYING. Tento svazek nen� n�sledn�kem p�edchoz�ho �as souboru mimo rozsah P��li� mnoho chyb, kon��m V�ce informac� z�sk�te p��kazem `%s --help'.
 Uid se li�� Neo�ek�van� konec archivu Neo�ek�van� konec v rozsekan�m n�zvu Nezn�m� p��kaz %s pro spojov�n� rozsekan�ch jmen Nezn�m� syst�mov� chyba Pou�it�: %s [P�EP�NA�]
Manipuluje s archivem p�ij�maje p��kazy vzd�len�ho procesu.

  --version     Vyp��e ozna�en� verze
  --help        Vyp��e tuto n�pov�du
 Platn� argumenty jsou: Ov��uji  Viditeln� chyba dlouh�ho n�zvu Viditeln� chyba dlouh�ho n�zvu Svazek %s neodpov�d� vzorku %s U ��sla svazku nastalo p�ete�en� VAROV�N�: Archiv je nekompletn� VAROV�N�: Chyb� hlavi�ka svazku Upozorn�n�: p�ep�na� -I nen� podporov�n; nemysleli jste -j nebo -T? Upozorn�n�: p�ep�na� -y nen� podporov�n; nemysleli jste -j? Zapisuji testovac� bod %d Auto�i: John Gilmore a Jay Fenlason. V�ce jak jeden p�ep�na� z `-Acdtrux' nem��e b�t zad�n Mus�te zadat jeden z p�ep�na�� `-Acdtrux' ` p��kaz `%s' selhal argument %s nen� pro %s jednozna�n� blok %s:  blok %s: ** Blok NUL **
 blok %s: ** Konec souboru **
 velikost bloku potomek exec/tcp: Slu�ba nen� k dispozici meziprocesov� kan�l argument %s je pro %s neplatn� pam� vy�erp�na rmtd: M�sto pro buffer nen� mo�n� alokovat
 rmtd: Nezn�m� p��kaz %c
 rmtd: P�ed�asn� konec souboru
 stdin stdout hodnota %s typu %s je mimo rozsah %s..%s hodnota %s typu %s je mimo rozsah %s..%s; nahrazuji za %s 