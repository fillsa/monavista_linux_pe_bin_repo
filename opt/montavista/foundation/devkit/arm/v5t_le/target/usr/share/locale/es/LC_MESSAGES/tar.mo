��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  V  ?3  �  �4  -  06    ^9  �   j>  �  ?  �  �A    MC    bD     dE  �   rE      'F     HF  *   gF     �F  $   �F  9   �F  .   G  E   3G  )   yG     �G     �G     �G  .   �G     'H  $   8H     ]H  J   xH  *   �H     �H  !   I     #I  4   0I  O   eI  C   �I  7   �I     1J  (   NJ  7   wJ  *   �J  $   �J  0   �J  D   0K  1   uK  +   �K     �K     �K  0   L     8L  )   WL  0   �L  1   �L  !   �L  *   M  &   1M  1   XM      �M      �M     �M  	   �M     �M  #   �M     N  8   1N  ?   jN  /   �N  6   �N  7   O  T   IO  C   �O  ,   �O  A   P  B   QP  )   �P  8   �P  C   �P  ,   ;Q  5   hQ  $   �Q  ,   �Q  ,   �Q  7   R  +   UR  ,   �R  0   �R  #   �R     S  (   S     ES  #   \S      �S  $   �S  $   �S  J   �S  2   6T  '   iT  (   �T  5   �T     �T  �   U  F   �U     �U  %   �U     V     1V     QV     lV     �V  1   �V     �V  "   �V     W     *W  &   CW  )   jW  $   �W     �W  (   �W  .   �W  #   %X     IX  ,   [X  5   �X  0   �X  :   �X     *Y  .   CY  #   rY     �Y  /   �Y     �Y  !   �Y     Z  *   #Z     NZ     lZ      �Z  6   �Z     �Z      �Z     [  �   9[  $   \     '\     F\  )   c\     �\     �\  )   �\  9   �\     !]  �   ?]     �]  
   ^     ^     *^      H^  &   i^  $   �^  $   �^  6   �^  1   _  %   C_  (   i_  4   �_  2   �_     �_     �_     `     -`  !   9`      [`     |`     �`      �`     �`     �`     �`  0    a     1a     Oa     da     }a  "   �a  3   �a     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-04-26 17:02+0200
Last-Translator: Santiago Vila Doncel <sanvila@unex.es>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Bloques de dispositivos:
  -b, --blocking-factor=BLOQUES  BLOQUES x 512 bytes por registro
      --record-size=TAMA�O       TAMA�O bytes por registro, m�ltiplo de 512
  -i, --ignore-zeros             pasa por alto bloques de ceros en archivo
                                 (significan EOF)
  -B, --read-full-records        rebloquea mientras se lee (en tuber�as
                                 de 4.2BSD)
 
Selecci�n de dispositivos y conmutadores:
  -f, --file=ARCHIVO             utiliza el archivo o dispositivo ARCHIVO
      --force-local              el archivo es local incluso si tiene dos puntos
      --rsh-command=ORDEN        utiliza la ORDEN remota en vez de rsh
  -[0-7][lmh]                    especifica unidad y densidad
  -M, --multi-volume             crea/lista/extrae un archivo multivolumen
  -L, --tape-length=NUM          cambia la cinta despu�s de escribir NUM x 1024
                                 bytes
  -F, --info-script=FICHERO      ejecuta el script al final de cada cinta
                                  (implica -M)
      --new-volume-script=FICH   igual que -F FICH
      --volno-file=ARCHIVO       utiliza/actualiza el n�mero de volumen en
                                 ARCHIVO
 
Manejo de los atributos de los ficheros:
      --owner=NOMBRE           establece NOMBRE como propietario para los
                               ficheros que se a�aden
      --group=NOMBRE           establece NOMBRE como grupo para los ficheros que
                               se a�aden
      --mode=CAMBIOS           establece CAMBIOS como modo (simb�lico) para los
                               ficheros que se a�aden
      --atime-preserve         no cambia la fecha de acceso en los ficheros
                               volcados
  -m, --modification-time      no extrae la fecha de modificaci�n de ficheros
      --same-owner             intenta extraer ficheros con el mismo propietario
      --no-same-owner          extrae los ficheros como uno mismo
      --numeric-owner          siempre utiliza n�meros para nombres de
                               usuario/grupo
  -p, --same-permissions       extrae la informaci�n de los permisos
      --no-same-permissions    no extrae la informaci�n de los permisos
      --preserve-permissions   igual que -p
  -s, --same-order             ordena los nombres a extraer para coincidir con
                               el archivo
      --preserve-order         igual que -s
      --preserve               igual que -p y -s a la vez
 
Si una opci�n larga muestra un argumento como obligatorio, entonces es
obligatorio tambi�n para la opci�n corta equivalente. Lo mismo ocurre con
los argumentos opcionales.
 
