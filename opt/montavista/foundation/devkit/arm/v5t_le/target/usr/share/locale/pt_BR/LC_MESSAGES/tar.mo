��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  ~  ?3  z  �4  �  96    �8  �   �<  A  z=  <  �?    �@  �   B     �B  �   �B  #   {C     �C  %   �C     �C  !   �C  1   D  +   LD  A   xD  !   �D     �D     �D     E  +   1E     ]E     oE     �E  <   �E  &   �E     F  %   F     ?F  0   LF  G   }F  D   �F  2   
G     =G  (   \G  )   �G  '   �G     �G  /   �G  A   H  /   \H  .   �H     �H     �H  +   �H     I  $   5I  +   ZI  ,   �I     �I  %   �I     �I  0   J  !   ?J  !   aJ     �J     �J     �J      �J     �J  5   �J  =   K  1   SK  ,   �K  7   �K  V   �K  A   AL  &   �L  <   �L  C   �L  $   +M  3   PM  <   �M  (   �M  4   �M  #   N  '   CN  -   kN  5   �N  -   �N  .   �N  H   ,O  !   uO     �O  &   �O     �O     �O  )   P  #   5P  #   YP  4   }P  .   �P  "   �P  $   Q  8   )Q     bQ  w   �Q  F   �Q     ?R  #   SR     wR     �R     �R     �R     �R      �R     S     -S     JS     cS  !   S  "   �S  )   �S     �S     T  !   "T      DT     eT  '   }T  5   �T  -   �T  9   	U     CU  ,   \U  "   �U  	   �U  3   �U     �U     �U     V      6V  %   WV     }V      �V  4   �V      �V  &   W  "   6W  �   YW  "   X      5X     VX  )   oX     �X  *   �X  ,   �X  '   Y     /Y  �   LY     �Y  
   
Z     Z     1Z     MZ     iZ  $   �Z  !   �Z  D   �Z  >   [  "   T[  (   w[  @   �[  /   �[     \     \     '\  
   D\     O\     n\     �\     �\      �\     �\     �\     ]  +   ]  #   >]     b]     �]     �]  !   �]  2   �]     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-11-27 20:30-0300
Last-Translator: Alexandre Folle de Menezes <afmenez@terra.com.br>
Language-Team: Brazilian Portuguese <ldp-br@bazar.conectiva.com.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Blocagem no dispositivo:
  -b, --blocking-factor=BLOCOS   BLOCOS x 512 bytes por registro
      --record-size=TAM          TAM bytes por registro, m�ltiplo de 512
  -i, --ignore-zeros             ignorar os blocos zerados no arquivo-tar
                                 (significam fim-de-arquivo)
  -B, --read-full-records        dividir leitura em blocos (para pipes 4.2BSD)
 
Escolha e substitui��o de dispositivo:
  -f, --file=ARQ                 usa o arquivo ou dispositivo ARQ
      --force-local              o arquivo � local, mesmo que tenha ":"
      --rsh-command=COM          usar o comando remoto COM, em vez de "rsh"
  -[0-7][lmh]                    escolher o acionador e a densidade
  -M, --multi-volume             tratar arquivos multi-volume
  -L, --tape-length=NUM          tratar NUM x 1024 "bytes" por fita magn�tica
  -F, --info-script=ARQ          executar ARQ no final de cada fita (implica em -M)
      --new-volume-script=ARQ    o mesmo que "-F ARQ"
      --volno-file=ARQ           usa/atualiza o n�mero do volume em ARQ
 
Tratamento dos atributos dos arquivos:
      --owner=NOME             for�a NOME como dono dos arquivos adicionados
      --group=GRUPO            for�a GRUPO como grupo dos arquivos adicionados
      --mode=PERM              for�a permiss�es PERM para arquivos adicionados
      --atime-preserve         n�o altera as datas de acesso dos arquivos
  -m, --modification-time      n�o extrai a data de modifica��o dos arquivos
      --same-owner             extrai os arquivos tentando manter o dono
      --no-same-owner          extrai os arquivos com o usu�rio atual como dono
      --numeric-owner          usa sempre n�meros para nomes de usu�rio e grupo
  -p, --same-permissions       mant�m as permiss�es dos arquivos na extra��o
      --no-same-permissions    n�o extrai as informa��es de permiss�es
      --preserve-permissions   o mesmo que -p
  -s, --same-order             ordena os nomes a extrair segundo a ordem do arquivo-tar
      --preserve-order         o mesmo que -s
      --preserve               o mesmo que -p e -s juntos
 
Se uma op��o longa aparece como argumento obrigat�rio, ent�o tamb�m o � para a
op��o curta equivalente. Idem para argumentos opcionais.
 
