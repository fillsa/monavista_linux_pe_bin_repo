��    q      �  �   ,      �	  -  �	  �  �
  �   @  -  �  7  �     7  �   D  "   �  $         %     6  #   O  "   s     �     �     �  ,   �       %   4  ,   Z  -   �      �  &   �     �          =     ?     Y     q  "   �  5   �  0   �       0   +     \  !   x  +   �  !   �  #   �  "        /     O  ,   _     �      �     �     �  !   �  '     ,   <     i  {   {  2   �     *     :     F     `     x     �     �     �     �     �               1     G     `  %   q  0   �  +   �  1   �     &  *   <     g     z  %   �     �     �     �     �     �          '  %   :     `       &   �     �     �     �          $     9     N     V     n     �     �     �  3   �  .        5  
   7     B     a     ~  #   �     �     �     �     �  N  �  V  M  �  �   �   1#  Y  �#  �  &     �'  �   �'     �(  $   �(     �(     �(  '   �(  4   )  -   M)     {)     �)  0   �)     �)  )   �)  0   )*  1   Z*     �*  *   �*     �*     �*     +     +     0+     K+  3   _+  -   �+  ?   �+  $   ,  <   &,  2   c,  $   �,  3   �,  "   �,  '   -  5   :-  +   p-     �-  '   �-     �-      �-     .     ,.  ,   K.  2   x.  )   �.     �.  x   �.  8   f/     �/     �/     �/     �/     �/     0     10  %   F0     l0     �0     �0     �0     �0  %   �0     1  ,   .1  3   [1  #   �1  ?   �1     �1  9   2     I2  
   e2  $   p2     �2  *   �2  '   �2     �2     3     13  "   O3     r3  $   �3  (   �3  A   �3     4  #   -4  ,   Q4  3   ~4     �4     �4  	   �4     �4     5     '5  "   G5     j5  2   �5  +   �5     �5  	   �5     �5     6     (6  +   D6     p6  "   �6     �6     �6            -   $           <   @   V   `      C      L   /              n       1           _   #   g   U       8       B   [   Z       S   m   0   d      Q      P   7           4                    c          (   2       i      e   b             l           I   E   3   ^   A   k   +   o                 T   ;      X       h   D                            ,   )   9       !   J   \   O       6         G           a   5       =   :   Y                ]       q          .      f   >   "   W   R   N   j   &   F      p   '   M   %   K               
       ?      H   *   	    
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
  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
 %s is not continued on this volume %s is the wrong size (%s != %s + %s) %s: Deleting %s
 %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file %s: file changed as we read it %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' --Continued at byte %s--
 --Mangled file names--
 --Volume Header--
 At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Blanks in header where numeric %s value expected Cannot allocate buffer space Cannot combine --listed-incremental with --newer Cannot execute remote shell Cannot update compressed archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Conflicting compression options Contents differ Cowardly refusing to create an empty archive Creating directory: Deleting non-header from archive Device number differs Device number out of range EOF where user reply was expected Error exit delayed from previous errors Extracting contiguous files as regular files File type differs GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Garbage command Gid differs Inode number out of range Invalid blocking factor Invalid mode given on option Invalid record size Invalid tape length Invalid value for record_size Missing file name after -C Mod time differs Mode differs More than one threshold date No archive name given No new volume; exiting.
 Not linked to %s Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size must be a multiple of %d. Renamed %s to %s Seek direction out of range Seek offset out of range Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This volume is out of sequence Too many errors, quitting Try `%s --help' for more information.
 Uid differs Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown system error Valid arguments are: Verify  Visible long name error Visible longname error WARNING: Archive is incomplete WARNING: No volume header Write checkpoint %d You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options ` block %s:  block %s: ** Block of NULs **
 block %s: ** End of File **
 exec/tcp: Service not available rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 stdin stdout Project-Id-Version: tar 1.13.7
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 1999-08-23 09:31+08:00
Last-Translator: Const Kaplinsky <const@ce.cctpu.edu.ru>
Language-Team: Russian <ru@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Transfer-Encoding: 8bit
 
������ � �������:
  -b, --blocking-factor=�����    ����� x 512 ���� ��� ����� ������
      --record-size=������       ������ ������ � ������, ������� 512
  -i, --ignore-zeros             ������������ ������ (EOF) �����
  -B, --read-full-records        �������� ����� � ����� ��� ������
                                  (��� ������� 4.2BSD)
 
