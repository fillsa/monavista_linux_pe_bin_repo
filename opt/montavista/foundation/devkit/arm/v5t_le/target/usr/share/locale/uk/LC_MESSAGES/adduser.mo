��    R      �  m   <      �      �  '        :  (   X     �  #   �  >   �           !  '   B     j  #   �     �     �  '   �     		     #	     B	  '   U	  !   }	     �	     �	     �	     �	     �	     
     *
     D
  (   a
     �
  "   �
  7   �
     �
       �   /     �  "   �  &     !   <  !   ^  *   �     �      �     �  1     6   5  �   l          3     F     \  "   r     �     �     �     �  $   �          6      S     t     �     �  '   �     �       )   6  .   `  �   �     l      �  '   �     �  4   �  8        S     i  	  ~     �  2   �     �  P  �  '     h   =  1   �  F   �  2     A   R  =   �  1   �  4     E   9  2     A   �  )   �  0     O   O  A   �  A   �  .   #  j   R  K   �  &   	  -   0  ?   ^     �  #   �  <   �  /     I   D  O   �  '   �  :     S   A  '   �  4   �     �  !   �  1      N   G   6   �   6   �   A   !  A   F!  K   �!  9   �!  l   "  j   {"  W  �"  1   >$  %   p$  (   �$  (   �$  E   �$  2   .%  2   a%     �%  7   �%  I   �%     5&     R&  2   m&     �&  #   �&  !   �&  s   '  -   w'  +   �'  5   �'  r   (  �  z(  *   -*  -   X*  +   �*  3   �*  i   �*  o   P+     �+     �+  &  �+     0  \   *0     �0         /      L              -   @      M              C               +      G      ,           =   A   0   (       "              !       ;      O      :   	             E      '   D   P       Q   $   ?   J              7   3       #          *      4   R                  K      <              N   2   %          8   .               H   I   F              6       9   5   )   >       B   &       1   
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
 removing user and groups from the system. Version: y Project-Id-Version: adduser_ua
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2004-03-06 14:47+0100
PO-Revision-Date: 2004-02-18 18:43+0200
Last-Translator: Eugeniy Meshcheryakov <eugen@univ.kiev.ua>
Language-Team: Ukrainian
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.0.2
 %s не є членом групи %s.
 %s: %s не існує.  Використовуються значення за замовчанням.
 Для --conf потрібен аргумент.
 Для --firstuid потрібен числовий аргумент.
 Для --gecos потрібен аргумент.
 Для --gid потрібен числовий аргумент.
 Опції --group, --ingroup та --gid несумісні.
 Для --home потрібен аргумент.
 Для --ingroup потрібен аргумент.
 Для --lastuid потрібен числовий аргумент.
 Для --shell потрібен аргумент.
 Для --uid потрібен числовий аргумент.
 Додається група %s (%s)...
 Додається нова група %s (%s).
 Додається новий користувач %s (%s) з групою %s.
 Додається системний користувач %s...
 Додається користувач %s до групи %s...
 Додається користувач %s...
 Дозволяється використання сумнівного імені користувача.
 Резервуються файли, що будуть видалені...
 Копіюються файли з %s
 Неможливо розібрати %s:%s.
 Створюється домашня директорія %s.
 Завершено.
 Введіть ім'я групи:  Введіть ім'я групи для видалення: Введіть ім'я користувача:  Введіть ім'я користувача для видалення:  Глобальні параметри знаходяться в файлі %s.
 Групу "%s" не створено.
 Домашня директорія %s вже існує.
 Домашня директорія %s вже існує.  Не копіюю з %s
 Потрібно ввести ім'я.
 Для видалення потрібно ім'я.
 Для того, щоб використовувати --remove-home, --remove-all-files та --backup,
вам потрібно встановити пакунок "perl-modules". Щоб зробити це, запустіть
apt-get install perl-modules
 Внутрішня помилка Чи вірна ця інформація? [y/N]  Пошук файлів для резервування/видалення...
 Немає вільного GID на проміжку  Немає вільного UID на проміжку  Немає вільної пари UID/GID на проміжку  Не можна задавати більше двох імен.
 Не можна вказувати параметри після імен.
 Не створюю домашню директорію.
 Тільки root може додавати користувачів або групи до системи.
 Тільки root може видалити користувача або групу із системи.
 Введіть ім'я користувача що складається із малої літери за якою
слідують малі літери та цифри.  Використовуйте `--force-badname',
щоб дозволити знаки підкреслювання та літери верхнього регістру.
 Видаляється директорія "%s"
 Видаляються файли...
 Видаляється група %s...
 Видаляється група "%s".
 Видаляється користувач %s із групи %s...
 Видаляється користувач %s...
 Видаляється користувач "%s".
 Вибираю з %s %s (%s).
 Встановлюються обмеження з %s.
 Вкажіть тільки одне ім'я в цьому режимі.
 GID "%s" вже існує.
 GID "%s" не існує.
 GID "%s" вже використовується.
 UID "%s" вже існує.
 Група "%s" вже існує.
 Група "%s" не існує.
 До домашньої директорії повинен бути заданий абсолютний шлях.
 Користувач "%s" вже існує.
 Користувач "%s" не існує.
 Користувач "%s" вже є членом %s.
 Існують користувачі, які використовують "%s" як первинну групу!
 Щоб уникнути проблем, ім'я користувача повинно складатися з літери
або знаку підкреслювання після який йдуть літери, цифри, знаки
підкреслювання та знаки мінус. Для сумісності з Samba в кінці імені
користувача також може знаходитись знак $
 Невідомий аргумент "%s".
 Невідома змінна `%s' в %s:%s.
 Користувач %s вже існує.
 Користувача "%s" не створено.
 Попередження: Вказана вами домашня директорія вже існує.
 Ви не можете видалити користувача з його/її первинної групи.
 "%s" не існує.
 "%s" не існує.
 adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] користувач
   Додати звичайного користувача

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] користувач
   Додати системного користувача

adduser --group [--gid ID] група
addgroup [--gid ID] група
   Додати групу користувачів

adduser --group --system [--gid ID] група
addgroup --system [--gid ID] група
   Додати системну групу

adduser користувач група
   Додати існуючого користувача до існуючої групи

Глобальні опції знаходяться у файлі %s.
Інші опції: [--quiet] [--force-badname] [--help] [--version] [--conf
FILE].
 завершено.
 видалення користувачів та груп із системи. Версія: y 