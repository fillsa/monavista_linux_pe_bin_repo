��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  l  ?3  f  �4  �  6  �  �8  �   �<  H  t=  �  �?    >A    FB     JC  �   XC     D  %   D  !   BD     dD  %   uD  5   �D  5   �D  @   E  "   HE     kE      �E      �E  0   �E     �E  $   F     *F  @   @F  *   �F     �F     �F     �F  6   �F  8   G  8   XG  (   �G     �G  ,   �G  4   �G     4H     TH  '   nH  ,   �H  *   �H  (   �H     I     3I  )   KI  $   uI      �I  )   �I  *   �I  '   J  !   8J     ZJ  =   zJ     �J     �J     �J     �J     K     K     9K  0   NK  9   K  -   �K  "   �K  6   
L  c   AL  2   �L     �L  3   �L  ?   ,M  &   lM  ?   �M  C   �M     N  1   2N  #   dN  $   �N  -   �N  :   �N  /   O  0   FO  1   wO     �O     �O  0   �O     
P  ,   !P  !   NP     pP     �P  /   �P  /   �P  #   
Q     .Q  )   NQ     xQ     �Q  @   
R     KR  '   _R     �R     �R  $   �R     �R     �R  !   �R     !S     3S     KS     `S     rS     �S     �S     �S     �S     �S  &   T     <T  "   PT  >   sT  (   �T  0   �T     U  3   &U     ZU  
   tU  +   U     �U  &   �U     �U  /   V     2V     PV  $   bV  3   �V     �V  $   �V     �V  �   W     �W     �W     X  4   X     RX     `X  '   }X  '   �X     �X  �   �X     �Y     �Y     �Y     �Y     �Y     �Y  !   Z     8Z  ;   TZ  3   �Z     �Z  0   �Z  4   [  %   F[     l[     n[  $   �[  	   �[     �[     �[     �[     �[     \     +\     B\     ^\  -   k\     �\     �\     �\     �\  $   �\  4   ]     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2003-03-12 18:00+0200
Last-Translator: Rafa� Maszkowski <rzm@icm.edu.pl>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
 
Parametry blok�w:
  -b, --blocking-factor=BLOKI    BLOKI x 512 bajt�w na rekord
      --record-size=ROZMIAR      ROZMIAR bajt�w na rekord, wielokrotno�� 512
  -i, --ignore-zeros             ignorowanie wyzerowanych blok�w (oznacza EOF)
  -B, --read-full-records        podzielenie na bloki przy odczycie (dla pipe
                                   4.2BSD)
 
Wyb�r i prze��czanie urz�dze�:
  -f, --file=ARCHIWUM            u�ycie pliku lub urz�dzenia ARCHIWUM
      --force-local              plik archiwum lokalny, nawet z dwukropkiem
      --rsh-command=KOMENDA      u�yj KOMENDY zamiast rsh
  -[0-7][lmh]                    podanie nap�du i g�sto�ci
  -M, --multi-volume             tw�rzenie/wypisanie/rozpakowanie archiwum
                                   wielocz�ciowego
  -L, --tape-length=ILE          zmiana ta�my po zapisaniu ILE x 1024 bajt�w
  -F, --info-script=PLIK         uruchomienie skryptu na ko�cu ta�my (w��cza
                                   -M)
      --new-volume-script=PLIK   to samo co -F PLIK
      --volno-file=PLIK          u�ycie/uaktualnienie numeru cz�ci w PLIKU
 
Przetwarzanie atrybut�w plik�w:
      --owner=NAZWA            nadanie w�a�ciciela NAZWA dodanym plikom
      --group=NAZWA            nadanie grupy NAZWA dodanym plikom
      --mode=ZMIANA            uprawnienia dodanych plik�w (podane
                                 symbolicznie)
      --atime-preserve         bez zmiany czasu dost�pu pakowanych plik�w
  -m, --modification-time      bez odtworzenia czasu modyfikacji rozpakowanego
                                 pliku
      --same-owner             staranie si� o odtworzenie w�a�cicieli plik�w
      --numeric-owner          u�ywanie numer�w, nie nazw u�ytkownik�w/grup
  -p, --same-permissions       rozpakowanie ca�ej informacji o uprawnieniach
      --no-same-permissions    bez rozpakowania informacji o uprawnieniach
      --preserve-permissions   to samo co -p
  -s, --same-order             pliki do rozpakowania posortowane jak w archiwum
      --preserve-order         to samo co -s
      --preserve               to samo co r�wnocze�nie -p i -s
 
Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
Podobnie je�eli argument jest podany jako opcjonalny.
 
G��wny tryb dzia�ania:
  -t, --list              wypisanie zawarto�ci archiwum
  -x, --extract, --get    rozpakowanie plik�w z archiwum
  -c, --create            utw�rzenie nowego archiwum
  -d, --diff, --compare   znalezienie r�nic mi�dzy archiwum i plikami na dysku
  -r, --append            do��czenie plik�w na ko�cu archiwum
  -u, --update            do��czenie tylko plik�w nowszych ni� kopia w archiwum
  -A, --catenate          do��czenie plik�w tar do archiwum
      --concatenate       to samo co -A
      --delete            skasowanie plik�w z archiwum (nie na ta�mie!)
 
Przyrostek kopii zapasowej to `~', je�eli nie zosta� zmieniony przez --suffix
lub SIMPLE_BACKUP_SUFFIX.  Spos�b zarz�dzania wersjami mo�e by� zmieniony przez
--backup lub VERSION_CONTROL, mo�liwe warto�ci:

  t, numbered     zrobienie numerowanych kopii zapasowych
  nil, existing   numerowane je�eli takie ju� s�, w przeciwnym wypadku proste
  never, simple   proste kopie zapasowe
 
