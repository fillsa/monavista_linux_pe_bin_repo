��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  M  ?3  /  �4  m  �5    +8  �   9;  �  �;  1  �=  �   �>  �   �?     �@  �   �@     -A     EA  $   aA     �A  %   �A  /   �A     �A  2   B     ?B     YB  #   nB  '   �B     �B     �B     �B     	C  :   C      XC     yC     �C     �C  7   �C  8   �C  3    D  -   TD     �D  &   �D  '   �D  #   �D     E     #E  .   =E     lE     �E     �E     �E  !   �E     �E     F  !   -F  #   OF     sF     �F     �F  *   �F     �F     G     "G     $G     +G     BG     ]G  /   oG  (   �G  (   �G     �G  4   H  J   CH  6   �H     �H  %   �H  5   I     <I  $   UI  P   zI      �I  4   �I  *   !J  "   LJ     oJ  1   �J  "   �J  .   �J  )   K     =K     XK  "   gK     �K     �K     �K     �K      �K     
L  =   &L  %   dL     �L  %   �L     �L  �   �L  &   hM  	   �M  '   �M     �M  "   �M     �M     N     N     5N     NN     \N     pN     �N     �N     �N     �N     �N     �N     O     (O     GO     VO  :   vO  -   �O  (   �O     P  /   P     LP     fP  "   oP     �P     �P     �P  "   �P  #   �P      Q     2Q  )   JQ     tQ     �Q  %   �Q  �   �Q  $   nR     �R  "   �R      �R     �R     S  %   S      AS     bS  �   yS     T  	   )T     3T     IT  "   _T     �T     �T     �T  D   �T  =   U     \U  )   yU  '   �U  /   �U     �U     �U     V  
   ,V     7V     VV     rV     V     �V     �V     �V     �V  #   �V     W     &W     AW     QW  (   bW  4   �W     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2001-11-26 18:45+0200
Last-Translator: Toomas Soome <tsoome@ut.ee>
Language-Team: Estonian <et@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8-bit
 
Seadme blokkimine:
  -b, --blocking-factor=BLOKKE   BLOKKE x 512 baiti kirjele
      --record-size=NUMBER       NUMBER baiti kirjele, 512 kordne
  -i, --ignore-zeros             ignoreeri null blokke arhiivis (t�histab EOF)
  -B, --read-full-records        bloki lugemisel uuesti (4.2BSD torude jaoks)
 
Seadme valik:
  -f, --file=ARHIIV            kasuta arhiivi faili v�i seadet ARHIIV
      --force-local            arhiivi fail on lokaalne ka kooloniga
      --rsh-command=K�SK       kasuta rsh asemel k�sku K�SK
  -[0-7][lmh]                  m��ratle seade ja tihedus
  -M, --multi-volume           loo/n�ita/taasta mitme-vol��miga arhiiv
  -L, --tape-length=NUM        vaheta lint peale NUM x 1024 baidi kirjutamist
  -F, --info-script=FAIL       k�ivita skript p�rast iga lindi l�ppu (eeldab -M)
      --new-volume-script=FAIL sama kui -F FAIL
      --volno-file=FAIL        kasuta/uuenda vol��mi mumber failis FAIL
 
Faili atribuutide k�sitlemine:
      --owner=NIMI             kasuta NIMEe kui lisatud failide omanikku
      --group=NIMI             kasuta NIMEe kui lisatud failide gruppi
      --mode=MUUTUSED          kasuta lisatud failidel s�mbol moodi MUUTUSED
      --atime-preserve         �ra muuda arhiveeritud failidel kasutusaega
  -m, --modification-time      �ra taasta faili muutmise aega
      --same-owner             s�ilita taastamisel failide omanikud
      --numeric-owner          kasuta kasutaja/grupp numbreid
  -p, --same-permissions       taasta k�ik �igused
      --preserve-permissions   sama kui -p
  -s, --same-order             taasta failid arhiveerimis j�rjekorras
      --preserve-order         sama kui -s
      --preserve               sama kui nii -p kui -s
 
Kui pikk v�ti �tleb, et argument on kohustuslik, siis on see
argument kohustuslik ka vastavale l�hi v�tmele.
Sama kehtib ka lisa argumentidele.
 
P�hiline t��:
  -t, --list              n�ita arhiivi sisukorda
  -x, --extract, --get    taasta failid arhiivist
  -c, --create            loo uus arhiiv
  -d, --diff, --compare   otsi arhiivi ja failis�steemi erinevusi
  -r, --append            lisa failid arhiivi l�ppu
  -u, --update            lisa arhiivi ainult failid uuemad kui arhiivis
  -A, --catenate          lisa tar failid arhiivi
      --concatenate       sama kui -A
      --delete            kustuta arhiivist (mitte magnetlindilt!)
 