Modo de opera��o principal:
  -t, --list              lista o conte�do de um arquivo-tar
  -x, --extract, --get    extrai arquivos do arquivo-tar
  -c, --create            cria um novo arquivo-tar
  -d, --diff, --compare   compara o arquivo-tar com arquivos atuais
  -r, --append            anexa arquivos no fim do arquivo-tar
  -u, --update            atualiza arquivos contidos no arquivo-tar
  -A, --catenate          anexa outros arquivos-tar a um arquivo-tar
      --concatenate       o mesmo que "-A"
      --delete            remove do arquivo-tar (exceto para fitas)
 
Sufixo do backup � `~', a menos que usado --suffix ou SIMPLE_BACKUP_SUFFIX.
Os controles de vers�o que podem ser usados com --backup ou VERSION_CONTROL,
s�o:

  t, numbered     faz backups numerados
  nil, existing   numera se existe backup numerado, se n�o faz simples
  never, simple   sempre faz backups simples
 
Uso: %s [OP��O]... [ARQUIVO]...

Exemplos:
  %s -cf arquivo.tar foo bar  # Cria arquivo.tar atrav�s dos arquivos foo e bar.
  %s -tvf arquivo.tar         # Lista todos os arquivos em arquivo.tar.
  %s -xf arquivo.tar          # Extrai todos os arquivos de arquivo.tar
       --backup[=CONTROL]     copia antes de remover, possibilita escolha
                             de controle de vers�o
      --suffix=SUFIXO        copia antes de remover, ignora sufixo usual
  link para %s
  n [nome]   Dar um novo nome para o pr�ximo volume (e os subseq�entes)
 q          Abortar tar
 !          Criar um "sub-shell"
 ?          Mostra esta lista
  tipo de arquivo "%s" desconhecido
 %s n�o continua neste volume %s � o tamanho errado (%s != %s + %s) %s: N�o � poss�vel %s %s: Imposs�vel mudar modo para %s %s: Imposs�vel alterar dono para uid %lu, gid %lu %s: Imposs�vel criar link simb�lico para %s %s: Imposs�vel extrair -- arquivo � a continua��o de outro volume %s: Imposs�vel fazer link para %s %s: Imposs�vel remover %s: Imposs�vel renomear para %s %s: Imposs�vel saltar para %s %s: Imposs�vel fazer link simb�lico para %s %s: Removendo %s
 %s: Diret�rio foi renomeado %s: O diret�rio � novo %s: Diret�rio renomeado antes de se poder extrair seu estado %s: arquivo removido antes de ser lido %s: Grupo inv�lido %s: N�o foi encontrado no arquivo-tar %s: Omitindo %s: Inconsist�ncia inesperada ao criar diret�rio %s: Tipo de arquivo "%c" desconhecido, comparado como um arquivo normal %s: Tipo de arquivo '%c' desconhecido; extraindo como arquivo normal %s: Tipo de arquivo desconhecido; arquivo ignorado %s: Aten��o: N�o � poss�vel %s %s: Aviso: N�o � poss�vel saltar para %s %s: Imposs�vel fazer backup deste arquivo %s: cont�m um n�mero de volume inv�lido %s: porta ignorada %s: arquivo alterado enquanto estava sendo lido %s: arquivo est� em outro sistema de arquivos; n�o ser� arquivado %s: arquivo � o arquivo-tar; n�o ser� arquivado %s: arquivo sem altera��es; n�o ser� arquivado %s: op��o ilegal -- %c
 %s: op��o inv�lida -- %c
 %s: a op��o `%c%s' n�o admite um argumento
 %s: a op��o `%s' � amb�gua
 %s: a op��o `%s' exige um argumento
 %s: a op��o `--%s' n�o admite um argumento
 %s: a op��o `-W %s' n�o aceita um argumento
 %s: a op��o `-W %s' � amb�gua
 %s: a op��o exige um argumento -- %c
 %s: "socket" ignorado %s: o carimbo de hor�rio %s est� %lu s no futuro %s: op��o `%c%s' n�o reconhecida
 %s: op��o `--%s' n�o reconhecida
 ' (pipe) --Continua no byte %s--
 --Nomes de arquivos truncados--
 --Cabe�alho de volume--
 O valor base-256 de arquivo-tar est� fora da faixa %s O arquivo-tar cont�m %.*s onde valor num�rico %s era esperado o arquivo-tar cont�m cabe�alhos base-64 obsoletos O arquivo-tar n�o rotulado para casar com %s O valor octal do arquivo-tar %.*s est� fora de faixa %s O valor octal do arquivo-tar %.*s est� fora de faixa %s; assumindo complemento de dois A string base-64 assinada do arquivo-tar %s est� fora de faixa %s No princ�pio da fita, encerrando agora Tentativa de extrair "links" simb�licos como "links" f�sicos Espa�o em branco no cabe�alho onde valor num�rico `%s' era esperado Imposs�vel alocar espa�o para buffer Imposs�vel alocar mem�ria para um fator de bloco %d Imposs�vel recuar no arquivo-tar; pode estar ileg�vel sem -i Imposs�vel mudar o diret�rio de trabalho Impossivel combinar --listed-incremental com --newer Imposs�vel executar um shell remoto Imposs�vel salvar diret�rio de trabalho Imposs�vel atualizar arquivos-tar compactados Imposs�vel usar arquivos-tar compactados multi-volume Imposs�vel verificar arquivos-tar compactados Imposs�vel verificar arquivos-tar multi-volume Imposs�vel verificar arquivos-tar de entrada/sa�da padr�o (stdin/stdout) Op��es de compress�o conflitantes O conte�do � diferente Recusando a criar um arquivo-tar vazio Criando de diret�rio: Arquivo de datas n�o encontrado Removendo um n�o-cabe�alho do arquivo-tar O n�mero de dispositivo � diferente N�mero do dispositivo fora de faixa Fim-de-arquivo onde era esperado resposta do usu�rio Sa�da por erro atrasada pelos erros anteriores Erro ao escrever para sa�da padr�o Erro n�o � recuper�vel: saindo agora Extraindo arquivos cont�guos como sendo arquivos normais O tipo de arquivo � diferente O GNU `tar' salva v�rios arquivos em um �nico arquivo-tar em fita ou disco,
