��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  i  ?3  �  �4  �  X6  �  9  �   �<    ~=  �  �?    $A  �   4B     �B  �   C     �C  !   �C  %   �C     D  /   'D  >   WD  +   �D  @   �D  ,   E     0E  -   CE  %   qE  .   �E     �E  "   �E     �E  E   F  .   XF     �F     �F     �F  /   �F  C   �F  F   ?G  5   �G     �G  /   �G  +   H  8   0H     iH  %   H  =   �H  %   �H  &   	I      0I      QI  )   rI  %   �I  $   �I  )   �I  *   J  (   <J  %   eJ     �J  0   �J  "   �J  "   �J     K      K     (K     ?K     \K  8   vK  A   �K  6   �K  -   (L  ;   VL  Z   �L  O   �L     =M  4   WM  ;   �M     �M  4   �M  P   N     iN  A   �N     �N     �N  $   O  .   (O  $   WO  &   |O  <   �O      �O     P  6   P     IP     \P     yP     �P  %   �P  2   �P  ;   Q  '   @Q  *   hQ  5   �Q     �Q  y   �Q  I   ZR     �R  ,   �R  	   �R  )   �R     S     /S     HS  (   eS     �S     �S     �S     �S  &   �S  +   T     DT  
   UT  '   `T     �T  $   �T     �T  &   �T  :   U  A   MU  *   �U     �U  2   �U     V     %V  '   1V     YV      vV     �V  ,   �V  $   �V  
   W  "   W  3   4W     hW     xW     �W  �   �W  '   OX  #   wX      �X  (   �X  	   �X  &   �X  0   Y  $   GY     lY  �   �Y     Z  	   8Z     BZ     ]Z  $   xZ  &   �Z  #   �Z  %   �Z  >   [  7   M[     �[  +   �[  8   �[  4   	\     >\     @\  '   Y\  
   �\     �\      �\  	   �\     �\  &   �\     ]  $    ]     E]  !   T]     v]  $   �]  
   �]     �]  0   �]  F   �]     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-12-31 04:15+02:00
Last-Translator: Lauri Nurmi <lanurmi@iki.fi>
Language-Team: Finnish <translation-team-fi@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
 
Laitteen lohkot:
  -b, --blocking-factor=LOHKOT   LOHKOT � 512 tavua tietuetta kohti
      --record-size=M��R�        M��R� tavua tietuetta kohti, 512:n monikerta
  -i, --ignore-zeros             �l� huomioi nollattuja lohkoja arkistossa
                                 (merkitsee tiedoston loppua)
  -B, --read-full-records        suorita lohkominen uudelleen luettaessa
                                 (4.2BSD-putkia varten)
 
Laitteen valinta ja vaihtaminen:
  -f, --file=ARKISTO             k�yt� arkistotiedostoa tai -laitetta ARKISTO
      --force-local              arkisto on paikallinen vaikka nimess� olisi kaksoispiste
      --rsh-command=KOMENTO      k�yt� KOMENTOa rsh:n sijaan
  -[0-7][lmh]                    anna asema ja tiheys
  -M, --multi-volume             luo/listaa/pura moniosainen arkisto
  -L, --tape-length=M��R�        vaihda nauhaa M��R� � 1024 kirjoitetun tavun j�lkeen
  -F, --info-script=TIED         aja skripti joka nauhan lopussa (valitsin -M tulee k�ytt��n)
      --new-volume-script=TIED   sama kuin -F TIED
      --volno-file=TIED          k�yt�/p�ivit� arkiston osan numero TIEDostossa
 
Tiedostojen ominaisuuksien k�sittely:
      --owner=NIMI             pakota NIMI lis�ttyjen tiedostojen omistajaksi
      --group=NIMI             pakota NIMI lis�ttyjen tiedostojen ryhm�ksi
      --mode=MUUTOS            pakota (symbolinen) tila MUUTOS lis�tyille tiedostoille
      --atime-preserve         �l� muuta lis�ttyjen tiedostojen k�ytt�aikoja
  -m, --modification-time      �l� pura tiedoston muutosaikaa
      --same-owner             yrit� purkaa tiedostot samalla omistajuudella
      --no-same-owner          pura tiedostot itsen�si
      --numeric-owner          k�yt� aina numeroita k�ytt�j�n/ryhm�n nimiss�
  -p, --same-permissions       pura tiedostojen oikeudet
      --no-same-permissions    �l� pura tiedostojen oikeuksia
      --preserve-permissions   sama kuin -p
  -s, --same-order             lajittele purettavat tiedostonimet vastaamaan arkistoa
      --preserve-order         sama kuin -s
      --preserve               sama kuin -p ja -s yhdess�
 
