��    A      $  Y   ,      �  �   �  ,   �  5   �  7   �  \   '  `   �  u   �  l   [  b   �  Y   +	  ~   �	  �   
  �   �
  %   O     u     �  T   �     �  .     !   G  (   i     �  #   �  d   �     5     I      d     �     �     �     �  $   �       *   $     O     j     {     �  #   �     �     �     �     �          !     3  H   @     �     �     �  B   �  2   #     V     j     �  #   �  #   �  &   �  ,        D     ]  -   r     �     �  j  �  "  7  -   Z  ?   �  ?   �  X     \   a  r   �  �   1  e   �  `   2  �   �  [     �   r  +   8     d     �  Y   �     �  0     4   A  E   v  !   �  ,   �  f        r     �      �     �  +   �  #     7   *  *   b     �  =   �     �            *   ;  (   f  "   �     �  4   �     �     
     $     7  P   K     �     �     �  U   �  &   G     n  '   �  $   �  #   �  #   �  )      6   H            �   6   �      �      !         2   :                       ,      7       %   8   
       /          3                4   )   A         @   9   ;              *          #             1             <   >           $             .           0   +                -      '      	   =       (                           "   6       !       5   &   ?        
If no -e, --expression, -f, or --file option is given, then the first
non-option argument is taken as the sed script to interpret.  All
remaining arguments are names of input files; if no input files are
specified, then the standard input is read.

       --help     display this help and exit
       --version  output version information and exit
   --posix
                 disable all GNU extensions.
   -R, --regexp-perl
                 use Perl 5's regular expressions syntax in the script.
   -e script, --expression=script
                 add the script to the commands to be executed
   -f script-file, --file=script-file
                 add the contents of script-file to the commands to be executed
   -i[SUFFIX], --in-place[=SUFFIX]
                 edit files in place (makes backup if extension supplied)
   -l N, --line-length=N
                 specify the desired line-wrap length for the `l' command
   -r, --regexp-extended
                 use extended regular expressions in the script.
   -s, --separate
                 consider files as separate rather than as a single continuous
                 long stream.
   -u, --unbuffered
                 load minimal amounts of data from the input files and flush
                 the output buffers more often
 %s
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE,
to the extent permitted by law.
 %s: -e expression #%lu, char %lu: %s
 %s: can't read %s: %s
 %s: file %s line %lu: %s
 -n, --quiet, --silent
                 suppress automatic printing of pattern space
 : doesn't want any addresses Called savchar() with unexpected pushback (%x) Can't find label for jump to `%s' Cannot specify modifiers on empty regexp Couldn't open file %s: %s Couldn't open temporary file %s: %s E-mail bug reports to: %s .
Be sure to include the word ``%s'' somewhere in the ``Subject:'' field.
 GNU sed version %s
 INTERNAL ERROR: Bad cmd %c INTERNAL ERROR: bad address type Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid reference \%d on `s' command's RHS Invalid regular expression Memory exhausted No match No previous regular expression Premature end of regular expression Regular expression too big Success Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses based on GNU sed version %s

 couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected newer version of sed invalid usage of line address 0 multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths super-sed version %s
 unknown command: `%c' Project-Id-Version: sed 4.0a
POT-Creation-Date: 2004-03-26 19:48+0100
PO-Revision-Date: 2002-11-26 12:44+0100
Last-Translator: Paolo Bonzini <bonzini@gnu.org>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Report-Msgid-Bugs-To: 
Plural-Forms: nplurals=2; plural=n != 1;
 
Se non � usata nessuna delle opzioni -e, --expression, -f o --file allora il
primo argomento che non � una opzione sar� usato come lo script sed da
interpretare. Tutti gli argomenti rimanenti sono nomi di file di input; se non
sono specificati file di input sar� letto lo standard input.

       --help     mostra questo aiuto ed esce
       --version  stampa le informazioni sulla versione ed esce
   --posix
                 disabilita tutte le estensioni GNU.
   -R, --regexp-perl
                 usa la sintassi Perl 5 per le espressioni regolari
   -e script, --expression=script
                 aggiunge lo script ai comandi da eseguire
   -f script-file, --file=file-script
                 aggiunge il contenuto di file-script ai comandi da eseguire
   -i[SUFFIX], --in-place[=SUFFIX]
                 scrive il risultato sul file originale (facendo una copia
                 se � fornita un'estensione)
   -l N, --line-length=N
                 specifica la lunghezza delle linee generate dal comando `l'
   -r, --regexp-extended
                 usa la sintassi di `egrep' per le espressioni regolari
 %s  -s, --separate
                 considera i file di input come separati invece che come un
                 unico file lungo.
   -u, --unbuffered
                 carica e visualizza i dati una a pezzetti piu' piccoli
 %s
Questo � software libero; si veda il sorgente per le condizioni di copiatura.
NON c'� garanzia; neppure di COMMERCIABILITA' o IDONEITA' AD UN PARTICOLARE
SCOPO, nei limiti permessi dalla legge.
 %s: espressione -e #%lu, carattere %lu: %s
 %s: impossibile leggere %s: %s
 %s: file %s riga %lu: %s
   -n, --quiet, --silent
                 sopprime la stampa automatica del pattern space
 : non accetta indirizzi Chiamata savchar() con un pushback inatteso (%x) Impossibile trovare un'etichetta per il salto a `%s' Non e' possibile specificare dei modificatori per l'espressione vuota Impossibile aprire il file %s: %s Impossibile aprire il file temporaneo %s: %s Segnalare eventuali bug a: %s .
Assicurarsi di includere la parola ``%s'' nell'oggetto del messaggio.
 GNU sed versione %s
 INTERNAL ERROR: Bad cmd %c INTERNAL ERROR: bad address type Riferimento non valido Nome non valido per una classe di caratteri Carattere di ordinamento non valido numero di ripetizioni specificato tra graffe non valido Espressione regolare precedente non valida Fine dell'intervallo non valida Riferimento non valido \%d nel secondo membro del comando `s' Espressione regolare non valida Memoria esaurita Nessuna corrispondenza trovata Occorre un'espressione regolare precedente Fine prematura dell'espressione regolare Espressione regolare troppo grande Successo Barra rovesciata alla fine dell'espressione regolare `(' o `\(' non bilanciata `)' o `\)' non bilanciata `[' non bilanciata `\{' non bilanciata Utilizzo: %s [OPZIONE]... {script-se-nessun-altro-specificato} [input-file]...

 comando `e' non supportato `}' non accetta indirizzi basato su GNU sed versione %s

 Impossibile scrivere %d elemento su %s: %s Impossibile scrivere %d elementi su %s: %s il carattere delimitatore � multi-byte errore in un sottoprocesso attesa una versione piu' recente di sed utilizzo non valido dell'indirizzo 0 opzioni `g' multiple al comando `s' opzioni `p' multiple al comando `s' opzioni numeriche multiple al comando `s' l'opzione numerica del comando `s' non pu� essere zero opzione `e' non supportata errore di lettura su %s: %s le stringhe per il comandi `y' hanno lunghezze diverse super-sed versione %s
 comando sconosciuto: `%c' 