��          �   %   �      `  �  a  �  4  !   �  !   �  /     <   6  2   s  $   �     �  %   �  *   
  +   5  .   a     �     �     �     �  "   �     	     2	  3   @	    t	     �
     �
     �
     �
  G  �
  �  4  �  �  (   �  ,   �  @   �  R     5   m  $   �     �  )   �  $     3   0  ;   d     �     �     �     �  +        A     Z  9   k  A  �     �               8           
                                                                                        	                           -n, --name=name         get the named extended attribute value
  -d, --dump              get all extended attribute values
  -e, --encoding=...      encode values (as 'text', 'hex' or 'base64')
      --match=pattern     only get attributes with names matching pattern
      --only-values       print the bare values only
  -h, --no-dereference    do not dereference symbolic links
      --absolute-names    don't strip leading '/' in pathnames
  -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P  --physical          physical walk, do not follow symbolic links
      --version           print version and exit
      --help              this help text
   -n, --name=name         set the value of the named extended attribute
  -x, --remove=name       remove the named extended attribute
  -v, --value=value       use value as the attribute value
  -h, --no-dereference    do not dereference symbolic links
      --restore=file      restore extended attributes
      --version           print version and exit
      --help              this help text
 %s %s -- get extended attributes
 %s %s -- set extended attributes
 %s: %s: No filename found in line %d, aborting
 %s: No filename found inline %d of standard input, aborting
 %s: Removing leading '/' from absolute path names
 %s: invalid regular expression "%s"
 -V only allowed with -s
 A filename to operate on is required
 At least one of -s, -g, or -r is required
 Attribute "%s" had a %d byte value for %s:
 Attribute "%s" set to a %d byte value for %s:
 Could not get "%s" for %s
 Could not remove "%s" for %s
 Could not set "%s" for %s
 No such attribute Only one of -s, -g, or -r allowed
 Unrecognized option: %c
 Usage: %s %s
 Usage: %s %s
Try `%s --help' for more information.
 Usage: %s [-LRSq] -s attrname [-V attrvalue] pathname  # set value
       %s [-LRSq] -g attrname pathname                 # get value
       %s [-LRSq] -r attrname pathname                 # remove attr
      -s reads a value from stdin and -g writes a value to stdout
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr-2.4.14
POT-Creation-Date: 2004-01-28 21:04+0100
PO-Revision-Date: 2004-01-28 21:09+0100
Last-Translator: Jakub Bogusz <qboosh@pld-linux.org>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
   -n, --name=nazwa        odczyt warto�ci rozszerzonego atrybutu po nazwie
  -d, --dump              odczyt warto�ci wszystkich rozszerzonych atrybut�w
  -e, --encoding=...      kodowanie warto�ci (jako 'text', 'hex' lub 'base64')
      --match=wzorzec     odczyt tylko warto�ci atrybut�w pasuj�cych do wzorca
      --only-values       wypisywanie tylko samych warto�ci
  -h, --no-dereference    nie pod��anie za dowi�zaniami symbolicznymi
      --absolute-names    nie pomijanie wiod�cych '/' ze �cie�ek
  -R, --recursive         rekurencyjne wchodzenie do katalog�w
  -L, --logical           przechodzenie logiczne, pod��anie za dowi�zaniami
                            symbolicznymi
  -P, --physical          przechodzenie fizyczne, nie pod��anie za dowi�zaniami
                            symbolicznymi
      --version           wy�wietlenie informacji o wersji i zako�czenie
      --help              ten tekst pomocy
   -n, --name=nazwa        ustawienie warto�ci atrybutu po nazwie
  -x, --remove=nazwa      usuni�cie atrybutu po nazwie
  -v, --value=warto�ci    u�ycie warto�ci jako warto�ci atrybutu
  -h, --no-dereference    nie pod��anie za dowi�zaniami symbolicznymi
      --restore=plik      odtworzenie rozszerzonych atrybut�w
      --version           wy�wietlenie informacji o wersji i zako�czenie
      --help              ten tekst pomocy
 %s %s -- odczyt rozszerzonych atrybut�w
 %s %s -- ustawianie rozszerzonych atrybut�w
 %s: %s: Nie znaleziono nazwy pliku w linii %d, przerwanie pracy
 %s: Nie znaleziono nazwy pliku w linii %d standardowego wej�cia, przerwanie pracy
 %s: Usuni�cie wiod�cego '/' ze �cie�ek bezwzgl�dnych
 %s: b��dne wyra�enie regularne "%s"
 -V dozwolone tylko z -s
 Nazwa pliku do operacji jest obowi�zkowa
 Wymagane jest jedno z -s, -g lub -r
 Atrybut "%1$s" dla %3$s mia� warto�� %2$d-bajtow�:
 Atrybut "%1$s" dla %3$s ustawiono na warto�� %2$d-bajtow�:
 Nie mo�na odczyta� "%s" dla %s
 Nie mo�na usun�� "%s" dla %s
 Nie mo�na ustawi� "%s" dla %s
 Nie ma takiego atrybutu Dozwolone jest tylko jedno z -s, -g lub -r
 Nierozpoznana opcja: %c
 Sk�adnia: %s %s
 Sk�adnia: %s %s
`%s --help' wy�wietli wi�cej informacji.
 Sk�adnia: %s [-LRSq] -s atrybut [-V warto��] �cie�ka  # ustawienie warto�ci
          %s [-LRSq] -g atrybut �cie�ka               # odczytanie warto�ci
          %s [-LRSq] -r atrybut �cie�ka               # usuni�cie atrybutu
      -s odczytuje warto�� ze standardowego wej�cia,
      -g zapisuje na standardowe wyj�cie
 odczyt atrybutu %s dla %s wypisywanie atrybut�w %s ustawianie atrybutu %s dla %s ustawianie atrybut�w dla %s 