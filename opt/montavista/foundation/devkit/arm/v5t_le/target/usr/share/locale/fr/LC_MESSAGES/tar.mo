��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  d  ?3  U  �4  �  �6  �  �:  �   �?  �  ~@  �  mC    E    &F     (G  �   7G     H  '    H  *   HH     sH  !   �H  G   �H  0   �H  B   I  #   `I     �I     �I     �I  #   �I     �I      J     0J  4   OJ  -   �J     �J  )   �J     �J  =   �J  @   7K  D   xK  ,   �K     �K  .   L  $   7L  )   \L     �L  .   �L  J   �L  1   M  0   MM      ~M      �M  /   �M      �M  )   N  /   ;N  0   kN  #   �N  (   �N     �N  1   O  )   6O  )   `O     �O     �O     �O     �O     �O  ?   �O  J   !P  4   lP  1   �P  <   �P  S   Q  C   dQ  "   �Q  E   �Q  E   R  &   WR  <   ~R  Z   �R  &   S  ;   =S  '   yS  *   �S  /   �S  G   �S  *   DT  ;   oT  A   �T  &   �T     U  5   +U     aU  $   yU  .   �U  &   �U  ,   �U  ?   !V  .   aV  (   �V  4   �V  E   �V  !   4W  �   VW  ?   �W     'X  (   9X     bX     uX     �X     �X     �X     �X     Y  !   Y     9Y     TY  .   lY  (   �Y  $   �Y     �Y     Z     Z  (   :Z     cZ  ;   �Z  K   �Z  ?   
[  O   J[      �[  5   �[     �[     \  9    \     Z\  "   j\     �\  &   �\  !   �\     �\  (   ]  4   ,]      a]  !   �]  3   �]  �   �]     �^     �^      �^  1    _     2_  /   E_  &   u_  #   �_     �_  �   �_     �`     �`     �`     
a  "   &a     Ia  (   ia  +   �a  O   �a  H   b  "   Wb  '   zb  E   �b  5   �b     c      c     <c  	   Xc     bc     c     �c     �c  !   �c     �c     �c     d  1   %d     Wd      wd     �d     �d  ,   �d  @   �d     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-08-06 08:00-0500
Last-Translator: Michel Robitaille <robitail@IRO.UMontreal.CA>
Language-Team: French <traduc@traduc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Facteur de blocage du p�riph�rique:
  -b, --blocking-factor=N    utiliser un facteur de blocage de
                             512 octets par enregistrement
      --record-size=N        utiliser un facteur de blocage de
                             N octets par enregistrement
                             (N doit �tre un multiple de 512)
  -i, --ignore-zeros         ignorer les blocs de z�ros de l'archive
                             (c'est-�-dire les EOF)
  -B, --read-full-records    changer le facteur de blocage lors
                             de la lecture (pour les pipes de BSD 4.2)
 
S�lection de p�riph�rique et aiguillage:
  -f, --file=ARCHIVE         utiliser le fichier ou le p�riph�rique
                             d'ARCHIVE
      --force-local          le fichier d'archive est local malgr�
                             la pr�sence de � : �
      --rsh-command=COMMANDE utiliser la t�l�-COMMANDE au lieu de � rsh �
  -[0-7][lmh]                sp�cifier la densit� du p�riph�rique
                             d'archivage
  -M, --multi-volume         cr�er/afficher/extraire une archive �
                             multiples volumes
  -L, --tape-length=N        utiliser un autre ruban apr�s l'�criture
                             de N x 1024 octets
  -F, --info-script=SCRIPT   ex�cuter le SCRIPT � la fin de chaque
                             ruban (implique -M)
      --new-volume-script=FICHIER
                             identique � -F FICHIER
      --volno-file=FICHIER   utiliser/mettre � jour le num�ro de volume
                             dans le FICHIER
 
Traitement des attributs de fichiers:
      --owner=PROPRI�TAIRE   attribuer au PROPRI�TAIRE les fichiers
                             ajout�s
      --group=GROUPE         attribuer au GROUPE les fichiers
                             ajout�s
      --mode=MODE            modifier les MODEs d'acc�s des fichiers
                             � la mani�re de � chmod �
      --atime-preserve       ne pas modifier les dates d'acc�s
                             des fichiers trait�s
  -m, --modification-time    ne pas extraire les fichiers dont
                             les dates ont �t� modifi�es
      --same-owner           essayer d'extraire les fichiers ayant
                             le m�me propri�taire
      --numeric-owner        utiliser les valeurs num�riques
                             d'appartenance pour les noms
                             d'usager/groupe
  -p, --same-permissions     extraire toute l'information de protection
      --preserve-permissions identique � -p
  -s, --same-order           trier les noms afin d'extraire ceux
                             qui concordent dans l'archive
      --preserve-order       identique � -s
      --preserve             identique � l'utilisation combin�e
                             de -p et -s
 
Si un arguement est obligatoire pour une option de forme longue, il l'est aussi
pour une option de forme courte.  La m�me r�gle s'applique
� un argument optionnel.
 
Mode principal d'ex�cution:
  -t, --list                 afficher le contenu d'une archive
  -x, --extract, --get       extraire les fichiers d'une archive
  -c, --create               cr�er une archive
  -d, --diff, --compare      comparer le contenu de l'archive et
                             le syst�me de fichier
  -r, --append               accoller les fichiers � la fin de
                             l'archive
  -u, --update               accoller seulement les nouveaux fichiers
                             et ensuite les copier dans l'archive
  -A, --catenate             accoller les fichiers � tar � � l'archive
      --concatenate          identique � -A
      --delete               �liminer des entr�es (mais pas pour les rubans)
 
Le suffixe d'archive est ~, � moins que l'option --suffix ou 
SIMPLE_BACKUP_SUFFIX en utilise un autre. Le contr�le de version peut �tre
initialis� avec --backup ou VERSION_CONTROL selon les valeurs suivantes:

  t, numbered     faire des archives num�rot�es
  nil, existing   num�roter si des archives  num�rot�es existent,
                  ne pas num�roter autrement
  never, simple   toujours faire des archives de type simple
 
Usage: %s [OPTION]... [FICHIER]...

Exemples:
  %s -cf archive.tar foo bar  # Create archive.tar from files foo and bar.
  %s -tvf archive.tar         # List all files in archive.tar verbosely.
  %s -xf archive.tar          # Extract all files from archive.tar.
       --backup[=CONTR�LE]      archiver avant le retrait, utiliser la 
                               version de contr�le
      --suffix=SUFFIXE         archiver avant le retrait, en rempla�ant
                               le suffixe usuel par le SUFFIXE
  lien vers %s
  n [nom]    Donner un nouveau nom de fichier pour le prochain
            (ainsi que pour les subs�quents) volume(s)
 q          Stopper � tar �
 !          Lancer un shell
 ?          Afficher la liste
  type de fichier inconnu %s
 La suite de %s n'est pas sur ce volume. %s a une taille incorrecte (%s != %s + %s) %s: ne peut %s %s: ne peut modifier le mode � %s %s: ne peut modifier l'appartenance du propri�taire au uid %lu, gid %lu %s: ne peut cr�er un lien symbolique vers � %s � %s: ne peut extraire -- le fichier est la suite d'un autre volume. %s: ne peut �tablir un lien vers %s %s: ne peut l'enlever %s: ne peut �tre renomm� � %s %s: ne peut se positionner � %s %s: ne peut �tablir un lien vers %s %s: retrait de %s
 %s: le r�pertoire a �t� renomm�. %s: le r�pertoire est nouveau. %s: r�pertoire renomm� avant l'obtention de son �tat %s: le fichier a �t� d�truit avant sa lecture %s: groupe invalide %s: ne peut �tre retrouv� dans l'archive. %s: omis %s: inconsistance inattendue durant la cr�ation du r�pertoire %s: type de fichier inconnu � %c �, diff�re d'un fichier normal. %s: type de fichier inconnu � %c �, extrait comme un fichier normal. %s: type de fichier inconnu; fichier ignor�. %s: AVERTISSEMENT: ne peut %s %s: AVERTISSEMENT: ne peut se positionner � %s %s: incapable d'archiver ce fichier. %s: contient un num�ro de volume invalide %s: porte (socket) ignor�e %s: le fichier a �t� modifi� durant sa lecture %s: le fichier est d'un syst�me de fichiers diff�rent; n'a pas �t� rejet�. %s: le fichier est l'archive; n'a pas �t� rejet�. %s: le fichier est inchang�; n'a pas �t� rejet�. %s: l'option -- %c est ill�gale
 %s: l'option -- %c est invalide
 %s: l'option � %c%s � ne permet pas d'argument
 %s: l'option � %s � est ambigu�
 %s: l'option � %s � requiert un argument
 %s: l'option � --%s � ne permet pas d'argument
 %s: l'option � -W %s � ne permet pas d'argument
 %s: l'option � -W %s � est ambigu�
 %s: l'option -- %c requiert un argument
 %s: porte (socket) ignor�e %s: tampon date-heure %s sera %lu s dans le futur %s: l'option � %c%s � n'est pas reconnue
 %s: l'option � --%s � n'est pas reconnue
 ' (pipe) --Suite  � l'octet %s--
 --Noms de fichiers mutil�s--
 --En-t�te de Volume--
 La valeur en base-256 de l'archive est en dehors de la plage %s L'archive contient � %.*s � alors qu'une valeur num�rique %s est attendue. L'archive contient des en-t�tes d�su�tes en base-64. L'archive non �tiquett�e ne concorde pas avec %s. Valeur octale de l'archive %.*s est en dehors de la plage %s Valeur octale de l'archive %.*s est en dehors de la plage %s; compl�ment � 2 assum� La cha�ne sign�e en base-64 de l'archive %s est hors de la plage %s Au d�but du ruban, fin pr�matur�e. Tentative d'extraction des liens symboliques comme des liens directs. Blancs dans l'en-t�te alors qu'une valeur num�rique %s �tait attendue Ne peut allouer un tampon de stockage. Ne peut allouer de la m�moire selon le facteur de blocage %d Ne peut reculer dans un fichier d'archive;
elle pourrait �tre illisible sans l'option -i . Ne aller dans le r�pertoire de travail Ne peut combiner l'option --listed-incremental avec --newer Ne peut ex�cuter un shell t�l�command�. Ne peut pr�server le r�pertoire de travail Ne peut mettre � jour des archives compress�es. Ne peut traiter des archives compress�es portant sur plusieurs volumes. Ne peut v�rifier des archives compress�es. Ne peut v�rifier des archives comportant plusieurs volumes. Ne peut v�rifier des archives utilisant l'entr�e/sortie standard. Options conflictuelles de compression. Les contenus diff�rent Refus cat�gorique de cr�er un fichier d'archive vide. Cr�ation du r�pertoire: Fichier de data n'a pas �t� retrouv� Rejet d'une en-t�te non conforme de l'archive. Les num�ros du p�riph�rique diff�rent. Les num�ros du p�riph�rique sont hors plage. EOF rencontr�e alors qu'une r�ponse de l'usager �tait attendue. Statut d'erreur report� d'erreurs pr�c�dentes. Erreur d'�criture sur la sortie standard Erreur non r�cup�rable: fin de l'ex�cution imm�diate Extraction des fichiers contigu�s comme des fichiers de type r�gulier Les types des fichiers diff�rent. GNU � tar � saugegarde plusieurs fichiers sur un ruban ou une archive sur
disque et peut restaurer des fichiers individuellement d'une archive.
 Options de GNU demand�es pour un format d'archive incompatible. Commande rejet�e. G�n�ration d'en-t�tes avec octal n�gatif Les Gid diff�rent. Num�ro d'inode hors plage Facteur de blocage invalide Num�ro de p�riph�rique invalide Num�ro d'inode invalide Mode invalide donn� en option propri�taire invalide Taille invalide d'enregistrement. Longueur invalide du ruban Cachet de date invalide Valeur invalide de la taille d'enregistrement. Apr�s -C le nom de fichier est manquant. Les dates de modification diff�rent. Les modes d'acc�s diff�rent. Plus d'une date de seuil Aucun nom d'archive donn�. Pas de nouveau volume; fin d'ex�cution.
 Ne poss�de pas de lien vers %s Vieille option � %c � requiert un arguement suppl�mentaire. Les options � -%s � et� -%s � requi�rent toutes les deux l'entr�e standard. Les options  � -Aru � sont incompatibles avec l'option � -f - � Les options � -[0-7][lmh] � ne sont pas support�es par cette version de � tar � Fin de fichier pr�matur�e (EOF). Charger le volume #%d pour %s et appuyer sur ENTR�E:  Lecture du point de contr�le %d Lecture de %s
 La taille des enregistrements doit �tre un multiple de %d %s renomm� � %s Renomm� � %s � � nouveau � � %s �
 Renomm� %s� � � %s �
 Direction du positionnement hors plage Positionnement relatif hors plage Les tailles diff�rent. Escamotage jusqu'� la prochaine en-t�te. Substitution de %s pour un format inconnu de date %s Les liens symboliques diff�rent. %s reli� par lien symbolique � %s Ceci ne ressemble pas � une archive de type � tar � Ce programme est fourni sans AUCUNE GARANTIE, tel que permis par la loi.
Vous pouvez le redistribuer selon les termes de � GNU General Public License �,
lire le texte du fichier COPYING pour plus de d�tails. Ce volume est hors s�quence. Cachet de date hors plage Trop d'erreurs, fin d'ex�cution. Pour en savoir davantage, faites: � %s --help �.
 Les Uid diff�rent. Fin pr�matur�e (EOF) rencontr�e dans l'archive. Fin pr�matur�e (EOF) des noms mutil�s. Commande %s de correction inconnue. Erreur syst�me inconnue. Usage: %s [OPTION]
Manipuler l'unit� d'archivage, acceptant les commandes d'un processus �loign�.

      --help                 afficher l'aide-m�moire
      --version              afficher le nom et la version du logiciel
 Les arguments valides sont: V�rification en cours. Erreur visible d'un long nom. Erreur visible de nom long. Le volume %s ne concorde pas � %s. D�bordement du num�ro de volume AVERTISSEMENT: l'archive est incompl�te. AVERTISSEMENT: pas d'en-t�te sur le volume. AVERTISSEMENT: l'option -I n'est pas support�e; peut-�tre voulez-vous -j ou -T? AVERTISSEMENT: l'option -y n'est pas support�; peut-�tre voulez-vous -j? �criture d'un point de contr�le %d Con�u par John Gilmore et Jay Fenlason. Vous ne pouvez pas s�lectionner plus d'une option parmi � -Acdtrux �  Vous devez s�lectionner une des options � -Acdtrux �  ` � %s � �chec de la commande Argument %s ambigu� pour %s bloc %s:  bloc %s: ** Bloc de NULs **
 bloc %s: ** Fin de fichier **
 taille des blocs processus enfant exec/tcp: service non disponible. canal inter-processus Argument %s invalide pour %s m�moire �puis�e � rmtd �: ne peut allouer un tampon de stockage.
 � rmtd �: commande %c rejet�e.
 � rmtd �: fin pr�matur�e (EOF).
 stdin stdout valeur %s en dehors de %s de la plage %s..%s valeur %s en dehors de %s de la plage %s..%s; substitution de %s 