����� ���������:
  -f, --file=�����               ������������ ���� ��� ���������� �����
      --force-local              ������� ����� ���������, ���� ���� ���� `:'
      --rsh-command=�������      ������������ ������� ��� ��������� ������
  -[0-7][lmh]                    ������� ���������� � ���������
  -M, --multi-volume             �������� � ������������ ��������
  -L, --tape-length=�����        ������� ����� ����� ������ ����� x 1024 ����
  -F, --info-script=����         ��������� ��������� ���� ����� ������ �����
      --new-volume-script=����   �� ��, ��� � -F ����
      --volno-file=����          ������/������ ����� ���� ��/� ����(�)
 
���� ��� �������� ����� ����� ��������, �� �� ����� ����� � ���
�������������� ��������� �����. ���������� � ��������������� �����������.
 
�������� ��������:
  -t, --list              ������� ������ ����������� ������
  -x, --extract, --get    ������� ����� �� ������
  -c, --create            ������� ����� �����
  -d, --diff, --compare   ����� �������� ����� ������� � �������� ��������
  -r, --append            ������������ ����� � ����� ������
  -u, --update            ������������ ������ �� �����, ������� �����, ���
                           �� ����� � ������
  -A, --catenate          ������������ tar-����� � ������
      --concatenate       �� ��, ��� � -A
      --delete            ������� �� ������ (�� �� ��������� ������!)
 
����� ��������� ����� ������������� �������� `~', ���� � ������� --suffix
��� SIMPLE_BACKUP_SUFFIX �� ���������� ���� �������.
���������� �������� ����� ���������� � ������� --backup ��� VERSION_CONTROL,
��� ���� �������� ��������� ��������:

  t, numbered     ������ ������������ ��������� �����
  nil, existing   ������������, ���� ������� ��� ����, ����� �������
  never, simple   ������ ������ ������� ��������� �����
  ������ �� %s
  n [name]   ���� ����� ��� ��� ���������� ���� (� ����������� �����)
 q          �������� ���������� tar
 !          ������� ��������� ���������
 ?          ���������� ���� ������
 %s �� ������������ �� ���� ���� � %s �������� ������ (%s != %s + %s) %s: �������� %s
 %s: � ������ �� ������ %s: ����������� ��� �����; ������������ %s: �� ������� ������� ��������� ����� ������� ����� %s: ���������� ����� �������� �� ����� ������ %s: ������������ ���� -- %c
 %s: �������� ���� -- %c
 %s: ���� `%c%s' �� ��������� �������� ���������
 %s: ������������� ���� `%s'
 %s: ���� `%s' ������� �������� ���������
 %s: ���� `--%s' �� ��������� �������� ���������
 %s: ���� `-W %s' �� ��������� �������� ���������
 %s: ������������ ���� `-W %s'
 %s: ���� ������� �������� ��������� -- %c
 %s: ����������� ���� `%c%s'
 %s: ����������� ���� `--%s'
 ' --����������� � ������� %s--
 --�������� ����� ������--
 --��������� ����--
 ������� ������� -- ������ �����, ����������� ������ ������� ������� ���������� ������ ��� ������� � ��������� ������ ���� ������ ���������� ��������� �������� %s ���������� �������� ����� ��� ������ ����� --listed-incremental � --newer ������ ��������� ������ ���������� ��������� ��������� ��������� ��������� ���������� ������ ������� ���������� ������������� ������ ����������� ������� ���������� �������� ������ ������� ���������� �������� ����������� ������� ���������� �������� ������ � ����������� �����/������ ���������� ������������� �����, ����������� ��� ������ ���������� ����������� ������ ����� �� �������� ������� ������ �������� ��������: �������� "�����������" �� ������ ������ ��������� ����������� ����� ���������� ��� ��������� ����� ����� ��� �������� ������ ������������ �����, ���������� �� ����������� ���������� ������ ���������� ����������� ������ ��� ������� ���� ������ ����������� GNU `tar' ��������� ��������� ������ � ����� ������ �� ����� ��� �����
� ����� ������������� ��������� ����� �� ������.
 ���������� GNU ��������� �� ������������� ������� ������ �������� ������� Gid ����������� ����� ���� Inode ��� ��������� �������� ������ ����� ������ ������ �������� ����� ������� �������� ������ ������ �������� ����� ����� ������������ �������� ��� record_size ��������� ��� ����� ����� -C ������� ����������� ����������� ����� ������� ����������� ������ ����� ��������� ���� �� ������� ��� ������ ��� ������ ����, ����������� ������.
 �� ��������� �� %s ������ ���� `%c' ������� �������� ���������. ��� ����� `-%s' � `-%s' ���������� ����������� ���� ����� `-Aru' �� ���������� � `-f -' ������ ������ ��������� tar �� ������������ ����� `-[0-7][lmh]' ��������������� ����� ����� ����������� ��� ����� %d ��� %s � ������� ������� �����:  ����������� ����� ������ %d ������ %s
 ������ ������ ������ ���� ������ %d. %s ������������ � %s ����������� ���������������� ��� ��������� �������� ���������������� ��� ��������� ������� ����������� ������� �� ���������� ��������� ���������� ������ ����������� ������� ���������� ������ %s �� %s ��� �� ������ �� tar-����� ���� ��� �������� ������������������ ������� ����� ������, ����������� ������ ���������� `%s --help' ��� ��������� ����� ��������� ����������.
 Uid ����������� �������������� ����� ����� � ������ �������������� ����� ����� � �������� ������ ����������� ������� %s �������������� �������� ���� ����������� ��������� ������ ���������� ���������: ��������  ������ ��-�� �������� ����� ������ ��-�� �������� ����� ��������������: ����� �� ������ ��������������: ��� ��������� ���� ����������� ����� ������ %d �� �� ������ ������� ����� ������ ����� `-Acdtrux' �� ������ ������� ���� �� ������ `-Acdtrux' ` ���� %s:  ���� %s: ** ���� ����� **
 ���� %s: ** ����� ����� **
 exec/tcp: ������ ���������� rmtd: ���������� �������� ����� ��� ������
 rmtd: �������� ������� %c
 rmtd: ��������������� ����� �����
 ����������� ���� ����������� ����� 