��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  k  ?3  �  �4  |  �6  �  :  �   �>  $  V?  c  {A    �B  �   �C     �D  �   �D     �E  (   �E  '   �E     F      (F  6   IF  -   �F  I   �F  %   �F     G     3G     QG  .   jG     �G      �G     �G  F   �G  @   $H     eH     xH     �H  :   �H  ?   �H  A   I  .   ^I     �I  $   �I  -   �I  &   �I     "J  -   5J  =   cJ  '   �J  ,   �J     �J     K  )   ,K  !   VK  )   xK  )   �K  *   �K  $   �K  .   L     KL  0   `L  !   �L  !   �L     �L     �L     �L     M     %M  0   BM  <   sM  3   �M  +   �M  4   N  V   EN  ?   �N     �N  :   �N  ;   0O  )   lO  ;   �O  E   �O  $   P  2   =P  *   pP  "   �P  %   �P  0   �P  (   Q  &   >Q  (   eQ     �Q     �Q  )   �Q     �Q  !   R  %   $R  )   JR     tR  -   �R  3   �R  &   �R  6   S  7   NS     �S  |   �S  E    T     fT  %   yT     �T     �T  #   �T     �T     U     U     /U      @U     aU     xU  "   �U     �U  ,   �U      V  *   V     <V  %   QV     wV  .   �V  5   �V  (   �V  9   W     SW  4   iW     �W  	   �W  1   �W     �W     X     $X     9X     QX     iX  !   X  ,   �X     �X  $   �X     Y  �   .Y      �Y     �Y     Z  +   6Z     bZ     sZ  $   �Z  %   �Z     �Z  �   �Z     �[     �[     �[     �[     \  "   (\  $   K\  (   p\  A   �\  :   �\     ]  %   /]  4   U]  /   �]     �]     �]     �]  	   �]  $   �]     "^     @^  	   O^     Y^     x^     �^     �^  0   �^     �^     _     _     7_  %   Q_  6   w_     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-04-26 10:49+MET(DST)(UTC+2)
Last-Translator: Mirsad Todorovac <mtodorov_69@yahoo.com>
Language-Team: Croatian <lokalizacija@linux.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
 
Faktor grupiranja u blokove na ure�aju (device blocking):
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bajtova po zapisu (record)
      --record-size=SIZE         SIZE bajtova po zapisu, vi�ekratnik od 512
  -i, --ignore-zeros             ignoriraj blokove ispunjene nulama u arhivi
                                     (koji ina�e zna�e EOF)
  -B, --read-full-records        pregrupiraj blokove dok �ita�
                                     (za 4.2BSD cjevovode -- pipes)
 
Selektiranje i mijenjanje ure�aja:
  -f, --file=ARCHIVE             koristi datoteku ili ure�aj za arhiviranje
                                     ARCHIVE
      --force-local              ime arhive je lokalno �ak i ako sadr�i
                                     dvoto�ku
      --rsh-command=COMMAND      koristi remote COMMAND umjesto rsh
  -[0-7][lmh]                    specificiraj drive i density
  -M, --multi-volume             kreiraj/izlistaj/ekstrahiraj vi�edjelne
                                     arhive
  -L, --tape-length=NUM          promijeni traku nakon ispisivanja
                                     NUM x 1024 bajtova
  -F, --info-script=FILE         pokreni skriptu na kraju svake trake
                                     (podrazumijeva -M)
      --new-volume-script=FILE   isto kao -F FILE
      --volno-file=FILE          koristi/nadopuni volume number u FILE
 
Tretiranje atributa datoteka:
      --owner=NAME             forsiraj NAME za vlasnika dodanih datoteka
      --group=NAME             forsiraj NAME za grupu dodanih datoteka
      --mode=CHANGES           forsiraj (symboli�ke) promjene pristupnog
                                   moda za dodane datoteke
      --atime-preserve         ne mijenjaj vremena pristupa (access time)
                                   pohranjenim datotekama
  -m, --modification-time      ne ekstrahiraj vremena modifikacije
      --same-owner             poku�aj postaviti vlasni�tvo datoteka
                                   kao u arhivi
      --no-same-owner          ekstrahiraj datoteke pod svojim vlasni�tvom
      --numeric-owner          uvijek koristi numeri�ka imena
                                   korisnika/grupa
  -p, --same-permissions       ekstrahiraj informacije o dozvolama
      --no-same-permissions    ne ekstrahiraj informacije o dozvolama
      --preserve-permissions   isto kao -p
  -s, --same-order             sortiraj imena kod ekstrakcije da odgovaraju
                                   arhivi
      --preserve-order         isto kao -s
      --preserve               isto kao -p i -s zajedno
 
Ako duga opcija pokazuje agument kao obavezan, onda je obavezan
i za ekvivalentnu kratku opciju tako�er.  Jednako vrijedi i za opcionalne
argumente.
 
Glavni mod rada:
  -t, --list              ispi�i sadr�aje arhive
  -x, --extract, --get    ekstrahiraj datoteke iz arhive
  -c, --create            kreiraj novu arhivu
  -d, --diff, --compare   na�i razlike izme�u arhive i datote�nog sustava
  -r, --append            nadodaj datoteke na kraj arhive
  -u, --update            nadodaj samo datoteke novije od kopije u arhivi
  -A, --catenate          nadodaj tar datoteke na arhivu
      --concatenate       isto kao -A
      --delete            izbri�i iz arhive (ne radi na magnetskim trakama!)
 
Backup sufiks je `~', osim ako je postavljen drugi s --suffix ili
SIMPLE_BACKUP_SUFFIX. Kontrola verzije mo�e biti postavljena s --backup
ili s VERSION_CONTROL, vrijednosti su:

  t, numbered     radi pobrojane (numbered) backup-e
  nil, existing   pobrojani ako pobrojani ve� postoje, ina�e jednostavni
  never, simple   uvijek radi jednostavne backupe
 
