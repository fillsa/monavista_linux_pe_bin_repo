��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  j  ?3  a  �4  �  6    �8  �   �<  R  P=  n  �?  H  A  �   [B      C  �   /C  !   �C     �C  +   D     FD  #   YD  8   }D  1   �D  B   �D     +E     FE     _E     }E  1   �E     �E     �E     �E  ?   F  +   PF     |F     �F     �F  3   �F  F   �F  F   5G  8   |G     �G  "   �G  %   �G  )   H     BH  %   WH  F   }H  *   �H  (   �H     I     7I  ,   TI     �I  (   �I  ,   �I  -   �I     "J  )   BJ     lJ  3   �J  !   �J  !   �J     �J     �J     K      $K     EK  4   ^K  >   �K  -   �K  3    L  6   4L  O   kL  >   �L      �L  ;   M  I   WM  *   �M  8   �M  7   N  ,   =N  5   jN  5   �N  .   �N  /   O  7   5O  .   mO  .   �O  <   �O  "   P     +P  4   AP     vP      �P  .   �P  #   �P  #    Q  D   $Q  -   iQ      �Q  %   �Q  7   �Q     R     5R  E   �R     �R  #   S     ,S     BS     `S      }S     �S  +   �S     �S     �S     T     7T  !   QT  &   sT  "   �T     �T     �T  %   �T     U     0U  +   @U  5   lU  .   �U  3   �U     V  ,   V     LV  	   kV  -   uV     �V     �V     �V  (   �V     W     "W     7W  8   TW     �W  (   �W     �W  �   �W  "   �X     �X     �X  +   Y     .Y  %   DY  .   jY  $   �Y     �Y  �   �Y     �Z  
   �Z     �Z     �Z     �Z  !   �Z      [  '   ?[  >   g[  8   �[      �[  (    \  6   )\  ,   `\     �\     �\     �\     �\  !   �\  !   �\     ]     #]  !   1]     S]     f]     �]  1   �]     �]      �]     ^     ^  #   !^  4   E^     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-03-26 19:17+0100
Last-Translator: Jacobo Tarr�o Barreiro <jtarrio@iname.com>
Language-Team: Galician <gpul-traduccion@ceu.fi.udc.es>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
 
Bloqueo dos dispositivos:
  -b, --blocking-factor=BLOQUES  BLOQUES x 512 bytes por rexistro
      --record-size=TAM          TAM bytes por rexistro, m�ltiplo de 512
  -i, --ignore-zeros             ignora-los bloques de ceros do arquivo
  -B, --read-full-records        cambia-lo factor de blocaxe mentres se le
			         (para canalizaci�ns 4.2BSD)
 
Selecci�n e cambio de dispositivo:
  -f, --file=ARQUIVO             usa o ficheiro ou o dispositivo ARQUIVO
      --force-local              arquivo local incluso cun signo de dous puntos
      --rsh-command=COMANDO      emprega-lo COMANDO remoto no canto de rsh
  -[0-7][lmh]                    especificar unidade e densidade
  -M, --multi-volume             crear/listar/extraer un arquivo multi-volume
  -L, --tape-length=NUM          cambia-la fita tras gravar NUM x 1024 bytes
  -F, --info-script=FICH         executa-lo script tras cada fita (implica -M)
      --new-volume-script=FICH   o mesmo que -F FICH
      --volno-file=FICH          usar/actualizar o n�mero de volume en FICH
 
Manexo dos atributos dos ficheiros:
      --owner=NOME             forza NOME coma dono dos ficheiros engadidos
      --group=NOME             forza NOME como grupo dos ficheiros engadidos
      --mode=CAMBIOS           forza o modo CAMBIOS para os ficheiros engadidos
      --atime-preserve         non cambia as datas de acceso dos ficheiros
  -m, --modification-time      non extrae a data de modificaci�n dos ficheiros
      --same-owner             tenta extrae-los ficheiros co mesmo propietario
      --no-same-owner          extrae-los ficheiros coma o usuario actual
      --numeric-owner          sempre usa n�meros para os nomes de dono/grupo
  -p, --same-permissions       extrae toda a informaci�n dos permisos
      --no-same-permissions    non extrae a informaci�n dos permisos
      --preserve-permissions   igual que -p
  -s, --same-order             ordea os nomes a extraer igual que os do arquivo
      --preserve-order         igual que -s
      --preserve               igual que -p e -s ao mesmo tempo
 
Se unha opci�n longa ten un argumento obrigatorio, tam�n o � para a
opci�n curta equivalente. A mesma regra para os argumentos opcionais.
 
Modo de operaci�n principal:
  -t, --list              lista o contido dun arquivo
  -x, --extract, --get    extrae ficheiros dun arquivo
  -c, --create            crea un novo arquivo
  -d, --diff, --compare   busca diferencias entre o arquivo e o sistema
                          de ficheiros
  -r, --append            engade ficheiros na fin do arquivo
  -u, --update            s� engade ficheiros m�is novos c� copia do arquivo
  -A, --catenate          engade ficheiros tar a un arquivo
      --concatenate       igual que -A
      --delete            borra do arquivo (�non en fitas!)
 
O sufixo de copia de seguridade � "~", ag�s se se cambia con --suffix ou
SIMPLE_BACKUP_SUFFIX. O control de versi�ns pode estabrecerse con --backup ou
VERSION_CONTROL, os valores son:

  t, numbered     crea copias de seguridade numeradas
  nil, existing   numera se existen copias de seguridade numeradas
  never, simple   sempre fai copias de seguridade sinxelas
 
Emprego: %s [OPCI�N]... [FICHEIRO]...

Exemplos:
  %s -cf arquivo.tar pepe xoan # Crear arquivo.tar dos ficheiros pepe e xoan.
  %s -tvf arquivo.tar          # Listar t�dolos ficheiros de arquivo.tar
                               # dando moitos datos
  %s -xf arquivo.tar           # Extraer t�dolos ficheiros de arquivo.tar.
       --backup[=CONTROL]       copiar antes de borrar, escoller control
                                 de versi�ns
      --suffix=SUFIXO          copiar antes de borrar, ignora-lo sufixo normal
  ligaz�n a %s
  n [nome]   Dar un novo nome de ficheiro para os seguintes volumes
 q          Abortar tar
 !          Executar outro int�rprete de comandos
 ?          Amosar esta lista
  Tipo de ficheiro %s desco�ecido
 %s non contin�a neste volume %s ten un tama�o incorrecto (%s != %s + %s) %s: Non se pode %s %s: Non se pode cambia-lo modo a %s %s: Non se pode cambia-la propiedade ao uid %lu, gid %lu %s: Non se pode crear unha ligaz�n simb�lica a %s %s: Non se pode extraer -- o ficheiro � continuaci�n doutro volume %s: Non se pode libar a %s %s: Non se pode eliminar %s: Non se pode renomear a %s %s: Non se pode saltar a %s %s: Non se pode crear unha ligaz�n simb�lica a %s %s: Borrando %s
 %s: Renomeouse o directorio %s: O directorio � novo %s: Renomeouse o directorio antes de poder estrae-lo seu estado %s: Ficheiro eliminado antes da s�a lectura %s: Grupo non v�lido %s: Non atopado no arquivo %s: Omit�ndoo %s: Inconsistencia inesperada ao crea-lo directorio %s: Tipo de ficheiro "%c" desco�ecido; tr�tase coma un ficheiro normal %s: Tipo de ficheiro "%c" desco�ecido, extra�ndoo coma ficheiro normal %s: Tipo de ficheiro desco�ecido; ign�rase este ficheiro %s: Aviso: Non se pode %s %s: Aviso: Non se pode saltar a %s %s: Non se puido copiar este ficheiro %s: cont�n un n�mero de volume non v�lido %s: ign�rase a porta %s: o ficheiro cambiou mentres se l�a %s: o ficheiro est� nun sistema de ficheiros diferente; non se envorca %s: o ficheiro � o arquivo; non se envorca %s: ficheiro sen cambios; non se envorca %s: opci�n non admitida -- %c
 %s: opci�n non v�lida -- %c
 %s: a opci�n "%c%s" non admite un argumento
 %s: a opci�n "%s" � ambigua
 %s: a opci�n "%s" precisa dun argumento
 %s: a opci�n "--%s" non admite un argumento
 %s: a opci�n "-W %s" non admite un argumento
 %s: a opci�n "-W %s" � ambigua
 %s: a opci�n precisa dun argumento -- %c
 %s: ign�rase o socket %s: a marca de tempo %s est� %lu segundos no futuro %s: opci�n "%c%s" non reco�ecida
 %s: opci�n "--%s" non reco�ecida
 " (canalizaci�n) --Contin�a no byte %s--
 --Nomes de ficheiro alterados--
 --Cabeceira de Volume--
 O valor base-256 do arquivo est� f�ra do rango de %s O arquivo cont�n %.*s onde se esperaba un valor num�rico de %s O arquivo cont�n cabeceiras base-64 obsoletas O arquivo non est� etiquetado para coincidir con %s O valor octal do arquivo %.*s est� f�ra do rango de %s O valor octal do arquivo %.*s est� f�ra do rango de %s; suponse complemento a 2 A cadea base-64 asinada do arquivo %s est� f�ra do rango de %s No comezo da cinta, sa�ndo agora Tentando extrae-las ligaz�ns simb�licas coma ligaz�ns duras Atop�ronse espacios na cabeceira onde se esperaba un valor n�merico de %s Non se pode reservar espacio para o buffer Non se pode reservar memoria para o factor de bloqueo %d Non se pode recuar no arquivo; pode ser ilexible sen -i Non se pode cambia-lo directorio de traballo Non se pode combinar --listed-incremental con --newer Non se pode executar un int�rprete de comandos remoto Non se pode armacena-lo directorio de traballo Non se poden actualiza-los arquivos comprimidos Non se poden empregar arquivos comprimidos multi-volume Non se poden verifica-los arquivos comprimidos Non se pode verifica-los arquivos multi-volume Non se poden verifica-los arquivos da entrada/sa�da est�ndar Opci�ns de compresi�n conflictivas O contido � diferente De xeito cobarde rex�itase crear un ficheiro baleiro Creando o directorio: Non se atopou o ficheiro de data Borrando o que non sexan cabeceiras do arquivo O n�mero de dispositivo � diferente N�mero de dispositivo f�ra de rango Chegouse � fin de ficheiro onde se esperaba unha resposta do usuario Sa�da por erro retrasada dos erros anteriores Erro ao gravar na sa�da est�ndar O erro non � recuperable: s�ese agora Extraendo os ficheiros contiguos coma ficheiros normais O tipo de ficheiro � diferente GNU `tar' armacena varios ficheiros xuntos nun s� arquivo en fita ou disco, e
pode restaurar ficheiros individuais do arquivo.
 Qu�rense as caracter�sticas de GNU no formato de arquivo incompatible Comando lixo Xerando cabeceiras octais negativas Os gid son diferentes N�mero de inode f�ra de rango Factor de bloqueo non v�lido N�mero de dispositivo non v�lido N�mero de inode non v�lido Proporcionouse na opci�n un modo non v�lido Propietario non v�lido Tama�o de rexistro non v�lido Lonxitude da fita non v�lida Marca de tempo non v�lida Valor non v�lido para record_size Falta o nome de ficheiro despois de -C A data de modificaci�n � diferente O modo � diferente M�is dunha data de umbral Non se proporcionou o nome do arquivo Non hai novos volumes; sa�ndo.
 Non ligado a %s A antiga opci�n "%c" precisa dun argumento. As opci�ns "-%s" e "-%s" precisan da entrada est�ndar As opci�ns "-Aru" son incompatibles con "-f -" Opci�ns `-[0-7][lmh]' non soportadas por *este* tar Fin de ficheiro prematura Prepare o volume #%d para %s e prema enter:  Punto de control de lectura %d Lendo %s
 O tama�o do rexistro debe ser m�ltiplo de %d. Renomeado %s a %s Renomeando %s a %s
 Renomeando %s a %s
 Direcci�n de desprazamento f�ra de rango Desprazamento f�ra de rango O tama�o � diferente Pasando � seguinte cabeceira Substitu�ndo o formato de data desco�ecido %2$s por %1$s A ligaz�n simb�lica � diferente Creada unha ligaz�n simb�lica de %s a %s Isto non semella un arquivo tar Este programa v�n SEN GARANT�A, ata o permitido pola lei. Pode redistribu�lo
baixo os termos da Licencia P�blica Xeral de GNU; vexa o ficheiro chamado
COPYING para m�is detalles. Este volume est� fora da secuencia Marca de tempo f�ra de rango Demasiados erros, sa�ndo Escriba '%s --help' para m�is informaci�n.
 Os uid son diferentes Fin de ficheiro inesperado no arquivo Fin de ficheiro inesperado nos nomes alterados Comando de correcci�n %s desco�ecido Erro do sistema desco�ecido Emprego: %s [OPCI�N]
Manipula unha unidade de fita, aceptando comandos dun proceso remoto.

  --version  Amosar informaci�n da versi�n.
  --help  Amosar esta axuda.
 Os argumentos v�lidos son: Verificar  Erro no nome longo visible Erro de nome longo visible O volume %s non coincide con %s Desbordamento no n�mero de volume AVISO: O arquivo est� incompleto AVISO: Non hai unha cabeceira de volume Aviso: a opci�n -I non est� soportada; �quer�a dicir -j ou -T? Aviso: a opci�n -y non est� soportada; �quer�a dicir -j? Punto de control de escritura %d Escrito por John Gilmore e Jay Fenlason. Non pode especificar m�is dunha das opci�ns "-Acdtrux" Debe especificar unha das opci�ns "-Acdtrux" " O comando "%s" fallou argumento %s ambiguo para %s bloque %s:  bloque %s: ** Bloque de nulos **
 bloque %s: ** Fin de Ficheiro **
 tama�o de bloque proceso fillo exec/tcp: Servicio non dispo�ible canle interproceso argumento %s non v�lido para %s memoria esgotada rmtd: Non se pode reservar espacio para o buffer
 rmtd: Comando lixo %c
 rmtd: Fin de ficheiro prematura
 entrada est�ndar sa�da est�ndar valor %s f�ra do rango de %s %s..%s valor %s f�ra do rango de %s %s..%s; substitu�ndo %s 