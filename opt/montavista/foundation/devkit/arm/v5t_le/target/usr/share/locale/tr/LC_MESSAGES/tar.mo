��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  �  ?3  5  �4    �5    v9  �   �=  A  >  X  Y@    �A  �   �B     nC  �   ~C     0D     MD  #   kD     �D  "   �D  X   �D  (   E  <   FE      �E     �E  $   �E     �E  #   �E     F  !   'F     IF  5   XF  "   �F     �F     �F     �F  4   �F  K   G  F   eG  /   �G     �G     �G  +   H  )   ?H     iH     �H  6   �H  #   �H  %   �H      !I     BI  .   `I     �I  0   �I  0   �I  1   J      AJ  /   bJ     �J  %   �J  !   �J  !   �J     K     K     !K     9K     SK  2   lK  8   �K  -   �K  "   L  4   )L  V   ^L  ;   �L  .   �L  F    M  =   gM     �M  0   �M  G   �M  "   8N  7   [N  !   �N      �N  -   �N  L   O  ,   QO  4   ~O     �O  '   �O     �O  <   P     MP     aP  $   |P     �P     �P  4   �P  3   Q  %   DQ  4   jQ  7   �Q     �Q  �   �Q  +   R     �R  %   �R     �R  "   �R     S     4S     OS      nS     �S     �S  &   �S     �S  "   �S  $   T     BT     bT     rT     �T      �T     �T  /   �T  >   	U  &   HU  4   oU     �U  L   �U     V     V  (   (V     QV  -   hV     �V     �V  !   �V     �V     W  4   %W     ZW      sW  %   �W  !  �W     �X     �X     Y  +   0Y     \Y     zY  )   �Y     �Y     �Y  �   �Y     �Z     �Z     �Z     �Z      [     5[     U[     i[  J   �[  2   �[     \  3   \  1   P\  -   �\     �\     �\  !   �\  	   �\     �\     ]     ,]     ;]     G]     \]  "   s]     �]      �]     �]     �]     �]     �]  1   ^  K   6^     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2001-11-14 01:14+0200
Last-Translator: Nilgün Belma Bugüner <nilgun@fide.org>
Language-Team: Turkish <gnu-tr-u12a@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
 
Aygıt bloklama:
  -b, --blocking-factor=SAYI     kayıt başına 512 baytlık SAYI blok
      --record-size=SAYI         512 nin katları olarak kayıt uzunluğu
  -i, --ignore-zeros             arşivdeki sıfırlı bloklar yoksayılır
  -B, --read-full-records        okunanlar olarak yeniden bloklanır
 
Aygıt seçimi ve denetimi:
  -f, --file=ARŞİV               ARŞİV dosyası ya da aygıtı kullanılır
      --force-local              ':' içerse bile arşiv dosyası yerel sayılır
      --rsh-command=KOMUT        rsh yerine KOMUT kullanılır
  -[0-7][lmh]                    aygıt ve yoğunluk belirtilir
  -M, --multi-volume             çok sayıda bölüm içeren arşivler
                                 oluşturulur/listelenir/çıkarılır
  -L, --tape-length=SAYI         SAYI x 1024 bayt yazıldıktan sonra bant
                                 değiştirilecek
  -F, --info-script=DOSYA        her bandın sonunda DOSYA çalıştırılır
                                 (-M uygulanır)
      --new-volume-script=DOSYA  -F DOSYA ile aynı
      --volno-file=DOSYA         DOSYA içindeki bölüm numarasını kullanır
                                 ya da günceller
 