Modo de operaci�n principal:
  -t, --list              lista el contenido de un archivo
  -x, --extract, --get    extrae ficheros de un archivo
  -c, --create            crea un nuevo archivo
  -d, --diff, --compare   encuentra las diferencias entre el archivo y el
                          sistema de ficheros
  -r, --append            a�ade ficheros al final de un archivo
  -u, --update            s�lo a�ade ficheros m�s recientes que la copia del
                          archivo
  -A, --catenate          a�ade ficheros tar a un archivo
      --concatenate       igual que -A
      --delete            borra de un archivo (�no en cintas magn�ticas!)
 
El sufijo de respaldo es `~', a menos que se especifique con --suffix
o con SIMPLE_BACKUP_SUFFIX. El control de versiones puede establecerse
con --backup o con VERSION_CONTROL, los valores son:

  t, numbered     hace copias de seguridad numeradas
  nil, existing   numerada si existen copias de seguridad numeradas, simples
                  en otro caso
  never, simple   siempre hace copias de seguridad simples
 
Modo de empleo: %s [OPCI�N]... [FICHERO]...

Ejemplos:
 %s -cf archivo.tar fu fa # Crea archivo.tar con los ficheros fu y fa.
 %s -tvf archivo.tar      # Lista en detalle todos los ficheros de archivo.tar
 %s -xf archivo.tar       # Extrae todos los ficheros de archivo.tar.
       --backup[=CONTROL]      copia de seguridad antes de eliminar, elige
                              el control de versi�n
      --suffix=SUFIJO         copia de seguridad antes de eliminar, pasa por
                              alto el sufijo habitual
  enlace a %s
  n [nombre] Da un nuevo nombre de archivo al siguiente
            (y consecutivos) volumen(es)
 q          Aborta tar
 !          Lanza un subshell
 ?          Muestra esta ayuda
  tipo de fichero desconocido %s
 %s no contin�a en este volumen %s tiene un tama�o err�neo (%s != %s + %s) %s: No se puede %s %s: No se puede cambiar el modo a %s %s: No se puede cambiar el propietario a uid %lu, gid %lu %s: No se puede crear el enlace simb�lico a %s %s: No se puede extraer -- el fichero es continuaci�n de otro volumen %s: No se puede crear un enlace duro a %s %s: No se puede borrar %s: No se puede renombrar a %s %s: No se puede desplazar a %s %s: No se puede crear un enlace simb�lico a %s %s: Borrando %s
 %s: El directorio ha sido renombrado %s: El directorio es nuevo %s: El directorio fue renombrado antes de que se pudiera extraer su estado %s: El fichero fue borrado antes de leerlo %s: Grupo inv�lido %s: No se encuentra en el archivo %s: Se omite %s: Inconsistencia inesperada al crear el directorio %s: Tipo de fichero `%c' desconocido, se toma la diferencia