e pode restaurar arquivos individualmente.
 Desejadas caracter�sticas GNU num arquivo-tar com formato incompat�vel Comando sem sentido Gerando cabe�alhos octais negativos os gid s�o diferentes N�mero do inode fora de faixa Fator de blocagem inv�lido N�mero de dispositivo inv�lido N�mero de inode inv�lido Modo inv�lido informado na op��o Dono inv�lido Tamanho de registro inv�lido Tamanho da fita inv�lido Carimbo de hor�rio inv�lido Valor inv�lido para "record_size" Falta um nome de arquivo ap�s "-C" Os hor�rios de modifica��o s�o diferentes Os modos s�o diferentes Mais do que uma data limite Nome de arquivo-tar n�o informado Nenhum volume novo; encerrando.
 N�o est� "linkado" a %s A op��o antiga `%c' exige um argumento. Ambas as op��es `-%s' e `-%s' exigem a entrada padr�o As op��es `-Aru' s�o incompat�veis com `-f -' As op��es "-[0-7][lmh]" n�o s�o suportadas por *este* tar Fim de arquivo prematuro Prepare o volume #%d para %s e tecle Enter:  Ponto de verifica��o de leitura %d Lendo %s
 O tamanho dos registros tem que ser m�ltiplo de %d. Renomeado %s para %s Renomeando %s de volta para %s
 Renomeando %s para %s
 Dire��o de procura fora de faixa Deslocamento de procura fora de faixa Os tamanhos s�o diferentes Pulando para o pr�ximo cabe�alho Substituindo %s pelo formato de data desconhecido %s O ("Link") simb�lico � diferente %s ligado simbolicamente a %s ("link") Este n�o parece ser um arquivo-tar Esse programa n�o possui NENHUMA GARANTIA, at� onde permitido pela lei.
Pode ser redistribu�do sob os termos da Licen�a Publica Geral GNU;
veja o arquivo COPYING para maiores detalhes. Este volume est� fora de sequ�ncia Carimbo de hor�rio fora da faixa Muitos erros, encerrando Tente `%s --help' para mais informa��es.
 Os uid s�o diferentes Final-de-arquivo inesperado no arquivo-tar Fim de arquivo inesperado nos nomes cifrados Comando de decifragem "%s" desconhecido Erro de sistema desconhecido Uso: %s [OP��O]
Manipula uma unidade de fita, aceitando comandos de um processo remoto.

  --version  Mostra informa��es de vers�o.
  --help   Mostra esta ajuda.
 Os argumentos v�lidos s�o: Verificar  Erro evidente de nome longo Erro de nome longo evidente O volume %s n�o casa com %s Sobrecarga de n�mero de volumes AVISO: O arquivo-tar est� incompleto AVISO: N�o h� cabe�alho de volume Aviso: a op��o -I n�o � suportada; talvez a inten��o fosse -j ou -T? Aviso: a op��o -y n�o � suportada; talvez a inten��o fosse -j? Ponto de verifica��o de escrita %d Escrito por John Gilmore e Jay Fenlason. N�o � poss�vel especificar mais do que uma das op��es "-Acdtrux" Deve ser especificada uma das op��es "-Acdtrux" ` comando `%s' falhou argumento %s amb�guo para %s bloco %s:  bloco %s: ** Bloco de NULs **
 bloco %s: ** Fim-de-arquivo **
 tamanho de bloco processo filho exec/tcp: Servi�o n�o dispon�vel canal interprocesso argumento %s inv�lido para %s mem�ria esgotada rmtd: Imposs�vel alocar espa�o para buffer
 rmtd: Comando "%c" n�o faz sentido
 rmtd: Fim de arquivo prematuro
 entrada padr�o (stdin) sa�da padr�o (stdout) valor %s fora da faixa %s: %s..%s valor %s fora da faixa %s: %s..%s; substituindo %s 