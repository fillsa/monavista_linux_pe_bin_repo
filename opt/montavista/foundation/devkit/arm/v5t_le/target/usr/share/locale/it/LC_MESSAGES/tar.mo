��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  R  ?3  k  �4    �5  �  9  �   �<  O  �=  b  �?    EA  �   HB     C  �   C     �C      �C  '   �C     $D  '   7D  .   _D  &   �D  ?   �D  &   �D     E  !   7E     YE  $   xE     �E  #   �E     �E  K   �E  9   7F     qF     �F  
   �F  ?   �F  C   �F  @   4G  +   uG     �G  *   �G  7   �G  +   #H     OH  /   aH  <   �H  (   �H  "   �H     I     6I  +   TI     �I  )   �I  +   �I  ,   �I      !J  *   BJ     mJ  "   �J     �J     �J     �J     �J     �J     K     !K  :   >K  >   yK  /   �K  9   �K  >   "L  g   aL  H   �L  '   M  *   :M  7   eM  )   �M  6   �M  h   �M  +   gN  6   �N  $   �N  *   �N  (   O  0   CO  (   tO  +   �O  .   �O  (   �O     !P  3   :P     nP     �P  +   �P  %   �P  +   �P  3   Q  2   OQ  &   �Q     �Q  *   �Q     �Q  {   R  B   �R     �R  (   �R     S  '   S     BS      ]S     ~S     �S     �S      �S     �S     T      %T     FT      eT     �T     �T  +   �T     �T     �T  .   U  >   ;U  /   zU  9   �U     �U  -   �U     *V  	   CV  7   MV     �V     �V     �V  (   �V  %   �V     W      2W  :   SW     �W     �W  !   �W  u  �W     ZY     yY     �Y  .   �Y     �Y     �Y  !   Z  '   3Z     [Z  �   yZ     ([  	   C[     M[     l[  !   �[     �[  %   �[  ,   �[  @   \  ;   _\     �\  '   �\  9   �\  -   ]     F]     H]     ]]     y]     �]     �]     �]     �]  "   �]     ^     (^     G^  0   X^     �^     �^     �^     �^  +   �^  ;   �^     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
 stdin stdout value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: GNU tar 1.13.23
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2001-11-17 14:44+0100
Last-Translator: Marco d'Itri <md@linux.it>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Blocking dei dispositivi:
  -b, --blocking-factor=BLOCCHI  usa record di BLOCCHI x 512 byte
      --record-size=SIZE         usa record di SIZE bytes, multiplo di 512
  -i, --ignore-zeros             ignora blocchi azzerati nel archivio
                                 (significa EOF)
  -B, --read-full-records        reblock in lettura (per le pipe di 4.2BSD)
 
Selezione e cambio del dispositivo:
  -f, --file=ARCHIVIO            usa come archivio il file o il dispositivo
                                 ARCHIVIO
      --force-local              l'archivio � locale anche se contiene `:'
      --rsh-command=COMANDO      usa la shell remota COMANDO al posto di rsh
  -[0-7][lmh]                    specifica il drive e la densit�
  -M, --multi-volume             crea/elenca/estrai archivi multi-volume
  -L, --tape-length=NUM          cambia nastro dopo aver scritto NUMx1024 byte
  -F, --info-script=FILE         esegui lo script FILE alla file di ogni nastro
                                 (implica -M)
      --new-volume-script=FILE   come -F FILE
      --volno-file=FILE          usa/aggiorna il numero del volume in FILE
 
Gestione degli attributi dei file:
      --owner=NOME             forza NOME come proprietario dei file aggiunti
      --group=NOME             forza NOME come gruppo dei file aggiunti
      --mode=CAMBI             forza il modo (simbolico) CAMBI per i file
                               aggiunti
      --atime-preserve         non cambia il tempo di accesso dei file archiv.
  -m, --modification-time      non estrae il tempo di ultima modifica del file
      --same-owner         cerca di estrarre i file con lo stesso proprietario
      --no-same-owner          estrare i file come te stesso
      --numeric-owner          usa sempre i numeri per i nomi di utente/gruppo
  -p, --same-permissions       estrae tutti i permessi
      --no-same-permissions    non estrae le informazioni sui permessi
      --preserve-permissions   come -p
  -s, --same-order             ordina i nomi da estrarre come nell'archivio
      --preserve-order         come -s
      --preserve               come -s e -p insieme
 
Se una opzione lunga indica un argomento come obbligatorio, allora lo � anche
per l'opzione corta equivalente.  Lo stesso vale per gli argomenti opzionali.
 