U�ycie: %s [OPCJA]... [PLIK]...

Przyk�ady:
  %s -cf archive.tar foo bar  # utworzenie archive.tar z plik�w foo i bar.
  %s -tvf archive.tar         # wypisanie szczeg�owe plik�w w archive.tar.
  %s -xf archive.tar          # rozpakowanie plik�w z archive.tar.
       --backup[=TRYB]          kopia zapasowa przed usuni�ciem, wybranie trybu
                                 zarz�dzania wersjami
      --suffix=PRZYROSTEK      kopia zapasowa przed usuni�ciem, zmiana
                                 domy�lnego PRZYROSTKA
  ��cze do %s
  n [nazwa]  Podanie nowej nazw� dla nast�pnej (i kolejnych) cz�ci
 q          Informacje o programie tar
 !          Uruchomienie pow�oki
 ?          Wypisanie tej listy
  nieznany typ pliku %s
 %s nie jest kontynuowany w tej cz�ci %s to z�y rozmiar (%s != %s + %s) %s: Nie mo�na %s %s: Nie mo�na zmieni� uprawnie� na %s %s: Nie mo�na zmieni� w�a�ciciela na uid %lu, gid %lu %s: Nie mo�na by�o utworzy� ��cza symbolicznego do %s %s: Nie mo�na odtworzy� -- plik jest kontynuowany z innej cz�ci %s: Nie mo�na utworzy� ��cza do %s %s: Nie mo�na usun�� %s: Nie mo�na przemianowa� na %s %s: Nie mo�na ustawi� pozycji %s %s: Nie mo�na utworzy� ��cza symbolicznego do %s %s: Usuni�cie %s
 %s: Nazwa katalogu zosta�a zmieniona %s: Katalog jest nowy %s: Katalog zmieni� nazw� zanim mo�na by�o odtworzy� jego status %s: Plik usuni�ty zanim zosta� przeczytany %s: b��dna grupa %s: Nie znalaz�em w archiwum %s: Pomini�ty %s: Nieoczekiwana niesp�jno�� przy zak�adaniu katalogu %s: Nieznany typ pliku '%c' por�wnywany jako zwyk�y plik %s: Nieznany typ pliku '%c', odtworzony jako plik zwyk�y %s: Nieznany typ pliku; plik zignorowany %s: Uwaga: Nie mo�na %s %s: Uwaga: Nie mo�na ustawi� wska�nika na %s %s: Nie mo�na by�o zrobi� kopii zapasowej tego pliku %s: zawiera b��dny numer cz�ci %s: zignorowany plik door %s: plik zmieni� si� w trakcie czytania %s: plik w innym systemie plik�w; bez zapisu %s: plik jest w tym archiwum; nie zapisuj� %s: plik jest niezmieniony; nie zapisuj� %s: nielegalna opcja -- %c
 %s: b��dna opcja -- %c
 %s: opcja `%c%s' nie mo�e mie� argumentu
 %s: opcja ~%s' jest niejednoznaczna
 %s: opcja `%s' wymaga argumentu
 %s: opcja `--%s' nie mo�e mie� argumentu
 %s: opcja `-W %s' nie mo�e mie� argumentu
 %s: opcja `-W %s' jest niejednoznaczna
 %s: opcja wymaga argumentu -- %c
 %s: zignorowane gniazdo z nazw� %s: znacznik czasowy %s jest przesuni�ty o %lu s w przysz�o�� %s: nierozpoznana opcja `%c%s'
 %s: nierozpoznana opcja `--%s'
 ' (pipe) --Kontynuacja od bajtu %s--
 --Kodowane nazwy plik�w--
 --Nag��wek cz�ci--
 Warto�� base256 w archiwum jest spoza zakresu %s Archiwum zawiera %.*s tam gdzie oczekiwana by�a liczba %s Archiwum zawiera przestarza�e nag��wki base64 Etykieta archiwum nie pasuje do %s Warto�� �semkowa %.*s w archiwum jest spoza zakresu %s Warto�� �semkowa %.*s w archiwum jest spoza zakresu %s; b�dzie traktowana jak uzupe�nienie dw�jkowe W archiwum jest �a�cuch base64 %s spoza zakresu %s Na pocz�tku ta�my, teraz ko�cz� Pr�ba odtworzenia ��cza symbolicznego jako zwyk�ego Odst�py w nag��wku zamiast spodziewanej warto�ci numerycznej %s Nie mo�na przydzieli� miejsca na bufor Nie mo�na by�o przydzieli� pami�ci dla wielokrotno�ci blok�w %d Nie mo�na si� cofn�� w pliku archiwum; mo�e nie by� czytelny bez -i Nie mo�na zmieni� katalogu Nie mo�na po��czy� --listed-incremental z --newer Nie mo�na uruchomi� zdalnego shella Nie mo�na zapisa� bie��cego katalogu Nie mo�na uaktualni� archiwum skompresowanego Nie mo�na u�ywa� wielocz�ciowego archiwum skompresowanego Nie mo�na zweryfikowa� archiwum skompresowanego Nie mo�na zweryfikowa� archiwum wielocz�ciowego Nie mo�na zweryfikowa� archiwum z/do stdin/stdout Niezgodne opcje kompresji Zawarto�ci si� r�ni� Tch�rzliwie odmawiam utworzenia pustego archiwum Tworzony jest katalog: Nie znaleziono pliku maj�cego dat� graniczn� Kasowanie z archiwum nie-nag��wka R�ni� si� numery urz�dze� Numer urz�dzenia spoza zakresu EOF kiedy by�a oczekiwana odpowied� u�ytkownika Zako�czenie z b��dem z powodu uprzednich b��d�w B��d pisania na standardowe wyj�cie B��d nie do naprawienia: koniec Odtwarzanie plik�w ci�g�ych jako zwyk�ych R�ne typy plik�w `tar' GNU zapisuje wiele plik�w razem na na jednej ta�mie lub archiwum