Usage: %s [OPCIJA]... [DATOTEKA]...

Primjeri:
  %s -cf arhiva.tar foo bar   # Kreiraj arhiva.tar od datoteka foo i bar.
  %s -tvf arhiva.tar          # Ispi�i redom sve datoteke iz arhiva.tar op�irno.
  %s -xf arhiva.tar           # Ekstrahiraj sve datoteke iz arhiva.tar.
       --backup[=CONTROL]       backup-iraj prije brisanja, izaberi mehanizam
                                   kontrole verzije
      --suffix=SUFFIX          backup-iraj prije brisanja, promijeni
                                   standardni sufiks.
  link do %s
  n [ime]    Daj novo ime datoteke za slijede�i (i nadovezuju�e) dijelove
 q          Zavr�i tar
 !          Pokreni podljusku operativnog sistema
 ?          Ispi�i ovu listu
  nepoznat tip datoteke %s
 %s nije nastavljen za ovom dijelu arhive %s je pogre�ne veli�ine (%s != %s + %s) %s: Ne mogu %s %s: Ne mogu promijeniti mod u %s %s: Ne mogu promijeniti vlasni�tvo na uid %lu, gid %lu %s: Ne mogu kreirati simboli�ki link prema %s %s: Ne mogu ekstrahirati -- datoteka se nastavlja iz drugog dijela arhive %s: Ne mogu napraviti hard link na %s %s: Ne mogu obrisati %s: Ne mogu preimenovati u %s %s: Neuspjeli seek na %s %s: Ne mogu napraviti simboli�ki link prema %s %s: Bri�em %s
 %s: Direktoriju promijenjeno ime %s: Novi direktorij %s: Direktoriju promijenjeno ime prije nego �to mu je dobavljen status %s: Datoteka uklonjena (removed) prije nego �to smo ju pro�itali %s: Pogre�na grupa %s: Nije na�eno u arhivi %s: Izostavljam %s: Neo�ekivana nekonzistentnost kod otvaranja direktorija %s: Nepoznat tip datoteke '%c', diff-iran kao normalna datoteka %s: Nepoznat tip datoteke '%c', ekstrahiran kao normalna datoteka %s: Nepoznat tip datoteke; datoteka ignorirana %s: Upozorenje: Ne mogu %s %s: Upozorenje: Neuspjeli seek na %s %s: Nisam uspio napraviti backup ove datoteke %s: sadr�i pogre�an broj dijela arhive %s: door ignoriran %s: datoteka se promijenila dok smo ju �itali %s: datoteka je na drugom datote�nom sustavu; ne arhiviram ju %s: datoteka je arhiva; ne arhiviram ju %s: datoteka nepromijenjena; ne arhiviram ju %s: ilegalna opcija -- %c
 %s: pogre�na opcija -- %c
 %s: opcija `%c%s' ne dozvoljava argument
 %s: opcija `%s' nije jednozna�na
 %s: za opciju `%s' neophodan je argument
 %s: opcija `--%s' ne dozvoljava argument
 %s: opcija `-W %s' ne dozvoljava argument
 %s: opcija `-W %s' nije jednozna�na
 %s: opcija zahtijeva neophodan argument -- %c
 %s: socket ignoriran %s: oznaka vremena %s je %lu sekundi u budu�nost %s: ne prepoznajem opciju `%c%s'
 %s: ne prepoznajem opciju `--%s'
 ' (cjevovod - pipe) --Nastavljeno s bajtom %s--
 --Manglirana imena datoteka--
 --Zaglavlje dijela arhive--
 Base-256 vrijednost iz arhive je izvan %s opsega Arhiva sadr�i %.*s gdje je o�ekivana numeri�ka %s vrijednost Arhiva sadr�i base-64 zaglavlja zastarjelog formata Arhiva nije ozna�ena labelom da odgovara %s Oktalna vrijednost iz arhive %.*s je izvan %s opsega Oktalna vrijednost %.*s iz arhive je izvan %s opsega; pretpostavljam dvojni komplement Base-64 vrijednost s predznakom %s iz arhive je izvan %s opsega Po�etak trake, zavr�avam Poku�avam ekstrakciju simboli�kih linkova kao hard linkova Razmaci u zaglavlju gdje se o�ekuje numeri�ka %s vrijednost Ne mogu alocirati prostor za me�uspremnik Ne mogu alocirati memoriju za faktor pakiranja u blokove %d Ne mogu se pomicati unazad unutar arhive; mo�e biti ne�itljiva bez -i Ne mogu promijeniti radni direktorij Ne mogu kombinirati --listed-incremental s --newer Ne mogu pokrenuti udaljenu (remote) ljusku Ne mogu pohraniti radni direktorij Ne mogu a�urirati komprimirane arhive Ne mogu koristiti vi�edjelne komprimirane arhive Ne mogu verificirati komprimirane arhive Ne mogu verificirati vi�edjelne arhive Ne mogu verificirati stdin/stdout arhive Konfliktne opcije za kompresiju Sadr�aji se razlikuju Kukavi�ki odbijam kreirati praznu arhivu! Kreiram direktorij: Datoteka s datumom nije prona�ena Bri�em neispravno zaglavlje iz arhive Broj ure�aja (device number) se razlikuje Broj ure�aja izvan opsega Na�en EOF gdje sam o�ekivao odgovor korisnika Pogre�an izlaz (naknadno) zbog prija�njih pogre�aka Pogre�ka u pisanju na standardni izlaz Gre�ka iz koje se ne mogu oporaviti: zavr�avam s radom Ekstrahiram neprekinute datoteke kao regularne datoteke Tipovi datoteka se razlikuju GNU `tar' sprema mnogo datoteka zajedno u jednu arhivu na traci ili disku, i
mo�e povratiti pojedina�ne datoteke iz arhive.
 GNU specijalne pogodnosti zatra�ene na nekompatibilnom formatu arhive Neispravna naredba Generiram negativna oktalna zaglavlja Gid se razlikuje Inode broj izvan opsega Pogre�an faktor pakiranja u blokove Pogre�an broj ure�aja Pogre�an inode broj Pogre�an mod dan opcijom Pogre�an vlasnik Pogre�na veli�ina sloga (record) Pogre�na duljina trake Pogre�na oznaka vremena Pogre�na vrijednost za record_size Nedostaje ime datoteke nakon -C Mod time (vrijeme modifikacije) se razlikuje Mod se razlikuje Vi�e od jednog datuma s pragom (threshold) Nije dano ime arhive Nema novog dijela arhive; zavr�avam.
 Nije polinkan na %s Stara opcija `%c' zahtijeva obavezan argument. Opcije `-%s' i `-%s' obje zahtijevaju standardni ulaz Opcije `-Aru' nisu kompatibilne s `-f -' Opcije `-[0-7][lmh]' nisu podr�ane od strane *ovog* tar-a Prerani kraj datoteke Pripremite dio arhive #%d za %s i pritisni <RETURN>: To�ka provjere �itanja %d �itam %s
 Veli�ina sloga (record) mora biti vi�ekratnik %d. Preimenovao %s u %s Preimenujem %s natrag u %s
 Preimenujem %s u %s
 Seek smjer izvan opsega Seek ofset izvan opsega Veli�ina se razlikuje Preska�em do slijede�eg zaglavlja Substituiram %s za nepoznat format datuma %s Simboli�ki link se razlikuje Napravio simboli�ki link %s prema %s Ovo ne izgleda kao tar arhiva Ovaj program dolazi BEZ GARANCIJA, do granica dozvoljenih zakonom.
Mo�ete ga redistribuirati pod uvjetima GNU General Public License;
vidi datoteku imena COPYING za detalje. Ovaj dio arhive je izvan slijeda Oznaka vremena izvan opsega Previ�e pogre�aka, zavr�avam Poku�ajte `%s --help' za vi�e informacija.
 Uid se razlikuje Neo�ekivani EOF u arhivi Neo�ekivan EOF u mangliranim imenima Nepoznata naredba za demangliranje %s Nepoznata pogre�ka u sistemu Kori�tenje: %s [OPCIJA]
