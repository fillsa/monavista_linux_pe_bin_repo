��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  f  ?3  �  �4  �  �6    {9  �   �>  #  ,?  �  PA    &C  �   .D     E  �   E     �E     �E  #   F     'F  #   6F  7   ZF  2   �F  :   �F  %    G     &G  !   9G  )   [G  '   �G     �G     �G     �G  J   �G  *   6H     aH     tH     �H  6   �H  ;   �H  9   I  (   HI     qI  A   �I  &   �I     �I     J  #   (J  5   LJ  "   �J  )   �J     �J     �J  2   K  #   :K  $   ^K  3   �K  3   �K  (   �K  %   L     :L  0   OL     �L     �L     �L     �L     �L     �L     �L  '   M  B   8M  *   {M  7   �M  -   �M  N   N  )   [N     �N  2   �N  F   �N  '   O  D   AO  =   �O  $   �O  6   �O  $    P  %   EP  -   kP  6   �P  (   �P  '   �P  (   !Q  !   JQ     lQ  (   zQ     �Q     �Q  *   �Q     �Q     R  7   6R     nR  %   �R  ,   �R  5   �R     S  �   )S  <   �S     	T  $   T     =T     IT     bT     �T     �T     �T     �T     �T     �T     U  "   U     ;U     SU     pU     U     �U     �U     �U      �U  1   V  A   ?V  5   �V     �V  4   �V     W     !W  $   /W     TW     oW     �W  #   �W  '   �W     �W     �W  )   X     GX     `X  $   rX  �   �X  0   �Y     �Y     �Y  .   �Y     %Z     1Z  $   LZ  1   qZ     �Z  �   �Z     ][  	   r[     |[     �[     �[     �[      �[      \  Z   -\  Q   �\     �\  $   �\  6   ]  *   Q]     |]     ~]  %   �]  	   �]     �]     �]     �]     ^  $   ^     2^     F^     e^  .   u^     �^     �^     �^     �^  (   �^  ;   _     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: tar- 
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2002-02-10 12:00CEST
Last-Translator: Martin Lacko <lacko@host.sk>
Language-Team: Slovak <sk-i18n@lists.linux.sk>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
 
Bloky zariadenia:
  -b, --blocking-factor=BLOKOY    BLOKY x 512 bajtov na z�znam
      --record-size=VE�KOS�     VE�KOS� bajtov na z�znam, n�sobok 512
  -i, --ignore-zeros             ignoruje nulov� bloky v arch�ve,
                                 ktor� norm�lne znamenaj� EOF.
  -B, --read-full-records        ke� nie je pre��tan� to�ko bajtov,
                                 ko�ko je po�adovan�, sk��a do��ta� zbostatok
                                 (vhodn� pre r�ry)
 
V�ber zariadenia:
  -f, --file=ARCH�V              pracuje s archivom alebo zariadeniami ARCH�V
      --force-local              arch�vny s�bor je lok�lny, dokonca i kde�
                                 obsahuje ve mene dvojbodku
      --rsh-command=PR�KAZ       pou�ije PR�KAZ pre prihl�senie namiesto rsh
  -[0-7][lmh]                    zadanie zariadenia a hustoty
  -M, --multi-volume             pr�ca s viaczv�zkov�m arch�vom
  -L, --tape-length=��SLO        vymen� p�sku po zap�san� ��SLO x 1024 bajtov
  -F, --info-script=S�BOR       spust� script na konci ka�dej p�sky
                                 (zahrnuje i -M)
      --new-volume-script=S�BOR rovnak� ako -F S�BOR
      --volno-file=S�BOR        pou�ije/aktualizuje ��slo zv�zku v S�BORe
 
Spracovanie vlastnost� s�boru:
      --owner=MENO            pou�ije MENO ako vlastn�ka prid�van�ch s�borov
      --group=MENO            pou�ije MENO ako skupinu prid�van�ch s�borov
      --mode=ZMENY             pou�ije ako pr�va (symbolick�) prid�van�ch
                               s�borov
      --atime-presarve         nemen� pr�stupov� �as na spracov�van�ch
                               s�boroch
  -m, --modification-time      u rozba�ovavan�ch s�borov nenastav� �as
                               poslednej �pravy s�boru z arch�vu
      --same-owner             u rozbalov�van�ch s�borov sk��a nastavi�
                               toho ist�ho vlastn�ka ako je v arch�ve
      --no-same-owner          rozbal� s�bory a v�etky bud� vlastnen� Vami
      --numeric-owner          v�dy pou��v� ��sla pre men� vlastn�ka/skupiny
  -p, --same-permissions       u rozba�ovan�ch s�borov nastav� rovnak�
                               pr�va, ak� maj� v arch�ve
      --no-same-permissions    pri rozba�ovan� nenastavuje pr�va
      --presarve-permissions   rovnak� ako -p
  -s, --same-order             zoradenie mien s�borov pre rozbalenie je
                               zhodn� s arch�vov
      --presarve-order         rovnak� ako -s
      --presarve               rovnak� ako zadan� -p a -s
 
  Ak dlh� prep�na�e maj� povinn� argument, tak tento argument je
povinn� i u ich kr�tkych foriem. Obdobne je tomu v pr�pade, ke� je argument
nepovinn�.
 
Hlavn� funkcie:
  -t, --list              vyp��e obsah arch�vu
  -x, --extract, --get    vyberie s�bor(y) z arch�vu
  -c, --create            vytvor� nov� arch�v
  -d, --diff, --compare   n�jde rozdiely medzi arch�vom a s�borov�m syst�mom
  -r, --append            prid� s�bory na koniec arch�vu
  -u, --update            prid� iba s�bory nov�ie, ako s� v arch�ve
  -A, --catenate          prid� s�bory z tar arch�vu do arch�vu
      --concatenate       rovnak� ako -A
      --delete            ma�e z arch�vu (nefunguje na magnetick�ch p�sk�ch)
 
  Pr�pona z�lo�n�ch s�borov bude `~', pokia� nie je nastaven� pomocou --suffix
alebo premennej SIMPLE_BACKUP_SUFFIX. Ak sa maj� tvori� z�lo�n� k�pie, m��e by�
nastaven� pomocou prep�na�a --backup alebo premennej VERSION_CONTROL. Hodnoty
m��u by�:

  t, numbered     tvoria ��slovan� z�lo�n� k�pie
  nil, existing   ��slovan�, ak u� ��slovan� z�lo�n� k�pie
                  existuj�, inak tvor� jednoduch�
  never, simple   tvor� v�dy jednoduch� z�lo�n� k�pie s�borov
 
Pou�itie: %s [PREP�NA�]... [S�BOR]...

Pr�klady:
  %s -cf arch�v.tar foo bar  # Vytvor� arch�v.tar zo s�boru foo a bar.
  %s -tvf arch�v.tar         # Podrobne vyp��e v�etky s�bory v arch�v.tar.
  %s -xf arch�v.tar          # Rozbal� v�etky s�bory z arch�v.tar.
       --backup[=TYP]           sp�sob z�lohovania s�borov, pred ich prep�san�m
      --suffix=PR�PONA         z�lohuje pred prep�san�m (zmazan�m), ako pr�ponu
                               u z�lo�n�ch s�borov pou�ije PR�PONu
  odkaz na %s
  n [name]   Zadanie nov�ho mena pre �al�� (a nasleduj�) zv�zok(ky)
 q          Ukon�enie programu tar
 !          Vytvorenie podshellu
 ?          Vyp�sanie tejto n�povedy
  nezn�my typ s�boru %s
 %s nepokra�uje na tomto zv�zku %s je chybnej d�ky (%s != %s + %s) %s: Ned� sa %s %s: Pr�va nie je mo�n� zmeni� na %s %s: Vlastn�ctvo nie je mo�n� zmeni� na uid %lu, gid %lu %s: Symbolick� odkaz na `%s' nie je mo�n� vytvori� %s: Ned� sa rozbali� -- s�bor je pokra�ovan�m in�ho zv�zku %s: Odkaz na %s nie je mo�n� vytvori� %s: Ned� sa zmaza� %s: nie je mo�n� premenova� na %s %s: Ned� sa zmeni� poz�cia v s�bore na %s %s: Odkaz na `%s' nie je mo�n� vytvori� %s: Ma�em %s
 %s: Adres�r bol premenovan� %s: Adres�r je nov� %s: Prie�inok bol premenovan� predt�m, ako mohol by� extrahovan� jeho stav %s: S�bor zmazan� sk�r ako mohl by� ��tan� %s: Chybn� skupina %s: V arch�ve nen�jden� %s: Vynech�vam %s: Neo�ak�van� nekonzistencia, pri vytv�ren� adres�ra %s: Nezn�my typ s�boru '%c', porovn�van� ako norm�lny s�bor %s: Nezn�my typ s�boru `%c', rozbalen� ako norm�lny s�bor %s: Nezn�my typ s�boru; s�bor ignorovan� %s: Varovanie: Ned� sa %s %s: Varovanie: Ukazovate� v s�bore nie je mo�n� premiestni� na %s %s: Tento s�bor nebolo mo�n� z�lohova� %s: vracia chybn� ��slo zv�zku %s: dvere ignorovan� %s: s�bor bol po�as ��tania zmenen� %s: s�bor je na inom s�borovom syst�me; nearchivovan� %s: s�bor je archiv; nearchivovan� %s: s�bor nie je zmenen�; neaktualizovan� %s: nezn�my prep�na� -- %c
 %s: nezn�my prep�na� -- %c
 %s: prep�na� `%c%s' mus� by� zadan� bez argumentu
 %s: prep�na� %s nie je jednozna�n�
 %s: prep�na� `%s' vy�aduje argument
 %s: prep�na� `--%s' mus� by� zadan� bez argumentov
 %s: prep�na� `-W %s' mus� by� zadan� bez argumentu
 %s: prep�na� `-W %s' nie je jednozna�n�
 %s: prep�na� vy�aduje argument -- %c
 %s: soket ignorovan� %s: �asov� n�lepka %s je %lu z d�tumu bud�cnosti %s: nezn�my prep�na� `%c%s'
 %s: nezn�my prep�na� `--%s'
 ' (r�ra) --Pokra�ovan� od %s bajtu--
 --Rozdelen� meno s�boru--
 --Hlavi�ka zv�zku--
 Hodnota base-256 typu %s je mimo rozsah Arch�v obsahuje %.*s tam, kde je o�akav�n� ��saln� hodnota typu %s Arch�v obsahuje zastaral� base-64 hlavi�ky Pre vyhodnotenie vzorky `%s' mus� by� arch�v pomenovan� Osmi�kov� hodnota %.*s typu %s je mimo rozsah Osmi�kov� hodnota %.*s typu %s je mimo rozsah; priradzujem dvojkov� complement Hodnota base-64 typu %s je mimo %s rozsah P�ska na za�iatku, kon��m Sk��am rozbali� symbolick� odkazy ako pevn� odkazy Medzery v hlavi�ke na mieste, kde je o�ak�van� ��seln� hodnota typu %s Miesto pre buffer nie je mo�n� alokova� Pre blokov� faktor (blokov na z�znam) %d nie je mo�n� alokovat pam� V arch�ve sa nie je mo�n� vr�ti�, bez -i m��e by� ne�itate�n� Pracovn� adres�r nie je mo�n� zmeni� --listed-incremental a --newer nie je mo�n� kombinova� Vzdialen� shell nie je mo�n� spusti� Pracovn� adres�r nie je mo�n� uchova� Komprimovan� arch�v nie je mo�n� aktualizova� Viaczv�zkov� komprimovan� arch�v nie je mo�n� vytvori� Komprimovan� arch�v nie je mo�n� otvori� V�czv�zkov� arch�v nie je mo�n� otvori� Stdin/Stdout arch�v nie je mo�n� otvori� Odporuj�ce si kompresn� prep�na�e Obsah sa l��i Vytvorenie pr�zdneho arch�vu odmietnut�. Vytv�ram adres�r: D�tumov� s�bor nebol n�jden� Z arch�vu je mazan� to, �o nie je hlavi�ka ��slo zariadenia sa l��i ��slo zariadenia je mimo rozsah Namiesto u��vate�skej odpovede bol zadan� koniec s�boru Za behu programu nastala chyba Chyba pri z�pise na �tandardn� v�stup Z chyby sa nie je mo�n� zotavi�: ukon�uje sa S�visle ulo�en� s�bory rozba�ujem ako oby�ajn� s�bory Typ s�boru sa l��i   GNU `tar' je archiva�n� program. Uklad� s�bory do arch�vu na p�sku alebo 
disk. Z arch�vu dok�e rozbali� tak cel� hierarchie s�borov, ako i jednotliv�
s�bory.
 GNU roz��renia po�adovan� na nekompatibilnom form�te arch�vu Nezn�my pr�kaz Generujem z�porn� osmi�kov� hlavi�ky Gid sa l��i ��slo i-uzlu mimo rozsah Neplatn� po�et bajtov na z�znam Neplatn� ��slo zariadenia Neplatn� ��slo i-uzlu Zad�n� chybn� pr�va Neplatn� vlastn�k Chybn� ve�kos� z�znamu Neplatn� d�ka p�sky Neplatn� �as s�boru Chybn� hodnota pre ve�kos� z�znamu Za -C ch�ba meno s�boru �as poslednej �pravy sa l��i Pr�va sa l��ia Viac ako jeden po�iato�n� d�tum Meno arch�vu nebolo zadan� Nie je nov� zv�zok; kon��m.
 Nie je odkazom na %s Prep�na� `%c' vy�aduje argument. Prep�na�e `-%s' a `-%s' vy�aduj� �tandardn� vstup Prep�na�e `-Aru' a `--delete' s� nezl��ite�n� s prep�na�om `-f -' Prep�na� `-[0-7][lmh]' nie je podporovan� t�mto tarom Pred�asn� koniec s�boru Pripravte zv�zok #%d pre arch�v %s a stla�te return: ��tanie testovacieho bodu %d ��tanie z %s
 Ve�kos� z�znamu mus� by� n�sobok %d. S�bor %s premenovan� na %s Premenov�v�m %s sp� na %s
 Premenov�vam %s na %s
 Smer posunu v s�bore je mimo rozsah Ve�kos� poz�cie v s�bore je mimo rozsah Ve�kos� sa l��i Preskakujem na �al�iu hlavi�ku Zamie�am %s za nezn�my d�tumov� form�t %s Symbolick� odkaz sa l��i %s odkazuje na %s Toto pravdepodobne nie je tar archiv   Toto je volne ��rite�n� programov� vybavenie, kter� je celkom BEZ Z�RUKY.
Podmienky pre kop�rovanie a roz�irovanie n�jdete vo V�eobecnej verejnej licencii GNU
(GNU General Public Licence). Viac inform�ci�z�skate v zdrojov�ch textoch
v s�bore COPYING. Tento zv�zok nie je n�sledn�kem predch�dzaj�ceho �as s�boru mimo rozsah Pr�li� mnoho ch�b, kon��m Viac inform�ci� z�skate pr�kazom `%s --help'.
 Uid sa l��i Neo�ek�van� koniec arch�vu Neo�ak�van� koniec v rozsekanom mene Nezn�my pr�kaz %s pre spojovanie rozsekan�ch mien Nezn�ma syst�mov� chyba Pou�itie: %s [PREP�NA�]
Manipuluje s arch�vom, prj�ma pr�kazy vzdialen�ho procesu.

  --version     Vyp��e ozna�enie verzie
  --help        Vyp��e t�to n�povedu
 Platn� argumenty s�: Overujem  Vidite�n� chyba dlh�ho mena Vidite�n� chyba dlh�ho mena Zv�zok %s nezodpoved� vzorke %s ��slo zv�zku prete�en� VAROVANIE: Archiv je nekompletn� VAROVANIE: Ch�ba hlavi�ka zv�zku Varovanie: prep�na� -I nie je podporovan�; pravdepodobne budete chcie� pou�i� -j alebo -T! Varovanie: prep�na� -y nie je podporovan�; pravdepodobne budete chcie� pou�i� -j! Zapisujem testovac� bod %d Autori: John Gilmore a Jay Fenlason. Viac ako jeden prep�na� `-Acdtrux' nem��e by� zadan�ch Mus�te zada� jeden z prep�na�ov `-Acdtrux' ` '%s' pr�kaz zlyhal argument %s nie je pre %s jednozna�n� blok %s:  blok %s: ** Blok NUL **
 blok %s: ** Konec s�boru **
 ve�kos� bloku potomok exec/tcp: Slu�ba nie je k dispoz�cii meziprocesov� kan�l argument %s je pre %s neplatn� Pam� vy�erpan� rmtd: Miesto pre buffer nie je mo�n� alokova�
 rmtd: Nezn�my pr�kaz %c
 rmtd: Pred�asn� koniec s�boru
 stdin stdout hodnota %s typu %s je mimo rozsah %s..%s hodnota %s typu %s je mimo rozsah %s..%s; nahradzujem za %s 