Jos argumentti on pakollinen pitk�n valitsimen kanssa, se on pakollinen
my�s vastaavan lyhyen valitsimen kanssa. Sama koskee valinnaisia argumentteja.
 
P��toimintatila:
  -t, --list              listaa arkiston sis�lt�
  -x, --extract, --get    pura tiedostoja arkistosta
  -c, --create            luo uusi arkisto
  -d, --diff, --compare   etsi erot arkiston ja tied.j�rjestelm�n v�lill�
  -r, --append            lis�� tiedostoja arkiston loppuun
  -u, --update            lis�� vain arkistossa olevia uudemmat tiedostot
  -A, --catenate          lis�� tar-tiedostoja arkistoon
      --concatenate       sama kuin -A
      --delete            poista arkistosta (ei toimi nauhoilla!)
 
Varmuuskopion j�lkiliite on "~", ellei --suffix tai SIMPLE_BACKUP_SUFFIX ole
asetettu. Versionhallintaa voidaan s��t�� asettamalla --backup tai VERSION_CONTROL,
arvot ovat:
  t, numbered     tee numeroituja varmuuskopioita
  nil, existing   numeroituja, jos numeroituja varmuuskopioita on olemassa,
                  muuten yksinkertaisia
  never, simple   tee aina yksinkertaisia varmuuskopioita
 
K�ytt�: %s [VALITSIN]... [TIEDOSTO]...