dyskowym i mo�e odzyska� poszczeg�lne pliki z archiwum.
 Pr�ba u�ycia rozszerze� GNU z niekompatybilnym formatem archiwum Bezsensowna komenda Tworzenie ujemnych nag��wk�w �semkowych Gid si� r�ni Numer inodu spoza zakresu B��dny wsp�czynnik ��czenia w bloki B��dny numer urz�dzenia B��dny numer inodu B��dne uprawnienia podane w opcji B��dny w�a�ciciel B��dna wielko�� rekordu B��dna d�ugo�� ta�my B��dny czas pliku B��dna warto�� record_size Brakuj�ca nazwa pliku po -C Czas modyfikacji si� r�ni Uprawnienia si� r�ni� Wi�cej ni� jedna data graniczna Nie podana nazwa archiwum Brak nowej cz�ci; zako�czenie pracy.
 Nie do��czony do %s Stara opcja `%c' wymaga argumentu. Opcje `-%s' i `-%s' obie chc� dost�pu do standardowego wej�cia Opcje `-Aru' s� niekompatybilne z `-f -' Opcje `-[0-7][lmh]' nie s� u�ywane w *tym* tarze Przedwczesny koniec pliku Przygotuj cz�� numer %d dla %s i naci�nij return:  Czytam punkt kontrolny %d Czytam %s
 Rozmiar rekordu musi by� wielokrotno�ci� %d Zmiana nazwy %s na %s Nazwa zmieniona z %s z powrotem na %s
 Nazwa %s zmieniona na %s
 Spos�b ustawiania pozycji w pliku spoza zakresu Pozycja w pliku poza zakresem Rozmiar si� r�ni Przeskoczenie do nast�pnego nag��wka Postawienie %s w miejscu nieznanego formatu daty %s ��cze symboliczne si� r�ni Utworzone ��cze symboliczne %s do %s To nie wygl�da jak archiwum tar Autorzy nie daj� �ADNYCH gwarancji, do granic, na kt�re zezwala prawo.