Dosya özniteliklerinin sağlanması:
      --owner=İSİM             kullanıcı kimliği İSİM yapılır
      --group=İSİM             grup kimliği İSİM yapılır
      --mode=DEĞİŞİKLİKLER     dosya kipleri DEĞİŞİKLİKLERe ayarlanır
      --atime-preserve         dökümlenen dosyalarda erişim zamanı korunur
  -m, --modification-time      dosya değişiklik zamanı çıkarılmaz
      --same-owner             dosyalar kendi sahiplerinin ismine çıkarılır
      --no-same-owner          dosyalar adınıza çıkarılır
      --numeric-owner          kull/grup isimlerinde daima sayılar kullanılır
  -p, --same-permissions       erişim izinlerine bağlı kalarak çıkarılır
      --no-same-permissions    erişim izinlerine bakılmadan çıkarılır
      --preserve-permissions   -p ile aynı
  -s, --same-order             dosyaları arşivdeki sırasına göre çıkarır
      --preserve-order         -s ile aynı
      --preserve               -p ve -s birlikte kullanılmış gibi işlem yapar
 
Uzun seçeneklerdeki zorunlu argümanlar kısa seçenekler için de zorunludur.
İsteğe bağlı argümanlar içinde benzer koşul geçerlidir.
 
Ana işlem kipi:
  -t, --list              bir arşivin içeriği listelenir
  -x, --extract, --get    arşivden dosyalar çıkarılır
  -c, --create            yeni bir arşiv oluşturulur
  -d, --diff, --compare   arşiv ile dosya sistemi arasındaki farklar bulunur
  -r, --append            dosyalar arşivin sonuna eklenir
  -u, --update            sadece arşivdekilerden yeni olan dosyalar eklenir
  -A, --catenate          tar dosyaları bir arşive eklenir
      --concatenate       -A ile aynı
      --delete            arşivden dosya silinir (band!dan silinmez)
 
--suffix veya SIMPLE_BACKUP_SUFFIX ile belirtilmedikçe yedek soneki '~' dir.
Sürüm denetimi aşağıdaki değerler --backup veya VERSION_CONTROL ile
kullanılarak yapılabilir:

  t, numbered     numaralı yedekleme yapılır
  nil, existing   mevcudun yedekleme şekline bağlı kalınır
  never, simple   daima basit yedekleme yapılır
 
Kullanımı: %s [SEÇENEK]... [DOSYA]...

