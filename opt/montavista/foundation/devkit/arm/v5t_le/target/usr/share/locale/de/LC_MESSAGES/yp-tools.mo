��    �      �  �   |	      �     �  }   �  �   T  0   �  4     6   D  :   {  +   �  /   �  *     .   =  ,   l  '   �  %   �  2   �  <     0   W  .   �  D   �  2   �  "   /  (   R  1   {  @   �  %   �  0     3   E  <   y  <   �     �       0        N  8   f  '   �  "   �  /   �       4   7  5   l     �     �     �     �     �     �       +   2  )   ^  )   �  -   �     �  #   �  )   "  '   L  /   t  $   �     �  �   �     �     �  "   �     �       1        E     _  +   ~  1   �  &   �  %        )  
   /     :     T     j     s  "        �     �  $   �     �     �               *     6     R     m     z  ;   �     �     �     �          7     >     F  "   N     q  .   �  I   �  -        2  6   7     n     |     �     �     �  :   �            6   4  &   k  ,   �  .   �  @   �  A   /     q     �     �     �     �     �      �       #         D     _  4   z     �  !   �     �  4   �  ;   )   &   e   /   �   &   �   ?   �   5   #!  (   Y!  8   �!  0   �!     �!  <   "     A"  3   Z"     �"  1  �"     �#  q   �#  �   _$  4   %  9   D%  8   ~%  @   �%  ,   �%  2   %&  +   X&  1   �&  1   �&  6   �&  %   '  ?   E'  >   �'  ,   �'  2   �'  8   $(  8   ](  '   �(  (   �(  >   �(  B   &)  %   i)  )   �)  9   �)  F   �)  ;   :*     v*     �*  <   �*     �*  :   +  2   <+  3   o+  -   �+  $   �+  >   �+  E   5,     {,     �,     �,     �,  "   �,  "   �,  &   -  8   >-  6   w-  '   �-  D   �-  .   .  ,   J.  1   w.  6   �.  0   �.  "   /  '   4/  �   \/     80     V0  -   u0     �0  $   �0  =   �0  #   %1  *   I1  2   t1  9   �1  ,   �1  +   2     :2     A2  &   Q2     x2     �2     �2  +   �2  -   �2     �2  .   �2  
   .3     93     U3     r3     �3  !   �3     �3     �3     �3  D   4  #   K4  '   o4  &   �4  -   �4     �4     �4     5  %   5     85  1   U5  T   �5  2   �5     6  ?   6     T6     g6     �6     �6     �6  :   �6     	7      7  8   ;7  '   t7  4   �7  .   �7  D    8  C   E8     �8     �8  %   �8     �8     �8  #   9  +   )9     U9  3   l9  $   �9  *   �9  =   �9  !   .:  #   P:     t:  :   {:  =   �:  7   �:  6   ,;  7   c;  J   �;  5   �;  9   <  9   V<  4   �<     �<  D   �<     )=  G   I=  "   �=         �          m   I   S   :   �               �       ?       z   @       %       N   E   Y   M   �       V          q   )                  �      D      /       ,   8   �   6      !      �   a           -   �   �   �       7           f   i   J   Z              �   X       3          �   O   ;   #   9   �   K   >         0   g           u      L       d   '   �             "       t              `   _   W          l         �       2   x   j   &   5   =   R   *       �   +   U          A   c                 G   b   ~   p   �       .   T      $   F   �   w       1   |   v   ^   �      �       s   [       H   �       �   B   k           h       (   ]           4                      e          
       r       Q           	   n                  \      {   o       }   C      P          <   �   y        	Reason: %s
 
Changing full name for %s on %s.
To accept the default, simply press return. To enter an empty
field, type the word "none".
 
Changing login shell for %s on %s.
To accept the default, simply press return. To use the
system's default shell, type the word "none".
 
The GECOS information has been changed on %s.

 
The GECOS information has not been changed on %s.

 
The NIS account information has been changed on %s.

 
The NIS account information has not been changed on %s.

 
The NIS password has been changed on %s.

 
The NIS password has not been changed on %s.

 
The login shell has been changed on %s.

 
The login shell has not been changed on %s.

       --usage    Give a short usage message
       --version  Print program version
   -?, --help     Give this help list
   -V n           Version of ypbind, V2 is default
   -d domain      Use 'domain' instead of the default domain
   -f             Change GECOS field information
   -h host        Ask ypserv process at 'host'
   -h hostname    Query ypserv on 'hostname' instead the current one
   -h hostname    Set ypbind's binding on hostname
   -k             Display map keys
   -l             Change the login shell
   -m map         Use this existing map for tests
   -m mname       Find the master NIS server for the map 'mname'
   -p             Change the password
   -q             Be quiet, don't print messages
   -t             Inhibits map nickname translation
   -u user        Use the existing NIS user 'user' for tests
   -x             Display the map nickname translation table
  - ypbind not running ?
 %d tests failed
 %s - set or display name of current NIS domain

 %s not running ypserv.
 %s: Only root may change account information for others
 %s: can't find the master ypserver: %s
 %s: can't get local yp domain: %s
 %s: no colons allowed in GECOS field... sorry.
 %s: unknown user (uid=%ld).
 %s: yppasswd daemon running on illegal port ("%s").
 %s: yppasswdd not running on NIS master host ("%s").
 -- skipped --
 All tests passed
 Bad arguments Bad operation Bogus entry in line %d: %s
 Calling %s failed: %s
 Can't create connection to %s.
 Can't find master for map "%s". Reason: %s
 Can't find master for map %s. Reason: %s
 Can't get any map parameter information.
 Can't get map list for domain %s. Reason: %s
 Can't get master for map %s.
 Can't get order number for map %s.
 Can't match key %s in map %s. Reason: %s
 Cannot ypset for domain %s on host %s.
 Changing NIS account information for %s on %s.
 Changing NIS password for %s on %s.
 Configured domainname is "%s"
 Copyright (C) %s Thorsten Kukuk.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Couldn't get NIS server Database bad Domain %s is not supported by %s.
 Domain %s is supported.
 Domain not bound Domainname which will be used due the test: "%s"
 ERROR: No running ypbind
 ERROR: domainname is not set!
 Error while changing the GECOS information. Error while changing the NIS account information. Error while changing the NIS password. Error while changing the login shell. False Home Phone Host name lookup failure
 Internal ypbind error Location Login shell Map %s has order number %ld. [%s]
 Mismatch - password unchanged.
 Name No address associated with name: %s
 No more No running ypbind
 No running ypbind.
 No such domain No such map No such map %s. Reason: %s
 Not a valid password: %s.
 Office Phone Password unchanged.
 Please don't use something like your username as password.
 Please enter %spassword: Please enter new password: Please enter root password: Please retype new password: Reason Sorry.
 Success System resource allocation failure The master server is %s.
 The password must have at least 6 characters.
 The password must have both upper and lowercase letters, or non-letters.
 Too many tries. Aborted.
Password unchanged.
 True Try `%s --help' or `%s --usage' for more information.
 Unknown error Unknown host: %s
 Unknown server error
 Unknown ypbind error Usage: %s [domain]
 Usage: ypcat [-kt] [-d domain] [-h hostname] mapname | -x
 Usage: ypchfn [User]
 Usage: ypchsh [User]
 Usage: ypmatch [-d domain] [-kt] key ... mapname | -x
 Usage: yppasswd [-f] [-l] [-p] [User]
 Usage: yppoll [-h host] [-d domain] mapname
 Usage: ypset [-d domain] [-h hostname] server
 Usage: yptest [-q] [-d domain] [-h hostname] [-m map] [-u user]
 Usage: ypwhich [-d domain] [[-t] -m [mname]|[-Vn] hostname] | -x
 Use "%s"	for map "%s"
 Used NIS server: %s
 Version Mismatch WARNING: %s
 WARNING: %s (Map %s)
 WARNING: %s (Map %s, key %s)
 WARNING: domainname is not set!
 Written by %s.
 You cannot reuse the old password.
 can't find address for %s
 can't yp_bind: Reason: %s
 domainname - set or display name of current domain

 gethostbyname: Unknown error
 nickname file %s does not exist.
 old  ypcat - print values of all keys in a NIS database

 ypchfn - change the GECOS information in the NIS database

 ypchfn is deprecated, use %s instead

 ypchsh - change the shell in the NIS database

 ypchsh is deprecated, use %s instead

 ypmatch - print the values of one or more keys from a NIS map

 yppasswd - change your password in the NIS database

 yppasswd is deprecated, use %s instead

 yppoll - return version and master server of a NIS map

 ypset - bind ypbind to a particular NIS server

 ypset: host %s unknown
 yptest - call different NIS routines to test configuration

 yptest: host %s unknown
 ypwhich - return name of NIS server or map master

 ypwhich: host %s unknown
 Project-Id-Version: yp-tools 2.5
POT-Creation-Date: 2002-12-05 14:51+0100
PO-Revision-Date: 2002-05-13 15:45+02:00
Last-Translator: Thorsten Kukuk <kukuk@suse.de>
Language-Team: No Language-Team in the moment
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
         Grund: %s
 
�ndere vollen Namen f�r %s auf %s.
Zum akzeptieren, einfach return dr�cken. Zum l�schen, tippen
Sie "none" ein.
 
�ndere Login Shell f�r %s auf %s.
Um den default Wert zu akzeptieren, dr�cken Sie einfach <RETURN>. Um die
default Shell des Systems zu benutzen, tippen Sie das Wort "none".
 
Die GECOS Informationen wurden ge�ndert auf �%s�.

 
Die GECOS Informationen wurde nicht ge�ndert auf �%s�.

 
Die NIS Account Informationen wurden ge�ndert auf %s.

 
Die NIS Account Informationen wurden nicht ge�ndert auf �%s�.

 
Das NIS Passwort wurde ge�ndert auf �%s�.

 
Das NIS Passwort wurde nicht ge�ndert auf �%s�.

 
Die Login Shell wurde ge�ndert auf �%s�.

 
Die Login Shell wurde nicht ge�ndert auf �%s�.

       --usage    Gib eine kurze Aufruf Hilfe aus
       --version  Gib Programm Version Information aus
   -?, --help     Gib diese Hilfe aus
   -V n           Version des ypbinds Protokoll, V2 ist default
   -d domain      Benutze "domain" anstelle der default Domain
   -f             �ndere GECOS Informationen
   -h Rechner     Frag ypserv Proze� auf "Rechner"
   -h Rechner     Frage den ypserv Prozess auf "Rechner"
   -h Rechner     Setze ypbind's binding auf dem Rechner
   -k             Gib Schl�ssel mit aus
   -l             �ndere die Login Shell
   -m map         Benutze diese existierende Map f�r die Tests
   -m mname       Finden den NIS Master Server f�r die Map "mname"
   -p             �ndere das Passwort
   -q             Gib keine Meldungen aus
   -t             Verbietet die �bersetzung von Nicknames
   -u Benutzer    Benutze den existierenden NIS Benutzer f�r die Tests
   -x             Zeige die Nickname �bersetzungstabelle an
  - ypbind l�uft nicht ?
 %d Tests schlugen fehl
 %s - Setze oder zeige den Namen der aktuellen NIS Domain an
 Auf �%s� l�uft kein ypserv.
 %s: Nur root darf Account Informationen f�r andere �ndern
 %s: Kann den Master YP Server nicht bestimmen: %s
 %s: Kann die lokale NIS Domain nicht bestimmen: %s
 %s: Im GECOS Feld sind keine Kommas erlaubt.
 %s: unbekannter Benutzer (uid=%ld).
 %s: Der yppasswd D�mon l�uft auf einem illegalen Port ("%s").
 %s: Der yppasswd D�mon l�uft nicht auf dem NIS Master Server ("%s").
 -- �bersprungen --
 Alle Tests bestanden
 Falsche Argumente Fehlgeschlagene Operation Korrupter Eintrag in Zeile %d: %s
 Der Aufruf von %s schlug fehl: %s
 Kann keine Verbindung zu %s aufbauen.
 Kann Master Server der Map "%s" nicht finden. Grund: %s
 Kann Master Server der Map %s nicht finden.
Grund: %s
 Kann keine Map Informationen bekommen.
 Kann die Liste der Maps aus der Domain %s nicht bekommen.
Grund: %s
 Kann Master Server der Map %s nicht bekommen.
 Kann Zeitstempel f�r Map %s nicht bekommen.
 Schl�ssel %s in Map %s nicht gefunden. Grund: %s
 Kann die Domain %s auf dem Rechner �%s� nicht setzen.
 �ndere NIS Account Informationen f�r %s auf %s.
 �ndere NIS Passwort f�r %s auf %s
 Der konfiguriertet Domainname ist "%s"
 Copyright � %s Thorsten Kukuk.
Dies ist freie Software; in den Quellen befinden sich die Lizenzbedingungen.
Es gibt KEINERLEI Garantie; nicht einmal f�r die TAUGLICHKEIT oder
VERWENDBARKEIT F�R EINEN ANGEGEBENEN ZWECK.
 Kann keinen NIS server finden Datenbank ist nicht in Ordnung Domain "%s" wird von �%s� nicht unterst�tzt.
 Domain "%s" wird unterst�tzt.
 Kein Server f�r die Domain vorhanden Der Domainname, welcher benutzt wird f�r die Tests, ist "%s"
 FEHLER: ypbind ist nicht am laufen
 FEHLER: Der Domainname ist nicht gesetzt!
 Fehler w�hrend des �nders der GECOS Informationen. Fehler w�hrend des �nderns der NIS Account Informationen. Fehler w�hrend des �nderns vom NIS Passwort. Fehler w�hrend des �nderns der Login Shell. Falsch Privat. Telefon Fehler beim Suchen des Rechner Namens
 Interner ypbind Fehler B�ro Login Shell Der Zeitstempel der Map �%s� ist %ld. [%s]
 Verschieden - Passwort wurde nicht ge�ndert.
 Name Zu dem Namen wurde keine Adresse gefunden: %s
 Nicht mehr ypbind ist nicht am laufen
 ypbind ist nicht am laufen.
 Keine solche Domain Keine solche Map Map %s nicht gefunden. Grund: %s
 Kein g�ltiges Passwort: %s.
 Dienst. Telefon Passwort wurde nicht ge�ndert.
 Bitten benutzen Sie etwas anderes als Ihren Usernamen als Passwort.
 Geben Sie bitte Ihr %sPasswort ein: Geben Sie bitte ein neues Passwort ein: Geben Sie bitte das root Password ein: Bitte geben sie das neue Passwort erneut ein: Grund Falsches Password.
 Erfolgreich Nicht genug Systemresourcen vorhanden Der Master Server ist �%s�.
 Das Passwort mu� mindestens 6 Zeichen lang sein.
 Das Passwort mu� sowoehl Gro�- als auch Kleinbuschstaben haben, oder
Sonderzeichen.
 Zu viele Versuche.
Passwort wurde nicht ge�ndert.
 Wahr Versuche "%s --help" oder "%s --usage" f�r mehr Informationen.
 Unbekannter Fehler Unbekannter Rechner: %s
 Unbekannter Server Fehler
 Unbekannter ypbind Fehler Aufruf: %s [Domainname]
 Aufruf: ypcat [-kt] [-d Domain] [-h Rechner] mapname | -x
 Aufruf: ypchfn [User]
 Aufruf: ypchsh [Benutzer]
 Aufruf: ypmatch [-d Domain] [-kt] Schl�ssel ... Mapname
 Aufruf: yppasswd [-f] [-l] [-p] [User]
 Aufruf: yppoll [-h Rechner] [-d Domainname] Mapname
 Aufruf: ypset [-d Domain] [-h Rechner] Server
 Aufruf: yptest [-q] [-d Domain] [-h Rechner] [-m Map] [-u Benutzer]
 Aufruf: ypwhich [-d domain] [[-t] -m [Mapname]|[-Vn] Rechner] | -x
 Benutze "%s"	f�r Map "%s"
 Benutze NIS Server: %s
 Versionsnummern stimmen nicht �berein WARNUNG: %s
 WARNUNG: %s (Map %s)
 WARNUNG: %s (Map %s, Schl�ssel %s)
 WARNUNG: Der Domainname ist nicht gesetzt!
 Implementiert von %s.
 Sie k�nnen das alte Passwort nicht wiederbenutzen.
 Kann Addresse f�r �%s� nicht finden
 Kann keine Verbindung aufbauen.
Grund: %s
 domainname - Setze oder zeige den Namen der aktuellen Domain
 gethostbyname: Unbekanter Fehler
 Nickname Datei %s existiert nicht.
 altes  ypcat - Gib Daten von allen Schl�sseln einer NIS map aus

 ypchfn - �ndere die GECOS Informationen in der NIS Datenbank
 Anstelle von ypchfn sollte %s direkt aufgerufen werden
 ypchsh - �ndert die Login Shell in der NIS Datanbank

 Anstelle von ypchsh sollte %s direkt aufgerufen werden
 ypmatch - Gib die Daten von einem oder mehr Schl�sseln einer NIS Map aus

 yppasswd - �ndert das Passwort in der NIS Datenbank

 Anstelle von yppasswd sollte %s direkt aufgerufen werden
 yppoll - Gib Version und Master Server einer NIS Map aus
 ypset - Binde ypbind an einen bestimmten NIS Server
 ypset: Rechner �%s� unbekannt
 yptest - Test die NIS Konfiguration durch aufruf von NIS Funktionen
 yptest: Rechner �%s� unbekannt
 ypwhich - gibt Namen des NIS Server oder des Masters f�r eine Map aus

 ypwhich: Rechner %s ist unbekannt
 