como fichero normal %s: Tipo de fichero `%c' desconocido, se extrae como fichero normal %s: Tipo de fichero desconocido; no se tendr� en cuenta %s: Atenci�n: No se puede %s %s: Atenci�n: No se puede desplazar a %s %s: No se pudo hacer copia de seguridad de este fichero %s: contiene un n�mero de volumen inv�lido %s: no se tendr� en cuenta la puerta %s: el fichero cambi� mientras se estaba leyendo %s: el fichero est� en un sistema de ficheros distinto; no se vuelca %s: el fichero es el propio archivo; no se vuelca %s: el fichero no ha cambiado; no se vuelca %s: opci�n ilegal -- %c
 %s: opci�n inv�lida -- %c
 %s: la opci�n `%c%s' no admite ning�n argumento
 %s: la opci�n `%s' es ambigua
 %s: la opci�n `%s' requiere un argumento
 %s: la opci�n `--%s' no admite ning�n argumento
 %s: la opci�n `-W %s' no admite ning�n argumento
 %s: la opci�n `-W %s' es ambigua
 %s: la opci�n requiere un argumento -- %c
 %s: el `socket' no se tendr� en cuenta %s: la marca de tiempo %s est� %lu s en el futuro %s: opci�n no reconocida `%c%s'
 %s: opci�n no reconocida `--%s'
 ' (tuber�a) --Contin�a en el byte %s--
 --Nombres de fichero modificados--
 --Cabecera de Volumen--
 El valor en base 256 del archivo est� fuera del rango %s El archivo contiene %.*s donde se esperaba el valor num�rico %s El archivo contiene cabeceras base 64 obsoletas El archivo no est� etiquetado para que coincida con %s El valor octal %.*s del archivo est� fuera del rango %s El valor octal %.*s del archivo est� fuera del rango %s;
se supone complemento a dos La cadena firmada en base 64 %s del archivo est� fuera del rango %s Al principio de la cinta, se terminar� ahora Intentando la extracci�n de enlaces simb�licos como enlaces duros Hay blancos en la cabecera cuando se esperaba el valor num�rico %s No se puede asignar espacio para el b�fer No se puede asignar memoria para el factor de bloqueo %d No se puede ir hacia atr�s en el archivo; puede ser ilegible sin -i No se puede cambiar el directorio de trabajo No se puede combinar --listed-incremental con --newer No se puede ejecutar un shell remoto No se puede guardar el directorio de trabajo No se pueden actualizar archivos comprimidos No se pueden utilizar archivos multivolumen comprimidos No se pueden verificar archivos comprimidos No se pueden verificar archivos multivolumen No se puede verificar la entrada/salida est�ndar Opciones de compresi�n en conflicto El contenido es distinto Rechazo cobarde a crear un archivo vac�o Creando el directorio: No se encontr� la fecha del fichero Borrando no-cabecera del archivo El n�mero de dispositivo es distinto N�mero de dispositivo fuera de rango Se encontr� un final de fichero mientras se esperaba respuesta del usuario Salida con error demorada desde errores anteriores Error al escribir en la salida est�ndar El error no es recuperable: salida ahora Extrayendo ficheros contiguos como ficheros regulares El tipo de fichero es distinto GNU `tar' guarda varios ficheros juntos en un solo archivo en cinta o disco, y
puede restablecer ficheros individuales a partir del archivo.
 Se requieren caracter�sticas de GNU en formato de archivo incompatible Orden ininteligible Generando cabeceras octales negativas El gid es distinto N�mero de nodo-i fuera de rango Factor de bloqueo inv�lido N�mero de dispositivo inv�lido N�mero de nodo-i inv�lido Se ha especificado un modo no v�lido en la opci�n Propietario inv�lido El tama�o del registro es inv�lido Longitud de cinta inv�lida Marca de tiempo inv�lida El valor de `record_size' no es v�lido Falta el nombre del fichero despu�s de -C La fecha de modificaci�n es distinta El modo es distinto Se ha especificado m�s de una fecha tope No se ha especificado ning�n nombre de archivo No hay volumen nuevo; finalizando.
 No se enlaza a %s La opci�n antigua `%c' requiere un argumento Las opciones `-%s' y `-%s' requieren entrada est�ndar Las opciones `-Aru' son incompatibles con `-f -' *Esta* versi�n de tar no admite las opciones `-[0-7][lmh]' Fin de fichero prematuro Prepare el volumen #%d para %s y pulse intro:  Punto de comprobaci�n de lectura %d Leyendo %s
 El tama�o del registro debe ser m�ltiplo de %d. Se renombra %s como %s Se vuelve a renombrar %s como %s
 Se renombra %s como %s
 Direcci�n de desplazamiento fuera de rango Desplazamiento fuera de rango El tama�o es distinto Saltando a la siguiente cabecera Sustituyendo %s por el formato de fecha desconocido %s El enlace simb�lico es distinto Se enlaza %s simb�licamente a %s Esto no parece un archivo tar Este programa viene sin NINGUNA GARANT�A, hasta donde permite la ley.
Puede redistribuirse bajo los t�rminos de la Licencia P�blica General de GNU;
vea el fichero llamado COPYING para m�s informaci�n. Este volumen est� fuera de secuencia Marca de tiempo fuera de rango Demasiados errores, abandono Pruebe `%s --help' para m�s informaci�n.
 El uid es distinto EOF inesperado en el archivo EOF inesperado en los nombres modificados Orden desconocida para recuperar el nombre original de %s Error del sistema desconocido Modo de empleo: %s [OPCI�N]
Manipula una unidad de cinta, aceptando �rdenes de un proceso remoto.

  --version  Muestra la versi�n.
  --help     Muestra esta ayuda.
 Los argumentos v�lidos son: Verificar  Error de nombre largo visible Error de nombre largo visible El volumen %s no coincide con %s Desbordamiento en el n�mero de volumen ATENCI�N: El archivo est� incompleto ATENCI�N: No hay cabecera de volumen Atenci�n: no se admite la opci�n -I; �no ser� -j o -T? Atenci�n: no se admite la opci�n -y; �no ser� -j? Punto de comprobaci�n de escritura %d Escrito por John Gilmore y Jay Fenlason. No se puede especificar m�s de una opci�n `-Acdtrux' Se debe especificar una de las opciones `-Acdtrux' ` La orden `%s' fall� argumento %s ambiguo para %s bloque %s:  bloque %s: ** Bloque de NULos **
 bloque %s: ** Fin de Fichero **
 tama�o del bloque proceso hijo exec/tcp: Servicio no disponible canal de interproceso argumento %s inv�lido para %s memoria agotada rmtd: No se puede asignar espacio para el b�fer
 rmtd: Orden ininteligible %c
 rmtd: EOF prematuro
 entrada est�ndar (stdin) salida est�ndar (stdout) valor %s fuera del rango %s %s..%s valor %s fuera del rango %s %s..%s; se sustituye %s 