Örnekler:
  %s -cf arşiv.tar foo bar  # foo ve bar dosyalarından arşiv.tar oluşturulur.
  %s -tvf arşiv.tar         # arşiv.tar içindeki dosyalar listelenir.
  %s -xf arşiv.tar          # arşiv.tar'dan tüm dosyalar çıkarılır.
       --backup[=KONTROL]       sürüm KONTROLü yaparak silmeden önce yedekler
      --suffix=SONEK           SONEKi aşarak silmeden önce yedeğini alır
  bağı -> %s 
  n [isim]  Sonraki (ve peşisıra) bölüm(ler) için yeni dosya ismi
 q         Uygulama sonlandırılır
 !         Bir alt kabuk oluşturulur
 ?         Bu liste gösterilir
  bilinmeyen dosya türü %s
 %s bu bölümde devam etmiyor %s yanlış uzunluk (%s != %s + %s) %s: %s olanaksız %s: Kip %s olarak değiştirilemez %s: Dosya sahipliği, Kullanıcı-kimlik %lu ve Grup-kimlik %lu olarak değiştirilemez. %s: %s'e sembolik bağ oluşturulamıyor %s: Dosya çıkarılamaz -- diğer bölümden devam ediliyor %s: %s'e sabit bağ kurulamıyor %s: Kaldırılamaz %s: İsmi %s olarak değiştirilemez %s: %s e gidilemiyor %s: %s'e sembolik bağ kurulamıyor %s: %s siliniyor
 %s: Dizin adı değiştirilmişti %s: Dizin yeni %s: durumu çıkarılamadan dizin ismi değiştirildi %s: Dosya okunamadan kaldırıldı %s: geçersiz grup %s: Arşivde yok %s: Geçiliyor %s: Dizin oluşturulurken anlaşılamayan uyumsuzluk %s: '%c' dosya türü bilinmiyor, normal dosya olarak karşılaştırıldı %s: Bilinmeyen dosya türü '%c', normal dosya olarak çıkartılıyor %s: Bilinmeyen dosya türü; dosya yoksayıldı %s: Uyarı: %s olanaksız %s: Uyarı: %s e gidilemiyor %s: Bu dosyayı yedeklemek mümkün olmadı %s: geçersiz bölüm numarası içeriyor %s: kapı yoksayıldı %s: dosya okundu olarak imlendi %s: dosya farklı bir dosya sisteminde; dökümlenmedi %s: dosya arşivdir; dökümlenmedi %s: dosya değişmedi; dökümlenmedi %s: kuraldışı seçenek -- %c
 %s: geçersiz seçenek -- %c
 %s: seçenek `%c%s' argümansız kullanılır
 %s: `%s' seçeneği belirsiz
 %s: `%s' seçeneği bir argümanla kullanılır
 %s: `--%s' seçeneği argümansız kullanılır
 %s: `-W %s' seçeneği argümansız kullanılır
 %s: `-W %s' seçeneği belirsiz
 %s: seçenek bir argümanla kullanılır -- %c
 %s: soket yoksayıldı %s: zaman damgası %s %lu s gelecekte %s: `%c%s' seçeneği bilinmiyor
 %s: `--%s' seçeneği bilinmiyor
 ' (veri yolu) --Devamı bayt %s de--
 --Bozuk dosya isimleri--
 --Bölüm Başlığı--
 Arşiv base-256 değeri %s kapsamının dışında Arşiv %.*s içeriyor, sayısal %s değeri içermeliydi. Arşiv eski tip base-64 başlıklar içeriyor Arşiv etiketi %s ile eşleşmiyor Arşiv sekizlik değeri %.*s kapsamın %s dışında Arşiv sekizlik değeri %.*s kapsamın %s dışında; ikinin tümleyeni kabul ediliyor Arşiv imzalı base-64 dizge %s, %s kapsamının dışında Bandın başlangıcında, şimdilik çıkıyor Sembolik bağlar, sabit bağlar olarak çıkarılmaya çalışılıyor Sayısal %s değeri beklenirken başlıkta boşluklar bulundu Tampon alan ayrılamıyor Bloklama faktörü %d için bellek ayrılamıyor Arşiv dosyası geri alınamaz; -i olmaksızın okunamayabilir olabilir Çalışma dizini değiştirilemez --listed-incremental ile --newer birlikte kullanılamaz Uzak kabuk çalıştırılamıyor Çalışılan dizin kaydedilemez Sıkıştırılmış arşivler güncellenemez Çok sayıda bölüm içeren sıkıştırılmış arşivler kullanılamıyor Sıkıştırılmış arşivler doğrulanamaz Çok sayıda bölüm içeren arşivler doğrulanamaz stdG/stdÇ arşiv doğrulanamaz Sıkıştırma seçenekleri çelişiyor İçerikleri farklı Bir boş arşivin oluşturulması ister istemez reddediliyor Oluşturulan dizin: Tarih dosyası bulunamadı Arşivden başlık-olmayan siliniyor Aygıt numaraları farklı Aygıt numarası kapsamdışı Kullanıcı cevabı beklenirken dosya sonuna gelindi Hata çıkışı önceki hatalardan dolayı gecikti Standart çıktıya yazılırken hata Hata kurtarılabilir değil: şimdilik çıkılıyor Bitişik dosyaları normal dosyalar olarak çıkarıyor Dosya türleri farklı GNU `tar' birçok dosyayı birarada tek bir banda ya da bir disk arşivine
kaydeder ve istediğiniz dosyayı arşivden geri almanızı sağlar.
 GNU özellikleri ile uyumsuz arşiv biçemi Bozuk komut Negatif sekizlik başlık üretiliyor Grup-kimlikler farklı I-düğüm numarası kapsamdışı Bloklama çarpanı geçersiz Geçersiz aygıt numarası Geçersiz i-düğüm numarası Seçenekte verilen kip geçersiz Geçersiz sahip Kayıt uzunluğu geçersiz Kayıt ortamının uzunluğu geçersiz Geçersiz zaman damgası record_size için geçersiz değer -C 'den sonra dosya ismi verilmemiş Değişiklik zamanları farklı Kipleri farklı Birden fazla eşik tarihi Arşiv ismi verilmemiş Başka bölüm yok; çıkıyor.
 %s'e bağlı değil Eski seçenek `%c' bir argümanla kullanılır. `-%s' ve `-%s' seçeneklerinin ikisi de standart girdi istiyor `-Aru' seçenekleri `-f -' ile uyumsuz `-[0-7][lmh]' seçeneği *bu* tar ile desteklenmiyor Dosya sonu belirsiz #%d. bölümü %s için hazırlamak istiyorsanız return tuşuna basınız:  Okuma denetim yeri %d %s okunuyor
 Kayıt uzunluğu %d nin katları olmalı %s %s olarak değişti Gerisin geriye %s %s olarak değiştiriliyor
 %s %s olarak değiştiriliyor
 Arama yönü kapsamdışı Arama başlangıcı kapsamdışı Uzunlukları farklı Sonraki başlığa atlanıyor %s bilinmeyen tarih biçemi %s yerine kullanılıyor Sembolik bağlar farklı %s -> %s sembolik bağı kuruldu Bu bir tar arşivi gibi görünmüyor Bu bir serbest yazılımdır; HİÇBİR GARANTİSİ yoktur; hatta SATILABİLİRLİĞİ
veya HERHANGİ BİR AMACA UYGUNLUĞU için bile garanti verilmez.
GNU Genel Kamu Lisansı koşulları altında serbestçe dağıtabilirsiniz;
kopyalama koşulları için COPYING isimli dosyaya bakınız Bu bölüm sıralama dışı Zaman damgası kapsamdışı Çok hata var, çıkıyor Daha fazla bilgi için `%s --help' yazın.
 Kullanıcı-kimlikler farklı Arşivde beklenmeyen dosya sonu Bozuk isimlerde anlaşılmayan dosya sonu Düzeltme komutu %s bilinmiyor Bilinmeyen sistem hatası Kullanımı: %s [SEÇENEK]