arhiivi l�pp on `~', kui pole antud --suffix v�i SIMPLE_BACKUP_SUFFIX.
Versiooni kontrolli v�ib m��rata --backup v�i VERSION_CONTROL, v��rtused on:

  t, numbered     tee nummerdatud arhiive
  nil, existing   nummerdatud kui arhiiv on nummerdatud, muidu lihtne
  never, simple   tee ainult lihtne arhiiv
 
Kasuta: %s [V�TI]... [FAIL]...

N�iteid:
  %s -cf arhiiv.tar foo bar # Loo failidest foo ja bar arhiiv.tar.
  %s -tvf arhiiv.tar        # N�ita arhiiv.tar t�ielikku failinimekirja.
  %s -xf arhiiv.tar         # Taasta k�ik failid arhiivist arhiiv.tar.
       --backup[=CONTROL]       varunda enne kustutamist, kasuta versiooni kontrolli
      --suffix=SUFFIX          varunda enne kustutamist, kasuta uut l�ppu
  viide %s-le
  n [nimi]   Anna j�rgmistele vol��midele uus nimi
 q          Katkesta tar
 !          K�ivita k�suinterpretaator
 ?          Tr�ki see info
  tundmatu failit��p %s
 %s ei j�tku sellel vol��mil %s on vale suurusega (%s != %s + %s) %s: %s ei �nnestu %s: Ei �nnestu seada uueks moodiks %s %s: Ei �nnestu seada omanikuks uid %lu, gid %lu %s: Ei saa luua %s nimeviidet %s: Ei saa taastada -- fail j�tkub teisel vol��mil %s: Viidet %s ei saa luua %s: Ei saa eemaldada %s: ei �nnestu �mber nimetada %s-ks %s: Ei �nnestu liikuda positsioonile %s %s: Ei saa luua %s nimeviidet %s: Kustutan %s
 %s: Kataloog on �mber nimetatud %s: Kataloog on uus %s: Kataloog nimetati �mber, enne kui sai loetud tema olek %s: Fail kustutati enne lugemist %s: Vigane grupp %s: Puudub arhiivis %s: J�tan vahele %s: Ootamatu koosk�lalisuse probleem kataloogi loomisel %s: Tundmatu failit��p '%c', v�rdlen tavaliste failidena %s: Tundmatu failit��p %c, taastan tavalise failina %s: Tundmatu failit��p; ignoreerin seda faili %s: Hoiatus: %s ei �nnestu %s: Hoiatus: Ei saa positsioneerida %s %s: Selle faili varundamine eba�nnestus %s: sisaldab vigast vol��mi numbrit %s: ignoreerin ust %s: fail muutus lugemisel %s: fail on teises failis�steemis; ei salvesta %s on arhiiv; ei salvesta %s: pole muutunud; ei salvesta %s: vigane v�ti -- %c
 %s: vigane v�ti -- %c
 %s: v�tmel `%c%s' pole argumente
 %s: v�ti `%s' on segane
 %s: v�ti `%s' n�uab argumenti
 %s: v�tmel `--%s' pole argumente
 %s: v�ti `-W %s' ei luba argumenti
 %s: v�ti `-W %s' on segane
 %s: v�ti n�uab argumenti -- %c
 %s: ignoreerin pesa %s: ajatempel %s on %lu sekundit tulevikus %s: tundmatu v�ti `%c%s'
 %s: tundmatu v�ti `--%s'
 ' (toru) --J�tkub baidilt %s--
 --T�keldatud failinimed--
 --Vol��mi p�is--
 Arhiivi base-256 v��rtus on %s piiridest v�ljas Arhiiv sisaldab %.*s, eeldati numbrit %s Arhiiv sisaldab aegunuid base-64 p�iseid Arhiivi m�rgend ei sobi `%s' Arhiivi kaheksandv��rtus %.*s on %s piiridest v�ljas Arhiivi kaheksandv��rtus %.*s on %s piiridest v�ljas; eeldan kahe t�iendit Arhiivi m�rgiga base-64 s�ne %s on %s piiridest v�ljas Lindi alguses, l�petan t�� �ritan taastada nimeviiteid viidetena T�hjad v�ljad p�ises kohtadel, kus eeldati numbrit %s Buhvritele ei j�tku m�lu Blokkimis faktorile %d ei j�tku m�lu Arhiivi ei �nnestu tagasi kerida; lugemiseks v�ib olla vajalik kasutada v�tit -i Ei �nnestu vahetada t��kataloogi --listed-incremental ja --newer ei saa koos kasutada Ei saa k�ivitada kaug k�suinterpretaatorit T��kataloogi ei �nnestu salvestada Ei saa uuendada pakitud arhiive Ei saa kasutada mitme vol��milisi pakitud arhiive Ei saa kontrollida pakitud arhiive Ei suuda kontrollida mitme vol��milisi arhiive Ei saa kontrollida sisend/v�ljund arhiive Konfliktsed pakkimisv�tmed Sisu on erinev Ega ikka ei tee k�ll t�hja arhiivi Loon kataloogi: Kuup�eva fail puudub Kustutan arhiivist mitte-p�ise Seadme numbrid on erinevad Seadmenumber on piiridest v�ljas EOF kasutaja vastuse asemel Eelnevad vead ei l�petanud veel programmi t��d, l�petan veaga Viga standardv�ljundisse kirjutamisel �letamatu t�rge: l�petan t�� Taastan j�tkuvad failid kui tavalised Failit��bid on erinevad GNU `tar' salvestab mitu faili kokku �hte ainsasse lindi v�i ketta arhiivi,