Modi operativi principali:
  -t, --list              elenca il contenuto dell'archivio
  -x, --extract, --get    estrae i file da un archivio
  -c, --create            crea un nuovo archivio
  -d, --diff, --compare   cerca differenze tra l'archivio e il file system
  -r, --append            accoda i file alla fine di un archivio
  -u, --update            accoda solo i file pi� nuovi della copia in archivio
  -A, --catenate          aggiungi il contenuto di un altro archivio
      --concatenate       come -A
      --delete            cancella da un archivio (non su nastri magnetici!)
 
Il suffisso dei backup � `~', a meno che sia impostato con --suffix oppure
SIMPLE_BACKUP_SUFFIX. Il controllo di versione pu� essere impostato con
--backup oppure VERSION_CONTROL, i valori sono:

  t, numbered     fa backup numerati
  nil, existing   numerati se esistono backup numerati, altrimenti semplici
  never, simple   fa sempre backup semplici
 

Uso: %s [OPZIONE]... [FILE]...

Esempi:
  %s -cf archivio.tar foo bar # Crea archivio.tar dai file foo e bar.
  %s -tvf archivio.tar        # Elenca prolissamente i file in archivio.tar.
  %s -xf archive.tar          # Estrae tutti i file da archivio.tar.
       --backup[=CONTROLLO]     backup prima di rimuovere, scegli il
                               controllo di versione
      --suffix=SUFFSSO         backup prima di rimuovere, cambia suffisso
  link a %s
  n [nome]   Cambia il nome del file per il prossimo volume (e i successivi)
 q          Termina tar
 !          Esegui una subshell
 ?          Stampa questa lista
  tipo di file sconosciuto %s
 %s non continua su questo volume %s ha dimensione errata (%s != %s + %s) %s: Impossibile %s %s: Impossibile a cambiare il modo a %s %s: Impossibile fare chown a uid %lu e gid %lu %s: Impossibile creare un symlink a %s %s: Impossibile estrarlo -- il file continua da un altro volume %s: Impossibile fare un hard link a %s %s: Impossibile rimuoverlo %s: Impossibile rinominarlo in %s %s: Impossibile fare seek a %s %s: Impossibile fare il symlink a %s %s: Cancello %s
 %s: La directory � stata rinominata %s: La directory � nuova %s: directory rinominata prima che fosse possibile determinare il suo stato %s: Il file � stato cancellato prima che potessi leggerlo %s: Gruppo non valido %s: Non trovato nell'archivio %s: Omesso %s: Incoerenza inaspettata durante la creazione della directory %s: Tipo di file '%c' sconosciuto, confrontato come un file normale %s: Tipo di file '%c' sconosciuto, estratto come un file normale %s: Tipo di file sconosciuto; file ignorato %s: Attenzione: Impossibile %s %s: Attenzione: Impossibile fare seek a %s %s: Non � stato possibile fare il backup di questo file %s: contiene un numero di volume non valido %s: door ignorata %s: il file � cambiato mentre lo stavo leggendo %s: il file si trova su un altro file system; non archiviato %s: il file � l'archivio; non archiviato %s: non modificato; non archiviato %s: opzione illecita -- %c
 %s: opzione non valida -- %c
 %s: l'opzione `%c%s' non accetta argomenti
 %s: l'opzione `%s' � ambigua
 %s: l'opzione `%s' richiede un argomento
 %s: l'opzione `--%s' non accetta argomenti
 %s: l'opzione `-W %s' non accetta argomenti
 %s: l'opzione `-W %s' � ambigua
 %s: l'opzione richiede un argomento -- %c
 %s: socket ignorato %s: l'orario %s � %lu s nel futuro %s: opzione `%c%s' sconosciuta
 %s: opzione `--%s' sconosciuta
 ' (pipe) --Continua al byte %s--
 --Nomi di file mutilati--
 --Intestazione del Volume--
 Il valore base-256 dell'archvio � fuori dall'intervallo %s L'archivio contiene %.*s dove era atteso il valore numerico %s L'archivio contiene header base-64 obsolescenti L'archivio non � stato etichettato per corrispondere a %s Il valore ottale %.*s dell'archivio � fuori dall'intervallo %s Il valore ottale %.*s dell'archivio � fuori dall'intervallo %s; si suppone
che sia in complemento a due La stringa base-64 con segno %s dell'archivio � fuori dall'intervallo %s All'inizio del nastro, abbandono adesso Cerco di estrarre i symlink come hard link Spazi nell'header dove era atteso il valore numerico %s Impossibile allocare spazio per il buffer Impossibile allocare memoria per il blocking factor %d Impossibile muoversi all'indietro nel file dell'archivio; potrebbe essere
illeggibile senza l'opzione -i Impossibile cambiare la directory di lavoro Impossibile combinare --listed-incremental con --newer Impossibile eseguire la shell remota Impossibile salvare la directory di lavoro Impossibile aggiornare archivi compressi Impossibile usare archivi multi-volume compressi Impossibile verificare archivi compressi Impossibile verificare archivi multi-volume Impossibile verificare archivi su stdin/stdout Conflitto tra le opzioni di compressione I contenuti differiscono Codardamente mi rifiuto di creare un archivio vuoto Creo la directory: File della data non trovato Cancello dall'archivio una non-intestazione I numeri dei dispositivi differiscono Numero di dispositivo fuori dall'intervallo Letto EOF mentre era attesa la risposta dell'utente Uscita per errore ritardata dall'errore precedente Errore scrivendo sullo standard output Errore irrimediabile: esco Estraggo i file contigui come file normali I tipi dei file differiscono GNU `tar' salva molti file insieme in un solo archivio su nastro o su disco
e pu� ripristinare singoli file dall'archivio.
 Richieste funzionalit� GNU su un formato di archivio incompatibile Comando spazzatura Generazione degli header ottali negativi I gid differiscono Numero dell'inode fuori dall'intervallo Blocking factor non valido Numero di dispositivo non valido Numero dell'inode non valido Modo non valido in una opzione Proprietario non valido Dimensioni del record non valide Lunghezza del nastro non valida Orario non valido Valore di record_size non valido Manca il nome del file dopo -C I tempi di modifica differiscono I modi differiscono Pi� di una data limite Non � stato specificato un nome di archivio Nessun nuovo volume; esco.
 Non � un link a %s La vecchia opzione `%c' richiede un argomento. Entrambe le opzioni `-%s' e `-%s' richiedono lo standard input Le opzioni `-Aru' sono incompatibili con `-f -' Le opzioni `-[0-7][lmh]' non sono gestite da *questo* tar Fine del file prematura Prepara il volume #%d per %s e premi return:  Checkpoint di lettura %d Leggo %s
 La dimensione del record deve essere un multiplo di %d. %s rinominato in %s Rinomino di nuovo %s in %s
 Rinomino %s in %s
 Direzione del seek fuori dall'intervallo Offset del seek fuori dall'intervallo Le dimensioni differiscono Salto alla prossima intestazione Sostituisco %s al posto del formato di data sconosciuto %s Il symlink � differente %s � un link simbolico a %s Questo non sembra un archivio tar This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute it under the terms of the GNU General Public License;
