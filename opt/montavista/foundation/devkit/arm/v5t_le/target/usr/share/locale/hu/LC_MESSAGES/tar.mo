��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  �  ?3  Z  �4  �  "6  �  �8  �   �<  �  �=  q  @    ~A  �   �B     XC  �   mC     D  #   )D     MD     lD     }D  E   �D  9   �D  B   E  6   _E     �E     �E     �E  9   �E     (F     CF     `F  K   rF  %   �F     �F     �F     G  <   &G  8   cG  :   �G  8   �G      H  .   1H  :   `H  &   �H     �H  $   �H  -   I     5I  !   UI     wI     �I  .   �I  #   �I  ,   J  1   5J  /   gJ  &   �J  6   �J  '   �J  &   K  !   DK  !   fK     �K     �K     �K     �K     �K  2   �K  8   L  <   FL  "   �L  4   �L  Q   �L  4   -M     bM  ]   M  -   �M  %   N  -   1N  V   _N  %   �N  B   �N  %   O  "   EO  ,   hO  2   �O  -   �O  1   �O  J   (P     sP     �P     �P     �P     �P  #   �P     Q     )Q  $   >Q     cQ  +   qQ  $   �Q  *   �Q     �Q  ~   �Q  5   }R     �R  !   �R  	   �R     �R     S     'S     =S  '   VS     ~S     �S     �S     �S  #   �S     �S     T  	   +T     5T     PT     pT     �T  $   �T  @   �T  +   U  0   7U     hU  5   |U     �U     �U  3   �U     V  /   $V     TV     lV     �V     �V     �V  6   �V     W  4    W  '   UW  �   }W     wX     �X     �X     �X  	   �X     �X  %    Y      &Y     GY  �   _Y  &   Z     ,Z     8Z     PZ     kZ     �Z  #   �Z      �Z  L   �Z  8   6[     o[  P   �[  :   �[  :   \     N\     P\  3   h\  
   �\     �\     �\  
   �\     �\  #   ]     %]  '   ;]     c]  ,   w]     �]     �]     �]     �]  '   �]  <   '^     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: tar-1.13.25
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2002-09-17 14:19GMT
Last-Translator: G�bor Istv�n <stive@mezobereny.hu>
Language-Team: Hungarian <translation-team-hu@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
 
Eszk�z blokk kezel�s:
  -b,--blocking-factor=BLOKK BLOKK x 512 b�jtos egy rekord
      --record-size=M�RET    M�RET b�jt egy rekord (512-vel szorozva �rtend�)
  -i, --ignore-zeros         figyelmen k�v�l hagyja az nulla blokkokat az arch�vumban 
  -B, --read-full-records    �jra m�retezi a blokkokat amikor olvassunk(a 4.2BSD cs�vekhez(pipes))
 
Eszk�z kiv�laszt�s �s kezel�s
  -f, --file=ARCH�V           az ARCH�V f�jlt vagy az ARCH�V eszk�zt haszn�lja
      --force-local          az arch�v f�jl helyi hab�r kett�spontot tartalmaz
      --rsh-command=PARANCS  a PARANCSOT haszn�lja a t�voli kapcsolatokhoz az rsh helyett
  -[0-7][lmh]                meghat�rozza az eszk�zt �s a s�r�s�get
  -M, --multi-volume         l�trehoz/list�z/kit�m�r�t egy t�bb k�tetes arch�vumot
  -L, --tape-length=SZ�M     szalagot cser�l miut�n  SZ�M x 1024 b�jtot ki�rt
  -F, --info-script=F�JL     le futtatja a F�JL parancs�llom�nyt miut�n v�ge a szalagnak
      --new-volume-script=F�JL ugyanaz mint a -F F�JL
      --volno-file=F�JL      haszn�lja/friss�ti a k�tetsz�mot a F�JLBAN
 
Attrib�tum kezel� parancsok:
      --owner=N�V            a hozz�adott f�jlok tulajdonosa a N�V lesz
      --group=N�V            a hozz�adott f�jlok csoportja a N�V lesz
      --mode=JOGOK           a hozz�adott f�jlok jogai a JOGOK-ra v�ltoznak 
      --atime-preserve       nem m�dos�tja a hozz�f�r�s idej�t
  -m, --modification-time    nem t�m�r�ti ki a m�dos�tott f�jlokat
      --same-owner           megpr�b�lja kit�m�r�teni azokat a f�jlokat amiknek ugyanaz a tulajuk
      --no-same-owner        saj�t magak�nt pr�b�lja kit�m�r�teni a f�jlokat
      --numeric-owner        mindig csak sz�mokat haszn�l a felhaszn�l�/csoport azonos�t�sra
  -p, --same-permissions     kit�m�r�ti az enged�lyeket
      --no-same-permissions  nem t�m�r�ti ki az enged�lyeket
      --preserve-permissions ugyanaz mint a -p
  -s, --same-order           a neveket az arch�vumban tal�lhat� sorrend szerint rendezi
      --preserve-order       ugyanaz mint a -s
      --preserve             ugyanaz mint a -p �s -s egy�tt
 
