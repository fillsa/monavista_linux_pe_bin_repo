��    R      �  m   <      �      �  '        :  (   X     �  #   �  >   �           !  '   B     j  #   �     �     �  '   �     		     #	     B	  '   U	  !   }	     �	     �	     �	     �	     �	     
     *
     D
  (   a
     �
  "   �
  7   �
     �
       �   /     �  "   �  &     !   <  !   ^  *   �     �      �     �  1     6   5  �   l          3     F     \  "   r     �     �     �     �  $   �          6      S     t     �     �  '   �     �       )   6  .   `  �   �     l      �  '   �     �  4   �  8        S     i  	  ~     �  2   �     �  K  �  0     :   A     |  ,   �     �  '   �  A        R  !   q  +   �     �  '   �       !   #  ;   E  %   �  *   �     �  8   �  '   )     Q     o  %   �     �     �     �     �       7   .  #   f  (   �  =   �  !   �  &     �   :     �  .   	  4   8  -   m  -   �  8   �       :     )   U  S     S   �  �   '     �                  :   0   Y   #   �   %   �      �   '   �   #   !     ?!     [!      x!     �!     �!     �!  4   �!  "   ("  #   K"  3   o"  @   �"  
  �"     �#  #   	$  -   -$  '   [$  G   �$  D   �$     %     &%  h  <%     �(  ?   �(     �(         /      L              -   @      M              C               +      G      ,           =   A   0   (       "              !       ;      O      :   	             E      '   D   P       Q   $   ?   J              7   3       #          *      4   R                  K      <              N   2   %          8   .               H   I   F              6       9   5   )   >       B   &       1   
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
 removing user and groups from the system. Version: y Project-Id-Version: adduser 3.9
POT-Creation-Date: 2004-03-06 14:47+0100
PO-Revision-Date: 2004-04-01 18:46+0100
Last-Translator: Christian Perrier <bubulle@debian.org>
Language-Team: Debian-french <debian-l10n-french@lists.debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
 L'utilisateur %s n'est pas membre du groupe %s.
 %s�: %s n'existe pas. Utilisation des valeurs par d�faut.
 --conf n�cessite un argument.
 --firstuid n�cessite un argument num�rique.
 --gecos n�cessite un argument.
 --gid n�cessite un argument num�rique.
 Les options --group, --ingroup et --gid s'excluent mutuellement.
 --home n�cessite un argument.
 --ingroup n�cessite un argument.
 --lastuid n�cessite un argument num�rique.
 --shell n�cessite un argument.
 --uid n�cessite un argument num�rique.
 Ajout du groupe %s (%s)...
 Ajout du nouveau groupe %s (%s).
 Ajout du nouvel utilisateur %s (%s) avec le groupe ��%s��.
 Ajout de l'utilisateur syst�me %s...
 Ajout de l'utilisateur %s au groupe %s...
 Ajout de l'utilisateur %s...
 Autorisation d'utiliser des identifiants non conformes.
 Sauvegarde des fichiers � supprimer...
 Copie des fichiers depuis %s
 Impossible d'analyser %s�: %s.
 Cr�ation du r�pertoire personnel %s.
 Fait.
 Nom du groupe � ajouter�:  Nom du groupe � supprimer�:  Nom d'utilisateur � ajouter�:  Utilisateur � supprimer�:  La configuration globale se trouve dans le fichier %s.
 Le groupe ��%s�� n'a pas �t� cr��.
 Le r�pertoire personnel %s existe d�j�.
 Le r�pertoire personnel %s existe d�j�. Pas de recopie de %s
 Un nom � ajouter est n�cessaire.
 Un nom � supprimer doit �tre indiqu�.
 Pour pouvoir utiliser --remove-home, --remove-all-files et
--backup features, vous devez installer le paquet ��perl-modules��.
Pour cela, utilisez la commande�:
 apt-get install perl-modules
 Erreur interne Ces informations sont-elles correctes�? [o/N]  Recherche de fichiers � sauvegarder ou supprimer...
 Aucun GID n'est disponible dans l'intervalle  Aucun UID n'est disponible dans l'intervalle  Aucune paire UID/GID n'est disponible dans l'intervalle  Pas plus de deux noms.
 L'utilisation d'options n'est pas permise apr�s les noms.
 Pas de cr�ation de r�pertoire personnel.
 Seul le super-utilisateur peut ajouter un utilisateur ou un groupe
sur le syst�me.
 Seul le super-utilisateur peut ajouter un utilisateur ou un groupe
sur le syst�me.
 Veuillez choisir un nom compos� d'une lettre minuscule suivie
de lettres minusucules ou de chiffres. L'option ��--force-badname��
permet d'utiliser le caract�re ��_�� et des majuscules.
 Suppression du r�pertoire %s
 Suppression des fichiers...
 Suppression du groupe %s...
 Suppression du groupe ��%s �.
 Suppression de l'utilisateur %s du groupe %s...
 Suppression de l'utilisateur %s...
 Suppression de l'utilisateur ��%s��.
 Choix � partir de %s %s (%s).
 Mise en place du quota � partir de %s.
 N'indiquez qu'un nom dans ce mode.
 Le GID ��%s�� existe d�j�.
 Le GID ��%s�� n'existe pas.
 Le GID ��%s�� est d�j� utilis�.
 L'UID ��%s�� existe d�j�.
 Le groupe ��%s�� existe d�j�.
 Le groupe ��%s�� n'existe pas.
 Le r�pertoire personnel doit �tre un chemin absolu.
 L'utilisateur ��%s�� existe d�j�.
 L'utilisateur ��%s�� n'existe pas.
 L'utilisateur ��%s�� est d�j� membre du groupe %s.
 Il existe des utilisateurs avec ��%s�� comme groupe principal�!
 Pour �viter tout probl�me, le nom doit commencer par une lettre
ou un ��_�� suivis de lettres, chiffres ou des caract�res ��_��
ou ��-��. Pour rester compatible avec les comptes de machines
pour Samba, le caract�re ��$�� est �galement accept� comme
caract�re final.
 Argument ��%s�� inconnu.
 Variable ��%s�� inconnue en %s:%s.
 L'utilisateur ��%s�� existe d�j�. Abandon...
 L'utilisateur ��%s�� n'a pas �t� cr��.
 Attention�: le r�pertoire personnel que vous avez indiqu� existe d�j�.
 Vous ne pouvez pas supprimer l'utilisateur de son groupe principal.
 ��%s�� n'existe pas.
 ��%s�� n'existe pas.
 adduser [--home REP] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUPE | --gid ID]
[--disabled-password] [--disabled-login] utilisateur
   Ajout d'un utilisateur ordinaire

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUPE | --gid ID] [--disabled-password]
[--disabled-login] utilisateur
   Ajout d'un utilisateur syst�me

adduser --group [--gid ID] groupe
addgroup [--gid ID] groupe
   Ajout d'un groupe

adduser --group --system [--gid ID] groupe
addgroup --system [--gid ID] groupe
   Ajout d'un groupe syst�me

adduser utilisateur groupe
   Ajout d'un utilisateur existant dans un groupe existant

La configuration globale se trouve dans le fichier %s.
Autres options : [--quiet] [--force-badname] [--help] [--version] [--conf
FICHIER].
 fait.
 suppression d'utilisateurs et groupes sur le syst�me. Version�: o 