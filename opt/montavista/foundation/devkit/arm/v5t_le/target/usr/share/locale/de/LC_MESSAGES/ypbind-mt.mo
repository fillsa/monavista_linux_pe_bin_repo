��    H      \  a   �         y   !  /   �  4   �  '      /   (     X     l     �     �     �  $   �     �          -     D  %   ]     �  1   �     �     �  #   	     (	  2   A	      t	     �	     �	     �	     �	  /   �	  #   
  &   9
  +   `
  &   �
  )   �
     �
     �
       4     4   P  1   �  1   �     �     �            +   '  "   S  0   v  +   �     �     �        0        G     f     �     �     �  3   �  ,        .     ?     \     {     �     �     �     �     �       ,     J  L  �   �  <     >   Z  '   �  2   �     �  "     "   5  !   X     z  *   �  $   �  -   �  '        @  /   `     �  =   �  (   �  )     ;   =  &   y  @   �  %   �                :  (   X  9   �  )   �  1   �  ,     '   D  /   l     �     �     �  I   �  I   (  F   r  F   �                .     E  2   N  "   �  :   �  .   �          .     H  5   e  +   �  *   �     �  !        %  I   B  .   �     �     �     �               -     I     c     �  &   �  .   �     8          &      '   ?                 !          :   7           $   ,   D   5   C              9                 /                   4         G      0   +   2   (   .       ;   #   1                               E   -                        
       	   B   =      )   A       H   <   F      3                >      *   @            %          6   "    	ypbind [-broadcast | -ypset | -ypsetme] [-p port] [-f configfile]
	  [-no-ping] [-broken-server] [-local_only] [-debug]
 Add a NIS server to the %s configuration file,
 Answer for domain '%s' from '%s' on illegal port %d. Answer for domain '%s' from server '%s' Answer for domain '%s' from unknown server '%s' Bad entries found.
 Cannot create TCP: %s Cannot create UDP: %s Cannot create tcp service.
 Cannot create udp service. Changing the binding is not allowed. Check new for fastest server. Config file %s is not ok.
 Config file %s is ok.
 Could not block signals. Could not change to directory %s: %s
 Could not create %s: %s
 Domain name '%s' has embedded slash -- rejecting. ERROR: domainname not set.
 Entry "%s" is not valid!
 Entry "%s" is not valid, ignore it! Host name lookup failure No NIS server and no -broadcast option specified.
 No address associated with name: No entry found. No entry found.
 Not enough memory ! Pinging all active server. SETDOM request doesn't come from reserved port. SIGCHLD arrived, what should I do ? SIGHUP arrived, reloading config file. Server '%s' for domain '%s' doesn't answer. Server for domain '%s' doesn't answer. Signal (%d) for quitting program arrived. Status: YPBIND_FAIL_VAL Status: YPBIND_SUCC_VAL Trying entry: Unable to register (YPBINDPROG, YPBINDOLDVERS, tcp). Unable to register (YPBINDPROG, YPBINDOLDVERS, udp). Unable to register (YPBINDPROG, YPBINDVERS, tcp). Unable to register (YPBINDPROG, YPBINDVERS, udp). Unknown host: Unknown server error Unknown signal: %d Usage:
 User from '%s' try's to change the binding. add_server() domain: %s, broadcast add_server() domain: %s, host: %s, NO SLOT FREE! add_server() domain: %s, host: %s, slot: %d cannot create pidfile %s cannot lock pidfile cannot unlock pidfile clnt_create for server '%s' (domain '%s') failed domain '%s' not served by '%s' domainname not set - aborting.
 fcntl error: %s gethostbyname: Unknown error host '%s' doesn't answer. internal error: add_server called with NULL domain. or start ypbind with the -broadcast option.
 parsed broadcast parsed domain '%s' broadcast parsed domain '%s' server '%s' parsed domain '%s' slp parsed ypserver %s ping host '%s', domain '%s' svc_run returned. unable to free arguments unable to free results ypbind must be run as root
 ypbind-mt already running (pid %d) - exiting Project-Id-Version: ypbind-mt