Ha a hossz� kapcsol�hoz k�telez� argumentumot �rni, akkor az a megfelel�
r�vid kapcsol�ra is vonatkozik. Hasonl� a helyzet a v�laszthat� 
argumentumokkal.
 
F� parancsok:
  -t, --list                 az arch�v f�jl tartalm�t list�zza
  -x, --extract, --get       kicsomagolja a f�jlokat az arch�v f�jlb�l
  -c, --create               �j arch�v f�jlt hoz l�tre
  -d, --diff, --compare      megkeresi az arch�v f�jl �s a f�jlrendszer k�zti k�l�nbs�geket
  -r, --append               f�jlokat csatol az arch�v f�jl v�g�hez
  -u, --update               csak az �jabb f�jlokat csatolja a f�jlhoz
  -A, --catenate             tar f�jlokat csatol egy arch�v f�jlhoz
      --concatenate          ugyanaz mint a '-A'
      --delete               f�jlokat t�r�l az arch�v f�jlb�l (m�gnesszalagn�l nem haszn�lhat�!)
 
A biztons�gi ment�s �t�tagja `~', hacsak nem '--suffix' vagy a SIMPLE_BACKUP_SUFFIX megv�ltoztatja.
A verzi� fel�gyeletet a  --backup vagy a  VERSION_CONTROL kezelheti, melyek a k�vetkez� �rt�keket
vehetik fel
  t, numbered     sz�mozott ment�s csin�l
  nil, existing   sz�mozza ha van m�r ment�s, egy�bk�nt fel�l �jra
  never, simple   mindig norm�lis ment�st csin�l
 
Haszn�lat: %s [OPCI�]... [F�JL]...

P�ld�k:
  %s -cf arch�v.tar foo bar   # L�trehoz egy arch�v.tar f�jlt a foo �s bar f�jlokb�l.
  %s -tvf arch�v.tar          # Az �sszes arch�v.tar-ban tal�lhat� f�jlt ki�rja.
  %s -xf arch�v.tar           # Kit�m�r�ti az �sszes f�jlt arch�v.tar-b�l.
       --backup[=CONTROL]       miell�t elt�vol�tja elmenti, ezzel elen�rizheti a verzi�kat
      --suffix=�T�T�T          miell�t elt�vol�tja elmenti �s az �T�T�TET hozz�f�zi a nev�hez
  hivatkoz�s a %s-re
  n [n�v]    Megad egy �j f�jl nevet a k�vetkez� k�tetnek
 q          Tar megszak�t�sa
 !          �j a parancs�rtelmez� h�v�sa
 ?          Ezt a list�t �rja ki
  ismeretlen f�jl t�pus %s
 a %s nem folytat�dik ezen a k�teten %s rossz m�ret (%s != %s + %s) %s: Nem lehet %s %s: Nem lehet %s m�dba v�ltani %s: Nem lehet m�dos�tani a tulajdonost uid-j�t %lu-ra, gid-j�t %lu-ra %s: Nem lehet szimbolikus hivatkoz�st l�trehozni a %s-hez %s: Nem lehet kit�m�r�teni -- a f�jl egy m�sik k�teten folytat�dik %s: Nem lehet k�zvetlen hivatkoz�s l�trehozni a %s-hez %s: Nem lehet elt�vol�tani %s: Nem lehet �tnevezni %s-re %s: Nem lehet a %s-hez tekerni %s: Nem lehet szimbolikus hivatkoz�st l�trehozni a %s-hez %s: T�rl�s folyamatban %s
 %s: K�nyvt�r �t lett nevezve %s: A k�nyvt�r �j %s: A k�nyvt�rat �tnevezt�k miel�tt a helyzet�t meg tudtam volna �llap�tani %s: F�jl elt�vol�tva az olvas�s el�tt %s: �rv�nytelen csoport %s: Nincs bene az arh�vumban %s: Kihagy�s %s: V�ratlen k�vetkezetlens�g amikor a k�nyvt�rak l�trehozta %s: A %c ismeretlen f�jl t�pus, elt�r a norm�lis f�jlt�l %s: Ismeretlen f�jl t�pus %c, norm�l f�jlk�nt t�m�r�tem ki %s: Ismeretlen f�jl t�pus, f�jl a figyelmen k�v�l hagyva %s: Figyelmeztet�s: Nem lehet %s %s: Figyelmeztet�s: Nem lehet a %s-hez tekerni %s: Nem lehet biztons�gi ment�st k�sz�teni err�l a f�jlr�l %s: �rv�nytelen k�tet sz�mot tartalmaz %s: ajt� figyelmen k�v�l hagyva %s: a f�jl v�ltozott m�g mi olvastuk %s: f�jl k�l�nb�z� f�jlrendzser�, nem �rom ki %s: f�jl arch�v�lt, nem �rom ki %s: f�jl v�ltozatlan, nem �rom ki %s: illeg�lis kapcsol� -- %c
 %s: �rv�nytelen kapcsol� -- %c
 %s: a `%c%s' opci� nem enged meg argumentumot
 %s: a `%s' kapcsol� nem egy�rtelm�
 %s: a `%s' kapcsol�hoz argumentum sz�ks�ges
 %s: a `--%s' kapcsol� nem enged meg argumentumot
 %s: a `-W %s' opci� nem enged meg argumentumot
 %s: a `-W %s' kapcsol� nem egy�rtelm�
 %s: a kapcsol�nak sz�ks�ge van egy argumentumra -- %c
 %s: illeszt�pont figyelmen k�v�l hagyva %s: id� b�lyeg %s a %lu a j�v�be mutat %s: a `%c%s' kapcsol� ismeretlen
 %s: a `--%s' kapcsol� ismeretlen
 ' (cs�) --Folytatva %s b�jtt�l--
 --Megcsonk�tott f�jl nevek--
 --K�tet Fejl�c--
 Arch�vum 'base-256'-os �rt�ke a %s hat�ron t�l van Az arch�vum %.*s �rt�ket tartalmaz ahol %s �rt�ket v�rok Arch�vum  elavul�f�lben lev� 'base-64'-es fejl�cet tartalmaz Az arch�vum nem c�mk�zett a %s-hez Az arch�vum okt�lis �rt�ke %.*s t�l van a %s hat�ron Az arch�vum okt�lis �rt�ke %.*s t�l van a %s hat�ron, megprob�lom behelyetes�teni Arch�vum 'base-64' jele %s amit a %s hat�ron t�l van A szalag eleje, most kil�pek A kit�m�r�t�s allat megprob�lom a szimbolikus hivatkoz�sokat k�zvetlen hivatkoz�sk�nt kezelni �res fejl�c az a r�sze ahol %s �rt�ket v�rtam Nem lehet lefoglalni puffernek helyet Nem lehetni mem�ri�t a %d blokkol� t�nyez�nek Nem lehet visszat�r�lni az arch�v f�jlt,  lehet hogy m�jus olvashatatlan a '-i' n�lk�l Nem lehet m�dos�tani munka k�nyvt�rat Nem lehet a '--listed-incremental' �s '--newer' egyszere haszn�lni Nem lehet t�voli parancssort futtatni Nem lehet menteni munka k�nyvt�rba Nem lehet t�m�r�tett arch�vumokat friss�teni Nem haszn�lhat t�bb-k�tetes t�m�r�tett arh�vumokat Nem lehet t�m�r�tett arch�vumokat ellen�rizni Nem lehet a t�bb-k�tetes arch�vumokat ellen�rizni Nem lehet ellen�rizni az arh�vumot ha a szabv�nyok be/ki menetet haszn�lja Konfliktus a t�m�r�t� opci�kkal Tartalom k�l�nb�zik �res arch�vumot hozott l�tre K�nyvt�r l�trehoz�sa:  D�tum f�jlt nem tal�lom Nem fejl�cek t�rl�se az arch�vumb�l Eszk�z sz�m elt�r Eszk�z sz�m t�l nagy EOF ahol felhaszn�l�i v�laszt v�rtam Hib�s kil�p�s Hiba a szabv�nyos kimenetre val� �r�s sor�n Hiba nem helyrehozhat�: most kil�pek A folyamatos f�jlt norm�l f�jlk�nt kezelem F�jl t�pus elt�r Ez egy olyan archiv�l� program, amely arra k�sz�lt, hogy egy �n. tarfile-ban f�jlokat
tudjon t�rolni, illetve onnan kiszedni.
 A GNU b�v�tm�nyek �sszef�rhetlenek az arch�v form�val F�l�sleges parancs Negat�v okt�lis fejl�c gener�l�sa Gid elt�r A f�jlle�r� t�l nagy �rv�nytelen blokkol� t�nyez�nek Helytelen eszk�z sz�m Helytelen f�jlle�r� sz�m �rv�nytelen m�dot adott meg az opci�ban �rv�nytelen tulaj �rv�nytelen rekord m�ret Helytelen szalag m�ret Helytelen id� b�lyeg �rv�nytelen �rt�k a record_size-ban Hi�nyzik a f�jln�v a '-C' ut�n M�dos�t� id� elt�r M�d elt�r T�bb mint egy k�sz�b d�tum Nem adott meg arch�v f�jl nevet Nincs �j k�tet, kil�pek.
 Nem  hivatkozott a '%s'-re A r�gi '%c' opci� param�tert ig�nyel A '-%s' �s a '-%s' opci�k csak a szabv�nyos bemeneten �rv�nyesek A '-Aru' opci� �sszef�rhetetlen a '-f -' el A  `-[0-7][lmh]' opci�kat ez a tar NEM t�mogatja Id� el�tti f�jl v�g A k�sz�tse el� %d k�tet %s-nek �s �ss�n egy returnt:  Ellen�rz� pont olvas�sa %d Olvas�s %s
 A rekord m�retnek %d-val t�bbsz�r�s�nek kell lennie �tnevezve %s-r�l %s-re Biztons�gi ment�s helyre �ll�t�sa %s-r�l %s-re
 �tnevez�s %s-r�l %s-re
 A teker�si utas�t�s hib�s A teker�si letol�s t�l nagy M�ret elt�r A k�vetkez� fejl�c �tugr�sa Helyetes�t�s %s-t az ismeretlen d�tum forma %s hely�re A szimbolikus hivatkoz�s elt�r Szimbolikus hivatkoz�st l�trehoz�sa a %s-r�l a %s-re Ez nem �gy n�z ki mint egy tar arch�vum E programra NINCS SEMMILYEN GARANCIA, a k�sz�t�k nem v�llalnak semmilyen felel�ss�get