Bir teybi uzak bağlantı üzerinden komut kabul ederek çalıştırır.

  --version   Sürümü basar ve çıkar.
  --help      Bu iletiyi basar ve çıkar.
 Geçerli argümanlar: Doğrulama  Görünür uzun isim hatası Görünür uzun isim hatası %s bölümü %s ile eşleşmiyor Bölüm numarası kapsamdışı UYARI: Arşiv eksik UYARI: Bölüm başlığı yok Uyarı: -I seçeneği desteklenmiyor; -j ya da -T mi yazacaktınız yoksa? Uyarı: -y seçeneği desteklenmiyor; -j olmasın? Yazma denetim yeri %d John Gilmore ve Jay Fenlason tarafından yazıldı. `-Acdtrux' seçenekleri birden fazla belirtilemez `-Acdtrux' seçeneklerinden biri belirtilmeli ` `%s' komutu başarısız %s argümanı `%s' için belirsiz blok %s:  blok %s: ** NUL bloku **
 blok %s: ** Dosya Sonu **
 blok uzunluğu alt süreç exec/tcp: Servis yok süreçlerarası kanal %s argümanı `%s' için geçersiz bellek tükendi rmtd: Tampon alan ayrılamıyor
 rmtd: %c komutu bozuk
 rmtd: Dosya sonu belirsiz
 stdG stdÇ %s değeri, %s dışında (%s..%s aralığının) %s değeri, %s (%s..%s aralığının) dışında; yerine %s kullanılıyor 