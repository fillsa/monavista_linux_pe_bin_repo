��    �      �  �   �      �  -  �  �  �  �  P  �   �  -  }  7  �    �  �   �     �  �   �     (  "   ?  $   b     �     �  /   �     �  ;        >     Y     k     �     �     �     �     �  :   �  "   2     U     g     �  2   �  1   �  4   �  #   '      K      b   "   �   "   �      �      �   1   �   #   )!  !   M!     o!     �!  ,   �!     �!  %   �!  ,   "  -   A"      o"  &   �"     �"  (   �"     �"     #     3#     5#     <#     V#     n#  )   �#  5   �#  ,   �#     $  +   .$  F   Z$  3   �$  "   �$  5   �$  0   .%     _%  -   |%  >   �%     �%  0   	&     :&     V&  !   t&  +   �&  !   �&  #   �&  "   '     +'     K'  ,   ['     �'     �'      �'     �'     �'  !   (  '   $(  #   L(  %   p(  ,   �(     �(  {   �(  2   Q)     �)  !   �)     �)     �)     �)     �)     
*     *     <*     J*     ^*     r*     �*     �*     �*     �*     �*     �*     +     (+  %   9+  0   _+  +   �+  1   �+     �+  *   ,     /,     B,  %   N,     t,     �,     �,     �,     �,     �,     �,  *   
-     5-     E-  %   X-  �   ~-     6.     U.     m.  &   �.     �.     �.     �.     �.     /  �   '/     �/     �/     �/     �/     	0     %0     <0     [0  D   u0  >   �0     �0  )   1  3   71  .   k1     �1     �1     �1  
   �1     �1     �1  
   2     2     -2     M2     b2     }2  #   �2     �2     �2     �2     �2     �2  0   3  �  ?3  B  �4  �  6  �  �8  �   �<  F  B=  O  �?    �@  �   �A     �B  �   �B     ,C  $   IC  +   nC     �C  $   �C  7   �C  %   
D  F   0D  '   wD     �D  #   �D     �D     �D     E      +E     LE  <   fE  (   �E     �E  !   �E     F  ;   F  A   QF  A   �F  +   �F     G  )    G  )   JG  '   tG     �G  %   �G  ;   �G  &   H  %   8H     ^H     wH  3   �H     �H  +   �H  3   I  4   @I     uI  ,   �I     �I  .   �I      �I       J     AJ     CJ     JJ     gJ     J  '   �J  7   �J  /   �J  %   "K  )   HK  B   rK  E   �K     �K  /   L  3   IL  $   }L  7   �L  K   �L  !   &M  =   HM  $   �M  %   �M  &   �M  8   �M  &   1N  ,   XN  +   �N     �N     �N  &   �N     �N     O  !   *O     LO     aO  #   ~O  ,   �O  )   �O  (   �O  3   "P     VP  s   hP  A   �P     Q     5Q     RQ     ^Q     zQ     �Q     �Q  $   �Q     �Q     �Q     R     2R     IR  $   aR     �R     �R     �R     �R     �R     �R  &   S  /   8S  *   hS  0   �S     �S  4   �S     T     #T  &   /T     VT      rT     �T     �T      �T     �T     �T  5   U     KU     [U     lU  �   �U     AV     [V      vV  1   �V     �V     �V  "   �V  $   W     :W  �   YW     �W     X      "X     CX      ^X     X  !   �X  #   �X  E   �X  =    Y     ^Y  +   tY  ;   �Y  6   �Y     Z     Z     )Z  	   CZ     MZ     hZ     �Z     �Z      �Z     �Z     �Z     �Z  +   �Z      )[     J[     ^[     d[  &   k[  4   �[     �           H   D      "       )   �   4          6   7   �      �   e       x       b       O       J       K       *   _              C   �   �   ;   W       \   E   �   �       !   z      <              V       �   �             `       �   �   k   P   {   X   I               �   %   j   �   �   �       N   }   L   �   �   m      c   ^              w   �           d   �   @               A       9   �       5   Z   8   '       �              �   1   �      �   �   �   M       &           t   �       T   �   >   �   Q   R   =   l   �   3       �           �          F   �   �   �   #   $   (   �      |       �   :   [       �       �       ~   a   �   v                                .   G      i   
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
PO-Revision-Date: 2002-07-24 22:02GMT+0700
Last-Translator: Tedi Heriyanto <tedi_h@gmx.net>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
 
Device blok:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes setiap record
      --record-size=SIZE         SIZE bytes setiap record, kelipatan dari 512
  -i, --ignore-zeros             abaikan zeroed blocks dalam archive (berarti EOF)
  -B, --read-full-records        block ulang pada saat baca (untuk 4.2BSD pipes)
 
Pemilihan dan penggantian device:
  -f, --file=ARCHIVE             gunakan file atau device ARCHIVE
      --force-local              file archive local, walaupun memiliki colon
      --rsh-command=COMMAND      gunakan COMMAND remote selain rsh
  -[0-7][lmh]                    menentukan drive dan density
  -M, --multi-volume             buat/lihat/extract archive multi-volume
  -L, --tape-length=NUM          ganti tape setelah menulis NUM x 1024 bytes
  -F, --info-script=FILE         jalankan script pada akhir setiap tape (berlaku untuk -M)
      --new-volume-script=FILE   sama seperti -F FILE
      --volno-file=FILE          gunakan/update volume number dalam FILE
 
Menangani atribut file:
      --owner=NAME             paksa NAME sebagai owner file yang ditambahkan
      --group=NAME             paksa NAME sebagai group file yang ditambahkan
      --mode=CHANGES           paksa modus (symbolic) CHANGES untuk file yang ditambahkan
      --atime-preserve         tidak mengganti access time pada dumped file
  -m, --modification-time      tidak extract modification time dari file
      --same-owner             mencoba extract file dengan ownership yang sama
      --no-same-owner             extract file sebagai anda sendiri
      --numeric-owner          selalu gunakan angka untuk nama user/group
  -p, --same-permissions       extract semua informasi protection
    --no-same-permissions       jangan bongkar informasi permisi
      --preserve-permissions   sama seperti -p
  -s, --same-order             sort name yang akan diextract sesuai dengan archive
      --preserve-order         sama seperti -s
      --preserve               sama seperti -p dan -s
 
Bila long option menunjukkan argumen sebagai mandatory, maka opsi tersebut
adalah mandatory juga untuk short option. Hal yang sama berlaku untuk
optional argumen.
 
Modus operasi utama:
  -t, --list              melihat isi archive
  -x, --extract, --get    mengekstrak file archive
  -c, --create            membuat archive baru
  -d, --diff, --compare   mencari beda antara archive dan file system
  -r, --append            menambahkan file pada bagian akhir archive
  -u, --update            hanya menambahkan file yang lebih baru daripada yang ada di archive
  -A, --catenate          append file tar ke dalam archive
      --concatenate       sama seperti -A
      --delete            menghapus dari archive (tidak berlaku untuk mag tapes!)
 
Akhiran dari backup adalah `~', kecuali bila diset dengan --suffix atau SIMPLE_BACKUP_SUFFIX.
Version control dapat diset dengan -backup atau VERSION_CONTROL, nilainya:

  t, numbered     gunakan numbered backups
  nil, existing   beri nomor bila nomor backup telah ada, simple sebaliknya
  never, simple   selalu buat simple backups
 
Penggunaan: %s [OPTION]... [FILE]...

Contoh:
  %s -cf archive.tar foo bar  # Buat archive.tar dari file foo dan bar.
  %s -tvf archive.tar         # Tampilkan semua file dalam archive.tar secara rinci.
  %s -xf archive.tar          # Bongkar semua file dari archive.tar.
       --backup[=CONTROL]       backup sebelum menghapus, pilih version control
      --suffix=SUFFIX          backup sebelum menghapus, ganti akhiran SUFFIX
  link ke %s
  n [name]   Memberi nama baru pada file untuk volume selanjutnya
 q          Batalkan tar
 !          Spawn subshell
 ?          Cetak keterangn ini
  tipe file tidak dikenal %s
 %s tidak dilanjutkan pada volume ini %s adalah ukuran yang salah (%s != %s + %s) %s: Tidak dapat %s %s: Tidak dapat mengganti mode ke %s %s: Tidak dapat merubah kepemilikan ke uid %lu, gid %lu %s: Tidak dapat membuat symlink ke %s %s: Tidak dapat mengekstrak -- file adalah kelanjutan dari volume lain %s: Tidak dapat membuat hard link ke %s %s: Tidak dapat menghapus %s:Tidak dapat mengganti nama ke %s %s: Tidak dapat mencari ke %s %s: Tidak dapat symlink ke %s %s: Menghapus %s
 %s: Direktori telah diganti nama %s: Direktori adalah baru %s: Direktori diganti nama sebelum statusnya dapat diperoleh %s: File dihapus sebelum kita membacanya %s: grup tidak valid %s: Tidak ditemukan dalam archive %s: Menghilangkan %s: Inkonsistensi tidak diharapkan ketika membuat direktori %s:File type '%c' tidak dikenal, lakukan diff sebagai file normal %s: Tipe file tidak dikenal '%c', diekstraksi sebagai file normal %s: Tipe file tidak dikenal; file diabaikan %s: Peringatan: Tidak dapat %s %s: Peringatan: Tidak dapat mencari ke %s %s: Tidak dapat melakukan backup file ini %s: berisi nomor volum yang tidak valid %s: door diabaikan %s: file berubah saat kita membacanya %s: file berada pada filesistem yang berbeda; tidak di-dump %s: file adalah archive; tidak di-dump %s: file tidak berubah; tidak di-dump %s: option ilegal -- %c
 %s: option tidak valid -- %c
 %s: option `%c%s' tidak membolehkan sebuah argumen
 %s: option `%s' rancu
 %s: option `%s' membutuhkan sebuah argumen
 %s: option `--%s' tidak membolehkan sebuah argumen
 %s: option `-W %s' tidak membolehkan sebuah argumen
 %s: option `-W %s' rancu
 %s: option membutuhkan sebuah argumen -- %c
 %s: soket diabaikan %s: time stamp %s adalah %lu dalam masa datang %s: option tidak dikenal `%c%s'
 %s: option tidak dikenal `--%s'
 ' (pipe) --Diteruskan pada byte %s--
 --Mangled file names--
 --Volume Header--
 Nilai arsip base-256 di luar batasan %s Arsip berisikan %.*s ketika nilai numerik %s diharapkan Arsip berisikan header base-64 yang kadaluarsas Label archive tidak cocok dengan '%s' Nilai oktal arsip %.*s di luar batasan %s Nilai oktal arsip %.*s di luar batasan %s; asumsikan komplemen dua Arsip yang ditandatangahi dengan string base-64 %s di luar batasan %s Berada pada awal tape, keluar Mencoba extract symbolic link sebagai hard link Blank dalam header saat diharapkan nilai %s numerik Tidak dapat mengalokasi buffer space Tidak dapat mengalokasi memori untuk faktor blocking %d Tidak dapat backspace file archives; kemungkinan tidak bisa dibaca tanpa -i Tidak bisa pindah direktori kerja Tidak dapat menggabungkan --listed-incremental dengan --newer Tidak dapat menjalankan remote shell Tidak dapat menyimpan direktori kerja Tidak dapat update compressed archives Tidak dapat menggunakan multi-volume compressed archives Tidak dapat verify compressed archives Tidak dapat verifikasi multi-volume archives Tidak dapat verifikasi stdin/stdout archive Opsi kompresi konflik Isi berbeda Tidak bisa membuat archive yang kosong Membuat direktori: Tanggal file tidak ditemukan Menghapus non-header dari archive Nomor device berbeda Nomor device di luar batasan EOF pada saat user reply diharapkan Kesalahan exit ditunda dari error sebelumnya Kesalahan dalam menulis ke output standar Kesalahan tidak dapat diperbaiki, keluar Sedang extract contiguous file sebagai regular file Tipe file berbeda GNU `tar' menyimpan sejumlah file dalam sebuah tape atau disk archive, dan
dapat restore sebuah file dari archive.
 Feature GNU dibutuhkan untuk format archive yang tidak kompatibel Command tidak terpakai Membuat header oktal negatif Gid berbeda Nomor inode di luar batasan Faktor bloking tidak valid Nomor device tidak valid Nomor inode tidak valid Mode tidak tepat diberikan pada opsi Pemilik tidak valid Ukuran record tidak valid Panjang tape tidak valid Time stamp tidak valid Nilai record_size salah File name tidak ditemukan setelah -C Mod time berbeda Mode berbeda Lebih dari satu treshold date Tidak diberikan nama archive Tidak ada new volume; keluar.
 Tidak dilink ke %s Opsi 'lama' `%c' membutuhkan argument. Opsi `-%s' dan `-%s' membutuhkan standard input Opsi '-Aru' tidak kompatibel dengan `-f -' Opsi `-[0-7][lmh]' tidak didukung oleh tar *ini* Akhir file prematur Mempersiapkan volume #%d untuk %s dan tekan return:  Membaca checkpoint %d Membaca %s
 Jumlah record harus kelipatan dari %d. Berganti nama dari %s ke %s Mengganti nama %s kembali ke %s
 Mengganti nama %s ke %s
 Arah pencarian di luar batasan Offset pencarian di luar batasan Ukuran berbeda Skip ke header berikutnya Menggantikan %s untuk format tanggal tidak dikenal %s Symlink berbeda Symlink %s ke %s Sepertinya bukan tar archive This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute it under the terms of the GNU General Public License;
see the file named COPYING for details. Volume ini di luar urutan Time stamp di luar batasan Terlalu banyak kesalahan, keluar Ketik `%s --help' untuk informasi lebih lengkap.
 Uid berbeda Unexpected EOF dalam archive Unexpected EOF dalam mangled names Perintah demangling %s tidak dikenal Kesalahan sistem tidak dikenal Penggunaan: %s [OPTION]
Manipulasi sebuah tape drive, menerima perintah dari proses remote.

  --version  Tampilkan info versi.
  --help  Tampilkan bantuan ini.
 Argumen yang valid adalah: Verifikasi  Kesalahan visible long file name Kesalahan visible longname Volume %s tidak sesuai dengan %s Nomor volum overflow PERINGATAN: Archive tidak lengkap PERINGATAN: Tidak ada volume header Peringatan: option -l tidak didukung; mungkin maksud anda -j atau -T? Peringatan: option -y tidak didukung; mungkin maksud anda -j? Menulis checkpoint %d Ditulis oleh John Gilmore dan Jay Fenlason. Anda tidak bisa menjalankan lebih dari satu opsi `-Acdtrux' Anda harus menggunakan salah satu dari opsi `-Acdtrux' ` Perintah `%s' gagal argumen rancu %s untuk %s blok %s:  blok %s: ** Block NULs **
 blok %s: ** Akhir file **
 ukuran blok proses anak exec/tcp: Service tidak tersedia saluran interproses argumen tidak valid %s untuk %s Memory habis rmtd: Tidak dapat mengalokasi buffer space
 rmtd: Command tidak terpakai %c
 rmtd: EOF prematur
 stdin stdout nilai %s dari %s di luar daerah %s..%s nilai %s dari %s di luar daerah %s..%s; mengganti %s 