Report-Msgid-Bugs-To: kukuk@linux-nis.org
POT-Creation-Date: 2004-02-13 16:48+0100
PO-Revision-Date: 2004-02-13 16:22+01:00
Last-Translator: Thorsten Kukuk <kukuk@suse.de>
Language-Team: No Language-Team
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
         ypbind [-broadcast | -ypset | -ypsetme] [-p Port] [-f configfile]         [-no-ping] [-broken-server] [-local-only] [-debug]
 F�ge einen NIS server in die %s Configurations Datei hinzu,
 Antwort f�r Domain "%s" vom Server "%s" vom illegalen Port %d. Antwort f�r Domain "%s" vom Server "%s" Antwort f�r Domain "%s" von unbekantem Server "%s" Ung�ltige Eintr�ge gefunden.
 Kann TCP Socket nicht erzeugen: %s Kann UDP Socket nicht erzeugen: %s Kann TCP Service nicht erzeugen.
 Kann UDP Servie nicht erzeugen. Das �ndern des Bindings ist nicht erlaubt. Suche erneut den schnellsten Server. Konfigurationsdatei %s ist nicht in Ordnung.
 Konfigurationsdatei %s ist in Ordnung.
 Kann die Signale nicht blocken. Fehler beim Wechseln in das Verzeichnis %s: %s
 Kann %s nicht erzeugen: %s
 Domainname "%s" enth�lt einen Schr�gstrich -- zur�ckgewiesen. Fehler: Domainname wurde nicht gesetzt.
 Der Eintrag "%s" ist syntaktisch falsch!
 Der Eintrag "%s" ist syntaktisch falsch, er wird ignoriert! Fehler beim Aufl�sen des Rechnernamens Es wurde kein NIS server und keine -broadcast Option angegeben.
 Keine Addresse vorhanden f�r Rechner: Keinen Eintrag gefunden. Keinen Eintrag gefunden.
 Nicht genug Arbeitsspeicher ! Sende ein Ping zu allen aktiven Servern. Der SETDOM Request kam nicht von einem reservierten Port. SIGCHLD abgefangen, was soll ich machen ? SIGHUP abgefangen, Config Datei wird neu geladen. Server "%s" f�r Domain "%s" antwortet nicht. Server f�r Domain "%s" antwortet nicht. Signal (%d) zum beenden des Programms bekommen. Status: YPBIND_FAIL_VAL Status: YPBIND_SUCC_VAL Versuche Eintrag: Kann (YPBINDPROG, YPBINDOLDVERS, tcp) nicht beim portmapper registrieren. Kann (YPBINDPROG, YPBINDOLDVERS, udp) nicht beim portmapper registrieren. Kann (YPBINDPROG, YPBINDVERS, tcp) nicht beim portmapper registrieren. Kann (YPBINDPROG, YPBINDVERS, upd) nicht beim portmapper registrieren. Unbekannter Rechner: Unbekanter Server Fehler Unbekanntes Signal: %d Aufruf:
 User vom host "%s" versucht das Binding to �ndern. add_server() Domain: %s, Broadcast add_server() Domain: %s, Rechner: %s, Kein Slot mehr frei! add_server() Domain: %s, Rechner: %s, Slot: %d Kann Pidfile %s nicht erzeugen. Kann Pidfile nicht locken Kann Pidfile nicht unlocken. clnt_create f�r server "%s" (domain "%s") schlug fehl Domain "%s" wird nicht von "%s" unterst�tzt Domainname wurde nicht gesetzt - Abbruch.
 fcntl Fehler: %s gethostbyname: Unbekannter Fehler Server "%s" antwortet nicht. Interner Fehler: add_server wurde mit NULL pointer f�r domain aufgerufen. oder starte ypbind mit der -broadcast Option.
 Parse broadcast Parse domain '%s' broadcast Parse domain '%s' server '%s' Parse domain '%s' slp Parse ypserver %s Ping Host "%s", Domain "%s" svc_run hat sich beendet. Kann Argumente nicht freigeben Kann Result nicht freigeben ypbind mu� als root gestartet werden.
 ypbind-mt l�uft bereits (pid %d) - beende mich 