Upravljaj jedinicom trake, prihva�aju�i naredbe od udaljenih procesa.

  --version  Informacije o verziji programskih ispisa.
  --help  Ispi�i ovu pomo�.
 Ispravni argumenti su: Verificiraj  Vidljiva pogre�ka u dugom imenu Vidljiva pogre�ka u dugom imenu Dio arhive %s ne odgovara %s Prekora�enje u broju dijela arhive UPOZORENJE: Arhiva nije kompletirana UPOZORENJE: Nema zaglavlja za dio arhive Upozorenje: opcija -I nije podr�ana; mo�da ste mislili -j ili -T? Upozorenje: opcija -y nije podr�ana; mo�da ste �eljeli -j? To�ka provjere ispisa %d Napisali John Gilmore i Jay Fenlason. Ne mo�ete navesti vi�e od jedne od `-Acdtrux' opcija Morate specificirati jednu od `-Acdtrux' opcija ` Neuspjela `%s' naredba nejednozna�an argument %s za %s blok %s:  blok %s: ** Blok ispunjen NULama **
 blok %s: ** Kraj datoteke **
 veli�ina bloka podproces exec/tcp: Servis nije dostupan me�uprocesni kanal pogre�an argument %s za %s iscrpljena memorija rmtd: Ne mogu alocirati prostor za me�uspremnik
 rmtd: %c je neispravna naredba
 rmtd: Prerani eof
 stdin -- standardni ulaz stdout -- standardni ulaz vrijednost %s izvan %s raspona %s..%s vrijednost %s izvan %s raspona %s..%s; substituiram %s 