see the file named COPYING for details.
Questo programma NON HA GARANZIA, per quanto permesso dalla legge.
Pu� essere redistribuito secondo i termini della GNU General Public License;
vedi il file chiamato COPYING per i dettagli. Questo volume � fuori sequenza Orario fuori dall'intervallo Troppi errori, abbandono Usare `%s --help' per ulteriori informazioni.
 Gli uid differiscono EOF inaspettato nell'archivio EOF inaspettato nei nomi mutilati Comando di demutilazione %s sconosciuto Errore di sistema sconosciuto Uso: %s [OPZIONE]
Manipola un drive per nastri accettando comandi da un processo remoto.

 --version  Mostra le informazioni sulla versione.
 --help     Mostra questo aiuto.
 Gli argomenti validi sono: Verifica  Errore nel nome lungo visibile Errore nel nome lungo visibile Il volume %s non corrisponde a %s Overflow del numero di volume ATTENZIONE: L'archivio non � completo ATTENZIONE: intestazione del volume mancante Attenzione: l'opzione -I non � gestita; forse intendevi -j o -T? Attenzione: l'opzione -y non � gestita; forse intendevi -j? Checkpoint di scrittura %d Scritto da John Gilmore e Jay Fenlason. Impossibile specificare pi� di una opzione tra `-Acdtrux' Devi specificare una delle opzioni `-Acdtrux' ` comando `%s' fallito argomento %s ambiguo per %s blocco %s:  blocco %s: ** Blocco di NUL **
 blocco %s: ** Fine del File **
 dimensioni del blocco il processo figlio exec/tcp: Servizio non disponibile il canale tra processi argomento %s non valido per %s memoria esaurita rmtd: Impossibile allocare spazio per il buffer
 rmtd: Comando spazzatura %c
 rmtd: Fine del file prematura
 stdin stdout valore %s fuori dall'intervallo (%s) %s..%s valore %s fuori dall'intervallo (%s) %s..%s; sostituisco %s 