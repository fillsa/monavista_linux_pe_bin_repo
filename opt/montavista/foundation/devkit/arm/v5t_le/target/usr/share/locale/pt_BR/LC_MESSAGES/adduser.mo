��    R      �  m   <      �      �  '        :  (   X     �  #   �  >   �           !  '   B     j  #   �     �     �  '   �     		     #	     B	  '   U	  !   }	     �	     �	     �	     �	     �	     
     *
     D
  (   a
     �
  "   �
  7   �
     �
       �   /     �  "   �  &     !   <  !   ^  *   �     �      �     �  1     6   5  �   l          3     F     \  "   r     �     �     �     �  $   �          6      S     t     �     �  '   �     �       )   6  .   `  �   �     l      �  '   �     �  4   �  8        S     i  	  ~     �  2   �     �  *  �      �  $        5  )   R     |  $   �  ?   �     �       (   <     e  $   �     �  "   �  1   �  '     (   E     n  5   �  '   �     �               >  )   J  %   t  +   �  '   �  (   �           /  4   P  (   �  $   �  �   �     �  !   �  /   �  $   �  $     ,   7     d  +   }     �  >   �  :     �   C          &     =     T  $   k     �     �     �     �  (   �     &      =      U      q      �      �   2   �      �      	!  %   %!  *   K!  �   v!     t"  %   �"  !   �"     �"  <   �"  7   1#     i#     {#  @  �#     �&  .   �&     	'         /      L              -   @      M              C               +      G      ,           =   A   0   (       "              !       ;      O      :   	             E      '   D   P       Q   $   ?   J              7   3       #          *      4   R                  K      <              N   2   %          8   .               H   I   F              6       9   5   )   >       B   &       1   
    %s is not a member of group %s.
 %s: %s doesn't exist.  Using defaults.
 --conf requires an argument.
 --firstuid requires a numeric argument.
 --gecos requires an argument.
 --gid requires a numeric argument.
 --group, --ingroup, and --gid options are mutually exclusive.
 --home requires an argument.
 --ingroup requires an argument.
 --lastuid requires a numeric argument.
 --shell requires an argument.
 --uid requires a numeric argument.
 Adding group %s (%s)...
 Adding new group %s (%s).
 Adding new user %s (%s) with group %s.
 Adding system user %s...
 Adding user %s to group %s...
 Adding user %s...
 Allowing use of questionable username.
 Backuping files to be removed...
 Copying files from %s
 Couldn't parse %s:%s.
 Creating home directory %s.
 Done.
 Enter a groupname to add:  Enter a groupname to remove:  Enter a username to add:  Enter a username to remove:  Global configuration is in the file %s.
 Group `%s' not created.
 Home directory %s already exists.
 Home directory %s already exists.  Not copying from %s
 I need a name to add.
 I need a name to remove.
 In order to use the --remove-home, --remove-all-files, and --backup features,
you need to install the `perl-modules' package. To accomplish that, run
apt-get install perl-modules
 Internal error Is the information correct? [y/N]  Looking for files to backup/remove...
 No GID is available in the range  No UID is available in the range  No UID/GID pair is available in the range  No more than two names.
 No options allowed after names.
 Not creating home directory.
 Only root may add a user or group to the system.
 Only root may remove a user or group from the system.
 Please enter a username consisting of a lower case letter
followed by lower case letters and numbers.  Use the `--force-badname'
option to allow underscores, and uppercase.
 Removing directory `%s'
 Removing files...
 Removing group %s...
 Removing group `%s'.
 Removing user %s from group %s...
 Removing user %s...
 Removing user `%s'.
 Selecting from %s %s (%s).
 Setting quota from %s.
 Specify only one name in this mode.
 The GID `%s' already exists.
 The GID `%s' doesn't exist.
 The GID `%s' is already in use.
 The UID `%s' already exists.
 The group `%s' already exists.
 The group `%s' doesn't exist.
 The home dir must be an absolute path.
 The user `%s' already exists.
 The user `%s' doesn't exist.
 The user `%s' is already a member of %s.
 There are users having `%s' as primary group!
 To avoid problems, the username should consist of a letter or
underscore followed by letters, digits, underscores, and dashes. For
compatibility with Samba machine accounts also $ is supported at the
end of the username
 Unknown argument `%s'.
 Unknown variable `%s' at %s:%s.
 User %s does already exist. Exiting...
 User `%s' not created.
 Warning: The home dir you specified already exists.
 You may not remove the user from his/her primary group.
 `%s' does not exist.
 `%s' doesn't exist.
 adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] user
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] user
   Add a system user

adduser --group [--gid ID] group
addgroup [--gid ID] group
   Add a user group

adduser --group --system [--gid ID] group
addgroup --system [--gid ID] group
   Add a system group

adduser user group
   Add an existing user to an existing group

Global configuration is in the file %s.
Other options are [--quiet] [--force-badname] [--help] [--version] [--conf
FILE].
 done.
 removing user and groups from the system. Version: y Project-Id-Version: adduser
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2004-03-06 14:47+0100
PO-Revision-Date: 2004-05-27 15:13-0300
Last-Translator: Andr� Lu�s Lopes <andreop@debian.org>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 %s n�o � um membro do grupo %s.
 %s: %s n�o existe.  Usando padr�es.
 --conf requer um argumento.
 --firstuid requer um argumento num�rico.
 --gecos requer um argumento.
 --gid requer um argumento num�rico.
 Op��es --group, --ingroup, e --gid s�o mutualmente exclusivas.
 --home requer um argumento.
 --ingroup requer um argumento.
 --lastuid requer um argumento num�rico.
 --shell requer um argumento.
 --uid requer um argumento num�rico.
 Acrescentando grupo %s (%s)...
 Acrescentando novo grupo %s (%s).
 Acrescentando novo usu�rio %s (%s) com grupo %s.
 Acrescentando usu�rio de sistema %s...
 Acrescentando usu�rio %s ao grupo %s...
 Acrescentando usu�rio %s...
 Permitindo o uso de nomes de usu�rios question�veis.
 Salvando arquivos a serem removidos...
 Copiando arquivos de %s
 N�o pude interpretar %s:%s.
 Criando diret�rio pessoal %s.
 Conclu�do.
 Entre um nome de grupo para acrescentar:  Entre um nome de grupo para remover:  Entre um nome de usu�rio para acrescentar:  Entre um nome de usu�rio para remover:  Configura��o global est� no arquivo %s.
 Grupo `%s' n�o criado.
 Diret�rio pessoal %s j� existe.
 Diret�rio pessoal %s j� existe.  N�o copiando de %s
 Eu preciso de um nome para acrescentar.
 Eu preciso de um nome para remover.
 Para que seja poss�vel utilizar as op��es --remove-home, --remove-all-files e --backup 
voc� precisa instalar o pacote `perl-modules'. Para faz�-lo, execute
apt-get install perl-modules
 Erro interno A informa��o est� correta? [s/N]  Procurando por arquivos para salvar/remover...
 Nenhum GID est� dispon�vel na faixa  Nenhum UID est� dispon�vel na faixa  Nenhum par UID/GID est� dispon�vel na faixa  N�o mais de dois nomes.
 Op��es n�o s�o permitidas depois de nomes.
 N�o criando diret�rio pessoal.
 Somente root pode acrescentar um usu�rio ou grupo ao sistema.
 Somente root pode remover um usu�rio ou grupo do sistema.
 Por favor, informe um nome de usu�rio que contenha uma letra em caixa 
baixa seguida de outras letras em caixa baixa ou n�meros. Use a op��o 
`--force-badname' para permitir underscores e caixa alta.
 Removendo diret�rio `%s'
 Removendo arquivos...
 Removendo grupo %s...
 Removendo grupo `%s'.
 Removendo usu�rio %s do grupo %s...
 Removendo usu�rio %s...
 Removendo usu�rio `%s'.
 Selecionando de%s %s (%s).
 Setando quota a partir de %s.
 Especifique somente um nome neste modo.
 O GID `%s' j� existe.
 O GID `%s' n�o existe.
 O GID `%s' j� est� em uso.
 O UID `%s' j� existe.
 O grupo `%s' j� existe.
 O grupo `%s' n�o existe.
 O diret�rio pessoal deve ser um caminho absoluto.
 O usu�rio `%s' j� existe.
 O usu�rio `%s' n�o existe.
 O usu�rio `%s' j� � um membro de %s.
 H� usu�rios com `%s' como grupo prim�rio!
 Para evitar problemas, o nome de usu�rio deve consistir de uma 
letra ou underscore seguidas de letras, d�gitos, underscores e pontos.
Para compatibilidade com contas de m�quinas Samba o uso do caracter $ 
tamb�m � suportado no final do nome do usu�rio
 Argumento `%s' desconhecido.
 Vari�vel `%s' desconhecida em %s:%s.
 O grupo %s j� existe. Saindo ...
 Usu�rio `%s' n�o criado.
 Alerta: o diret�rio pessoal que voc� especificou j� existe.
 Voc� n�o pode remover o usu�rio de seu grupo prim�rio.
 `%s' n�o existe.
 `%s' n�o existe.
 adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] user
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GRUPO | --gid ID] [--disabled-password]
[--disabled-login] usu�rio
   Adiciona um usu�rio de sistema

adduser --group [--gid ID] grupo
addgroup [--gid ID] grupo
   Adiciona um grupo de usu�rio

adduser --group --system [--gid ID] grupo
addgroup --system [--gid ID] grupo
   Adiciona um grupo de sistema

adduser usu�rio grupo
   Adiciona um usu�rio existente a um grupo exitente

Arquivo de configura��o global est� em %s.
Outras op��es s�o [--quiet] [--force-badname] [--help] [--version] [--conf
ARQUIVO].
 conclu�do.
 removendo usu�rio e grupos do sistema. Vers�o: s 