ja on v�imeline taastama arhiivist ka �ksikuid faile.
 Arhiivi formaat ei toeta GNU laiendusi R�mpsk�sk Genereerin negatiivsed kaheksand p�ised GID on erinevad I-kirje number on piiridest v�ljas Vigane blokkimisfaktor Vigane seadmenumber Vigane i-kirje number V�tmega anti vigane mood Vigane omanik Vigane kirje suurus Vigane lindi pikkus Vigane ajatempel Kirje suuruse v��rtus on vigane Faili nimi peale -C on puudu Muutmise ajad erinevad Moodid erinevad Rohkem kui �ks etteantud aeg Arhiivi nime pole Pole uus vol��m; l�petan t��.
 ei viita %s-le Vana v�ti `%c' n�uab argumenti. M�lemad v�tmed - `-%s' ja `-%s' eeldavad standard sisendit V�tmeid `-Aru' ei saa kasutada v�tmega `-f -' *See* tar ei toeta v�tmeid `-[0-7][lmh]' Ootamatu faili l�pp Otsi vol��m #%d %s'le ja vajuta return klahvi:  Lugemise kontrollpunkt %d Loen %s
 Kirje suurus peab olema %d kordne. %s nimetatud %s-ks Nimetan `%s' tagasi `%s'
 Annan %s uueks nimeks %s
 Otsimise suund on piiridest v�ljas Otsimise indeks on piiridest v�ljas Suurused erinevad H�ppan j�rgmise p�iseni Kasutan %s tundmatu ajaformaadi %s asemel Nimeviited erinevad Loodud %s nimeviide %s Hmm.... see ei tundu olema tar arhiiv See programm ei anna mingeid garantiisid, seaduste piirides.
Programmi v�ib levitada vastavalt GNU General Public License tingimustele;
detailne info on failis COPYING. See vol��m on v�ljaspoolt j�rjekorda Ajatempel on piiridest v�ljas Liig palju vigu, j�tan t�� pooleli `%s --help' annab rohkem infot.
 UID on erinevad Ootamatu arhiivi l�pp T�keldatud nimedel ootamatu failil�pp Tundmatu kokkusobitamise k�sk %s Tundmatu s�steemi viga Kasuta: %s [v�ti]
Manipuleeri lindiseadmega, lubades k�ske teistest protsessidest.

  --version  V�ljasta versiooniinfo.
  --help     V�ljasta abiinfo.
 Lubatud argumendid on: Kontroll  Ilmne liiga pikk nimi Ilmne liiga pikk nimi Vol��m `%s' ei sobi vol��miga `%s' Vol��mi number on liiga suur HOIATUS: Arhiiv pole t�ielik HOIATUD: Puudub vol��mi p�is Hoiatus: v�tit -I ei toetata; v�ibolla te pidasite silmas -j v�i -T? Hoiatus: v�tit -y ei toetata; v�ibolla te pidasite silmas -j? Kirjutamise kontrollpunkt %d Kirjutanud: John Gilmore ja Jay Fenlason. Korraga ainult �ks v�tmetest `-Acdtrux' Peab kasutama v�hemalt �ht v�tmetest `-Acdtrux' ` `%s' k�sklus sai vea segane argument %s (`%s') blokk %s:  blokk %s: ** NULlide blokk **
 blokk %s: ** Faili l�pp **
 bloki suurus alamprotsess exec/tcp: Teenus pole kasutatav protsessidevaheline kanal vigane argument %s (`%s') m�lu on otsas rmtd: Ei saa v�tta buhvritele m�lu
 rmtd: R�mpsk�sk %c
 rmtd: Ootamatu faili l�pp
 standard sisend standard v�ljund v��rtus %s on %s piiridest %s..%s v�ljas v��rtus %s on %s piiridest %s..%s v�ljas; asendan %s 