Esimerkkej�:
  %s -cf arkisto.tar foo bar  # Luo arkisto.tar tiedostoista foo ja bar.
  %s -tvf arkisto.tar         # Listaa kaikki arkisto.tar:in tiedostot.
  %s -xf arkisto.tar          # Pura kaikki tiedostot arkisto.tar:ista.
       --backup[=HALLINTA]      varmuuskopiointi ennen poistoa, valitse versionhallinta
      --suffix=J�LKILIITE      varmuuskopiointi ennen poistoa, �l� k�yt� tavanomaista j�lkiliitett�
  linkki tiedostoon %s
  n [nimi]   Anna uusi tiedostonimi seuraavalle (ja tuleville) arkiston osalle/osille
 q          Keskeyt� tar
 !          K�ynnist� alikuori
 ?          N�yt� t�m� lista
  tuntematon tiedostotyyppi %s
 %s ei jatku t�ll� arkiston osalla %s on v��r�n kokoinen (%s != %s + %s) %s: Ei voi %s %s: Oikeuksien muuttaminen tilaan %s ei onnistu %s: Tiedoston omistusta ei voi muuttaa arvoon uid=%lu, gid=%lu %s: Tiedostoon %s ei voida luoda symlinkki� %s: Ei voi purkaa -- tiedosto on jatkoa toisesta arkiston osasta %s: Kovaa linkki� tiedostoon %s ei voi luoda %s: Ei voi poistaa %s: Uudelleennime�minen nimelle %s ei onnistu %s: Siirtyminen kohtaan %s ei onnistu %s: Symlinkitt�minen tiedostoksi %s ei onnistu %s: Poistetaan %s
 %s: Hakemisto on nimetty uudelleen %s: Hakemisto on uusi %s: Hakemisto nimettiin uudelleen ennen kuin sen tilaa voitiin purkaa %s: Tiedosto oli poistettu ennen sen lukemista %s: Virheellinen ryhm� %s: Ei l�ytynyt arkistosta %s: J�tet��n pois %s: Odottamaton ristiriita luotaessa hakemistoa %s: Tuntematon tiedostotyyppi "%c", vertailtu normaalina tiedostona %s: Tuntematon tiedostotyyppi "%c", purettiin normaaliksi tiedostoksi. %s: Tuntematon tiedostotyyppi, tiedostoa ei huomioida %s: Varoitus: Ei voi %s %s: Varoitus: Siirtyminen kohtaan %s ei onnistu %s: T�t� tiedostoa ei voitu varmuuskopioida %s: sis�lt�� virheellisen arkiston osan j�rjestysnumeron %s: ovea ei huomioida %s: tiedosto muuttui lukemisen aikana %s: tiedosto ei ole samalla tiedostoj�rjestelm�ll�; ei lis�t� %s: tiedosto on arkistossa; ei lis�t� %s: tiedosto on muuttumaton; ei lis�t� %s: virheellinen valitsin -- %c
 %s: virheellinen valitsin -- %c
 %s: valitsin "%c%s" ei salli argumenttia
 %s: valitsin "%s" on moniselitteinen
 %s: valitsin "%s" vaatii argumentin
 %s: valitsin "--%s" ei salli argumenttia
 %s: valitsin "-W %s" ei salli argumenttia
 %s: valitsin "-W %s" on moniselitteinen
 %s: valitsin vaatii argumentin -- %c
 %s: pistoketta ei huomioida %s: aikaleima %s on %lu sekuntia tulevaisuudessa %s: tunnistamaton valitsin "%c%s"
 %s: tunnistamaton valitsin "--%s"
 " (putki) --Jatkuu tavusta %s--
 --Sovitetut tiedostonimet--
 --Arkiston osan otsake--
 Arkiston base-256-arvo on sallitun %s-v�lin ulkopuolella Arkisto sis�lt�� merkkijonon %.*s, odotettiin numeerista %s-arvoa Arkisto sis�lt�� k�yt�st� poistuvia base-64-otsakkeita Arkistoa ei ole nimetty vastaamaan nimi�t� %s Arkiston oktaaliarvo %.*s on sallitun %s-v�lin ulkopuolella Arkiston oktaaliarvo %.*s on sallitun %s-v�lin ulkopuolella; oletetaan kahden komplementti Arkiston etumerkillinen base-64-merkkijono %s on sallitun %s-v�lin ulkopuolella Nauhan alussa, lopetetaan Yritet��n purkaa symboliset linkit koviksi linkeiksi Tyhji� merkkej� otsakkeessa, odotettiin numeerista %s-arvoa Puskuritilaa ei voi varata Muistin varaaminen lohkomiskertoimelle %d ei onnistu Arkistossa ei voi siirty� taaksep�in; sit� ei ehk� voi lukea ilman valitsinta -i Ty�hakemistoa ei voi vaihtaa Valitsimia --listed-incremental ja --newer ei voi k�ytt�� yhdess� Et�kuorta ei voi k�ynnist�� Ty�hakemistoa ei voi tallentaa Pakattuja arkistoja ei voi p�ivitt�� Pakattuja moniosaisia arkistoja ei voi k�ytt�� Pakattuja arkistoja ei voi varmistaa Moniosaisia arkistoja ei voi varmistaa Vakiosy�tteess�/tulosteessa olevaa arkistoa ei voi varmistaa Ristiriitaiset pakkausvalitsimet Sis�ll�t eroavat Kielt�ydyt��n pelkurimaisesti luomasta tyhj�� arkistoa Luodaan hakemisto: P�iv�ystiedostoa ei l�ytynyt Poistetaan ep�otsake arkistosta Laitenumero eroaa Laitenumero ei ole sallitulla v�lill� Tiedoston loppu odotetun k�ytt�j�n sy�tteen sijaan Viiv�stetty virhepoistuminen johtuu aikaisemmista virheist� Virhe kirjoitettaessa vakiotulosteeseen Virhe ei ole korjattavissa; poistutaan nyt Puretaan jatkuvat tiedostot normaaleiksi tiedostoiksi Tiedoston tyyppi eroaa GNU "tar" tallentaa useita tiedostoja yhteen nauha- tai levyarkistoon, sek�
palauttaa yksitt�isi� tiedostoja arkistosta.
 Haluttiin k�ytt�� GNU-ominaisuuksia ep�yhteensopivan arkistomuodon kanssa Roskakomento Luodaan otsakkeet negatiivisilla oktaaleilla GID eroaa I-solmun numero ei ole sallitulla v�lill� Virheellinen lohkomiskerroin Virheellinen laitenumero Virheellinen i-solmun numero Valitsimelle annettiin virheellinen tila Virheellinen omistaja Virheellinen tietueen koko Virheellinen nauhan pituus Virheellinen aikaleima Virheellinen arvo kent�lle record_size Puuttuva tiedostonimi valitsimen -C j�lkeen Muutosaika eroaa Tila eroaa Annettu useampi kuin yksi kynnysp�iv�ys Arkiston nime� ei ole annettu Ei uutta arkiston osaa; poistutaan.
 Ei ole linkitetty tiedostoon %s Vanha valitsin "%c" vaatii argumentin. Kumpikin valitsimista "-%s" ja "-%s" k�ytt�� vakiosy�tett� Valitsimet "-Aru" ovat ep�yhteensopivia valitsinten "-f -" kanssa *T�m�* tar ei tue valitsimia "-[0-7][lmh]" Ennenaikainen tiedoston loppu Valmistele osa #%d arkistolle %s ja paina return:  Luetaan tarkistuspiste %d Luetaan %s
 Tietueen koon on oltava %d:n monikerta. Nimettiin uudelleen %s -> %s Nimet��n %s takaisin nimelle %s
 Nimet��n uudelleen %s -> %s
 Siirtym�n suunta sallitun v�lin ulkopuolella Siirtym� sallitun v�lin ulkopuolella Koko eroaa Siirryt��n seuraavaan otsakkeeseen Korvataan tuntematon p�iv�ysmuoto %2$s arvolla %1$s Symlinkki eroaa Symlinkitettiin %s -> %s T�m� ei n�yt� tar-arkistolta T�ll� ohjelmalla EI lain sallimissa rajoissa OLE TAKUUTA.
Ohjelmaa saa levitt�� GNU:n General Public Licensen mukaisesti;
katso lis�tietoja tiedostosta COPYING. T�m� arkiston osa ei ole j�rjestyksess� Aikaleima ei ole sallitulla v�lill� Liian monta virhett�, lopetetaan Komento "%s --help" antaa lis�� tietoa.
 UID eroaa Odottamaton tiedoston loppu arkistossa Odottamaton tiedoston loppu sovitetuissa nimiss� Tuntematon takaisinsovituskomento %s Tuntematon j�rjestelm�virhe K�ytt�: %s [VALITSIN]
K�sittele nauha-asemaa, hyv�ksyen komentoja et�prosessilta.

  --version  N�yt� versiotiedot.
  --help     N�yt� t�m� ohje.
 Kelvolliset argumentit ovat: Tarkasta  N�kyv�n pitk�n nimen virhe N�kyv�n pitk�n nimen virhe Arkiston osa %s ei vastaa nimi�t� %s Arkisto-osan j�rjestysnumeron ylivuoto VAROITUS: Arkisto on ep�t�ydellinen VAROITUS: Arkisto-osan otsake puuttuu Varoitus: valitsin -I ei ole tuettu, ehk� tarkoitit -j tai -T? Varoitus: valitsin -y ei ole tuettu; ehk� tarkoitit -j? Kirjoitetaan tarkistuspiste %d Kirjoittaneet John Gilmore ja Jay Fenlason. Vain yht� valitsimista "-Acdtrux" voi k�ytt�� kerrallaan V�hint��n yht� valitsimista "-Acdtrux" on k�ytett�v� " Komento "%s" ep�onnistui argumentti %s on moniselitteinen %s:lle lohko %s:  lohko %s: ** NUL-lohko **
 lohko %s: ** Tiedoston loppu **
 lohkokoko lapsiprosessi exec/tcp: Palvelu ei ole k�ytett�viss� prosessienv�linen kanava argumentti %s on virheellinen %s:lle muisti lopussa rmtd: Puskuritilaa ei voi varata
 rmtd: Roskakomento %c
 rmtd: Ennenaikainen tiedoston loppu
 vakiosy�te vakiotuloste arvo %s on sallitun %s-v�lin %s..%s ulkopuolella arvo %s on sallitun %s-v�lin %s..%s ulkopuolella; korvataan arvolla %s 