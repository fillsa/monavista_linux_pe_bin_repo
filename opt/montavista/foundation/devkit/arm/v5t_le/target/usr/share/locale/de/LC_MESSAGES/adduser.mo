��    R      �  m   <      �      �  '        :  (   X     �  #   �  >   �           !  '   B     j  #   �     �     �  '   �     		     #	     B	  '   U	  !   }	     �	     �	     �	     �	     �	     
     *
     D
  (   a
     �
  "   �
  7   �
     �
       �   /     �  "   �  &     !   <  !   ^  *   �     �      �     �  1     6   5  �   l          3     F     \  "   r     �     �     �     �  $   �          6      S     t     �     �  '   �     �       )   6  .   `  �   �     l      �  '   �     �  4   �  8        S     i  	  ~     �  2   �     �  #  �  '   �  /        @  .   _     �  )   �  J   �     #  !   B  -   d     �     �     �     �  .   	     8  '   V     ~  8   �  %   �     �          ,     J  1   S  0   �  2   �  1   �  /     "   K  &   n  C   �  )   �  4     �   8       &     %   ;  &   a  #   �  +   �  +   �  '        ,  ;   L  8   �  �   �     �     �     �     �  &   �            9      R      m   .   �       �      �   '   �       !  #   :!  !   ^!  >   �!  %   �!  #   �!  :   	"  5   D"  �   z"     w#  #   �#  +   �#  $   �#  C   $  D   L$     �$     �$  k  �$     +(  2   4(     g(         /      L              -   @      M              C               +      G      ,           =   A   0   (       "              !       ;      O      :   	             E      '   D   P       Q   $   ?   J              7   3       #          *      4   R                  K      <              N   2   %          8   .               H   I   F              6       9   5   )   >       B   &       1   
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
 removing user and groups from the system. Version: y Project-Id-Version: adduser 3.13
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2004-03-06 14:47+0100
PO-Revision-Date: 2000-04-24 18:00+0200E
Last-Translator: Roland Bauerschmidt <roland@copyleft.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
 %s ist kein Mitglied in der Gruppe %s.
 %s: %s existiert nicht. Benutze Standardwerte.
 --conf ben�tigt ein Argument.
 --firstuid ben�tigt ein numerisches Argument.
 --gecos ben�tigt ein Argument.
 --gid ben�tigt ein numerisches Argument.
 Die Optionen --group, --ingroup und --gid schlie�en sich gegenseitig aus.
 --home ben�tigt ein Argument.
 --ingroup ben�tigt ein Argument.
 --lastuid ben�tigt ein numerisches Argument.
 --shell ben�tigt ein Argument.
 --uid ben�tigt ein Argument.
 Lege Gruppe %s (%s) an...
 Lege neue Gruppe %s (%s) an.
 Lege neuen Benutzer %s (%s) mit Gruppe %s an.
 Lege Systembenutzer %s an...
 F�ge Benutzer %s in Gruppe %s hinzu...
 Lege Benutzer %s an...
 Gestatte Verwendung eines zweifelhaften Benutzernamens.
 Sichere die zu l�schenden Dateien...
 Kopiere Dateien aus %s
 Konnte %s:%s nicht auswerten.
 Erstelle Homeverzeichnis %s.
 Fertig.
 Geben Sie den hinzu zuf�genden Gruppennamen ein:  Geben Sie den zu entfernenden Gruppennamen ein:  Geben Sie den hinzu zuf�genden Benutzernamen ein:  Geben Sie den zu entfernenden Benutzernamen ein:  Die globale Konfiguration ist in der Datei %s.
 Gruppe �%s� wurde nicht angelegt.
 Homeverzeichnis %s existiert bereits.
 Homeverzeichnis %s existiert bereits. Kopiere keine Dateien aus %s
 Ich ben�tige einen Namen zum Hinzuf�gen.
 Ich ben�tige einen Namen, der entfernt werden soll.
 Um die --remove-home, --remove-all-files, oder --backup Option nutzen zu
k�nnen, m�ssen Sie das perl-modules Paket installieren. Um dies zu tun,
f�hren sie den Befehl �apt-get install perl-modules� aus.
 Interner Fehler Sind die Informationen korrekt? [j/N]  Suche Dateien zum Sichern/L�schen...
 Es ist keine GID verf�gbar im Bereich  Keine UID ist verf�gbar im Bereich  Kein UID/GID Paar ist verf�gbar im Bereich  Es sind nicht mehr als zwei Namen erlaubt.
 Keine Optionen nach dem Namen erlaubt.
 Erstelle kein Homeverzeichnis.
 Nur root darf Benutzer oder Gruppen zum System hinzuf�gen.
 Nur root darf Benutzer oder Gruppen vom System l�schen.
 Bitte geben Sie einen Benutzernamen ein bestehend aus einem Kleinbuchstaben
gefolgt von Kleinbuchstaben und Ziffern.  Benutzen Sie die �--force-badname�
Option um auch Unterstrich und Gro�buchstaben eingeben zu d�rfen.
 Entferne Verzeichnis �%s�
 L�sche Dateien...
 Entferne Gruppe %s...
 Entferne Gruppe �%s�.
 Entferne Benutzer %s aus Gruppe %s...
 Entferne Benutzer %s...
 Entferne Benutzer �%s�.
 W�hle aus von %s %s (%s).
 Setze Quota vom %s.
 Geben Sie nur einen Namen in diesem Modus an.
 Die GID �%s� existiert bereits.
 Die GID �%s� existiert nicht.
 Die GID �%s� ist bereits in Benutzung.
 Die UID �%s� existiert bereits.
 Die Gruppe �%s� existiert bereits.
 Die Gruppe �%s� existiert nicht.
 Das Homeverzeichnis muss eine absolute Verzeichnisangabe ein.
 Der Benutzer �%s� existiert bereits.
 Der Benutzer �%s� existiert nicht.
 Der Benutzer �%s� ist bereits ein Mitglied der Gruppe %s.
 Es gibt Benutzer, die �%s� als prim�re Gruppe haben!
 Um Probleme zu vermeiden sollte der Benutzername bestehen aus Buchstabe
oder Unterstrich gefolgt von Buchstaben, Ziffern, Unter- und Bindestrichen.
Zur Kompatibilit�t mit Konten auf Samba-Rechnern wird au�erdem $ am Ende des
Benutzernamens unterst�tzt
 Unbekanntes Argument �%s�.
 Unbekannte Variable �%s� in %s:%s.
 Benutzer �%s� existiert bereits. Beende...
 Benutzer �%s� wurde nicht angelegt.
 Warnung: Das von Ihnen angebene Homeverzeichnis existiert bereits.
 Sie k�nnen den Benutzer nicht aus seiner prim�ren Gruppe entfernen.
 �%s� existiert nicht.
 �%s� existiert nicht.
 adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] user
   F�gt einen normalen Benutzer hinzu

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] user
   F�gt einen System-Benutzer hinzu

adduser --group [--gid ID] group
addgroup [--gid ID] group
   F�gt eine Benutzergruppe hinzu

adduser --group --system [--gid ID] group
addgroup --system [--gid ID] group
   F�gt eine Systemgruppe hinzu

adduser user group
   F�gt einen exitierenden Benutzer einer existierenden Gruppe hinzu

Die globale Konfiguration findet sich in der Datei %s.
Andere Optionen sind [--quiet] [--force-badname] [--help] [--version] [--conf
FILE].
 Fertig.
 entfernt Benutzer und Gruppen vom System. Version: j 