Program mo�e by� rozpowszechniany na warunkach Og�lnej Licencji Publicznej
GNU; szczeg�y s� opisane w pliku COPYING. Ta cz�� nie jest kolejn� Czas spoza zakresu Za du�o b��d�w, ko�cz� Spr�buj `%s --help' �eby otrzyma� wi�cej informacji
 Uid si� r�ni Nieoczekiwany EOF w archiwum Niespodziewany EOF w kodowanych nazwach Nieznana komenda rozkodowuj�ca nazwy %s Nieznany b��d systemu U�ycie: %s [OPCJA]
Manipulacja nap�dem ta�mowym, przyjmowanie komend od zdalnych proces�w.

  --version  Wypisanie informacji o wersji.
  --help     Pokazanie tych informacji.
 Prawid�owe argumenty to: Sprawdzanie  B��d d�ugiej nazwy B��d d�ugiej nazwy Cz�� %s nie pasuje do %s Przepe�nienie numeru cz�ci UWAGA: Archiwum jest niekompletne UWAGA: Brak etykiety cz�ci Uwaga: opcja -I nie jest u�ywana, mo�e chodzi o -j albo -T? Uwaga: opcja -y nie jest u�ywana, mo�e chodzi o -j? Zapis punktu kontrolnego %d Napisany przez Johna Gilmore'a i Jaya Fenlasona. Nie mo�na poda� wi�cej ni� jednej opcji z `-Acdtrux' Musisz poda� jedn� z opcji `-Acdtrux' ` `%s' polecenie zwr�ci�o b��d niejednoznaczny argument %s opcji %s blok %s:  blok %s: ** Blok zer **
 blok: %s: ** Koniec pliku **
 rozmiar bloku proces potomny exec/tcp: Us�uga niedost�pna kana� mi�dzy procesami b��dny argument %s opcji %s brak pami�ci rmtd: Nie mo�na przydzieli� miejsca na bufor
 rmtd: Bezsensowna komenda %c
 rmtd: Przedwczesny EOF
 stdin stdout warto�� %s z %s poza zakresem %s..%s warto�� %s z %s poza zakresem %s..%s; podstawione %s 