a program �ltal esetleg okozott k�rok�rt. A k�dot b�rki tov�bb adhatja a GNU Nyilv�nos 
Licensz felt�telei szerint.
B�vebb inform�ci��rt olvasd el a COPYING f�jlt. Ez a k�tet t�l van a sorozaton Id� b�lyeg legj�rt T�l sok hiba, kil�pek Pr�b�ld a `%s --help'-et.
 Uid elt�r V�ratlan EOF az arch�vumban V�ratlan EOF a megcsonk�tott nevekben Ismeretlen csonk�t� parancs a %s Ismeretlen rendszerhiba Haszn�lat: %s [OPCI�]
A szalagok kezel�s�t, t�voli parancsok v�grehajt�s�t teszi lehet�v�.

  --version  Ki�rja a verzi� adatokat
  --help  Ezt a seg�ts�get �rja ki
 Az �rv�nyes argumentumok a k�vetkez�k: Ellen�rz�s  L�that� hossz� n�v hiba L�that� hossz�f�jln�v hiba A %s k�tet nem azonos a %s-el K�tetsz�m sz�m t�lcsordult FIGYELMEZTET�S: Arch�vum nincs k�sz FIGYELMEZTET�S: Nem k�tet fejl�c Figyelmeztet�s: a '-l' opci� nem t�mogatott tal�n haszn�lja a '-j' vagy '-T' Figyelmeztet�s: a '-y' opci� nem t�mogatott tal�n a '-j' Ellen�rz� pont �r�sa %d �rta John Gilmore �s Jay Fenlason.Ford�totta G�bor Istv�n <stive@mezobereny.hu>. A k�vetkez� opci�k k�z�l egyet haszn�lnia kell: `-Acdtrux' A k�vetkez� opci�k k�z�l egyet haszn�lnia kell: `-Acdtrux' ` '%s' parancs sikertelen `%s' argumentum nem egy�rtelm��a k�vetkez�h�z: `%s' blokk %s:  blokk %s: ** A blokk �res **
 blokk %s: ** A f�jl v�ge **
 blokkm�ret al�rendelt folyamat exec/TCP: Szolg�ltat�s nem el�rhet� folyamatk�zi csatorna A `%s' argumentum �rv�nytelen ehhez: %s elfogyott a mem�ria rmtd: Nem lehet lefoglalni puffernek helyet
 rmtd: F�l�sleges parancs  %c
 rmtd: Id� el�tti f�jl v�g
 szabv�ny bemenet szabv�ny kimenet �rt�k %s a %s a %s...%s hat�rt t�ll�pte �rt�k %s a %s a %s...%s hat�rt t�ll�pte, %s-el helyettes�tem 