��    v      �  �   |      �	  �   �	  7  �
    �  �   �     Y     f  $   }     �     �  /   �     �          8     J     b     x     �     �  :   �  "   �       1   1  4   c  #   �     �     �  "   �          &     E     _  ,   y     �  %   �  ,   �  -         E  &   f     �     �     �     �     �  ,   �  "   )     L     i  0   �     �  !   �  !   �  "        ?     _  ,   o     �     �     �     �  #   �  %        ?  {   Q  2   �                &     <     Q     n     |     �     �     �     �     �     �       %   !  +   G  1   s     �     �     �     �     �            *   ,     W     g  %   z  �   �     X     p  &   �     �     �     �     �     �  D     >   S  )   �  3   �  .   �          !     5  
   R     ]     k     �  #   �     �     �     �  _  �  _   =  C  �  �   �  �   �     h     t     �     �     �  0   �     �  &         ;      H      Z      l      �      �   $   �      �      �   2   �   4   2!     g!     �!     �!     �!     �!  "   �!     �!     "  !   $"     F"     `"  !   x"  "   �"     �"     �"     �"     #      #     <#     ?#     W#     u#     �#     �#  1   �#     �#     $     $  #   /$     S$     j$     s$     �$     �$     �$      �$     �$     %     "%  R   /%  .   �%     �%     �%     �%     �%     &     &      &     /&     >&     V&     j&     w&     �&     �&     �&     �&  &   �&     '     '     '     /'     F'     ['     x'     �'     �'     �'     �'  �   �'     Y(     v(  $   �(     �(     �(     �(     �(     �(  2   �(  ,   %)  &   R)  &   y)  "   �)     �)     �)     �)     �)     �)     *  
   *     "*     <*     P*     Y*     <   >              =   E   @                            L   i   )   n   H       	   Q   s   U   ^   ,   R                  J   N   u   l   d   _      V   4             
   e   v                   b   X   0   D             j      a         ]             c   [       t   W          8       P   S   +   *                  ;      g   F   `       (   r           &   K   Z       I   .       A   !   p                 M   B           k      $             q       6       O   f   m   /   h          -   ?   o              :   T   G   5       \   %      1   7             3   Y   "   #   C   9   '   2    
If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.  Similarly for optional arguments.
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
  unknown file type %s
 %s is the wrong size (%s != %s + %s) %s: Cannot %s %s: Cannot change mode to %s %s: Cannot change ownership to uid %lu, gid %lu %s: Cannot create symlink to %s %s: Cannot hard link to %s %s: Cannot remove %s: Cannot rename to %s %s: Cannot seek to %s %s: Cannot symlink to %s %s: Deleting %s
 %s: Directory has been renamed %s: Directory renamed before its status could be extracted %s: File removed before we read it %s: Invalid group %s: Unknown file type '%c', diffed as normal file %s: Unknown file type '%c', extracted as normal file %s: Unknown file type; file ignored %s: Warning: Cannot %s %s: Warning: Cannot seek to %s %s: Was unable to backup this file %s: door ignored %s: file changed as we read it %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: socket ignored %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' --Continued at byte %s--
 Archive contains obsolescent base-64 headers At beginning of tape, quitting now Cannot allocate buffer space Cannot change working directory Cannot combine --listed-incremental with --newer Cannot save working directory Cannot update compressed archives Cannot verify compressed archives Cannot verify stdin/stdout archive Conflicting compression options Contents differ Cowardly refusing to create an empty archive Creating directory: Date file not found Device number differs Device number out of range Error in writing to standard output Error is not recoverable: exiting now File type differs GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Gid differs Inode number out of range Invalid device number Invalid inode number Invalid mode given on option Invalid owner Invalid tape length Invalid time stamp Invalid value for record_size Missing file name after -C Mod time differs Mode differs No archive name given Not linked to %s Old option `%c' requires an argument. Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Reading %s
 Renamed %s to %s Renaming %s back to %s
 Renaming %s to %s
 Seek direction out of range Size differs Substituting %s for unknown date format %s Symlink differs Symlinked %s to %s This does not look like a tar archive This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute it under the terms of the GNU General Public License;
see the file named COPYING for details. Time stamp out of range Too many errors, quitting Try `%s --help' for more information.
 Uid differs Unknown system error Valid arguments are: Verify  WARNING: Archive is incomplete Warning: the -I option is not supported; perhaps you meant -j or -T? Warning: the -y option is not supported; perhaps you meant -j? Written by John Gilmore and Jay Fenlason. You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options ` `%s' command failed ambiguous argument %s for %s block size child process invalid argument %s for %s memory exhausted rmtd: Cannot allocate buffer space
 rmtd: Premature eof
 stdin stdout Project-Id-Version: tar 1.13.25
Report-Msgid-Bugs-To: bug-tar@gnu.org
POT-Creation-Date: 2004-02-23 11:27+0200
PO-Revision-Date: 2002-03-20 00:09+0800
Last-Translator: Abel Cheung <maddog@linux.org.hk>
Language-Team: Chinese (traditional) <zh-l10n@linux.org.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=Big5
Content-Transfer-Encoding: 8bit
 
�p�G�Y�Ӫ��ﶵ�����ϥΤ޼ơA�b�P�����u�ﶵ���o�Ǥ޼Ƥ]�O�������C
��ܩʪ��޼Ƥ]���������W�w�C
 
�ƥ��ɪ���m�r�ꬰ��~���A���D�H --suffix �ﶵ�άO SIMPLE_BACKUP_SUFFIX
�����ܼƫ��w�C��������覡�i�z�L --backup �ﶵ�� VERSION_CONTROL ����
�ܼƨӿ�ܡC�i�Ϊ��ܼƭȬ��G

  t, numbered     �ƥ��ɷ|�[�W�Ʀr
  nil, existing   �Y���Ʀr���ƥ��ɤw�g�s�b�h�ϥμƦr�A�_�h�ϥδ��q�覡�ƥ�
  never, simple   �û��ϥδ��q�覡�ƥ�
 
�Ϊk�G%s [�ﶵ]... [�ɮ�]...

�Ҥl�G
  %s -cf archive.tar foo bar  # �إߥ]�A foo �� bar �ɮת� archive.tar�C
  %s -tvf archive.tar         # �ԲӦC�X archive.tar �����Ҧ��ɮסC
  %s -xf archive.tar          # ��� archive.tar �����Ҧ��ɮסC
       --backup[=CONTROL]       �����ɮ׫e���ƥ��A�èϥΪ�������覡
      --suffix=��m�r��        �����ɮ׫e���ƥ��A�æۦ���w�ƥ��ɪ���m�r��
  �s���� %s
 �������ɮ����� %s
 %s ���j�p�����~ (%s != %s + %s) %s�G�L�k %s %s�G�L�k���Ҧ��� %s %s�G�L�k���֦��̦� uid %lu�A���ݸs�զ� gid %lu %s�G�L�k�إ߲Ÿ��s���� %s %s�G�L�k�إ߹�ڳs�� (hard link) �� %s %s�G�L�k���� %s�G�L�k��W�� %s %s�G�L�k�j�M�� %s %s�G�L�k�إ߲Ÿ��s���� %s %s�G���b�R�� %s
 %s�G�ؿ��w���F�W�� %s�G�^���ؿ������A�e�ؿ��w���F�W�� %s�G��Ū���ɮ׮ɸ��ɮפw�Q���� %s�G�L�Ī��s�� %s�G�������ɮ�������%c���A�|�H���q�ɮת��覡�@��� %s�G�������ɮ�������%c���A�|�H���q�ɮת��覡������ %s�G�ɮ��������ԡF�|�������ɮ� %s�Gĵ�i�G�L�k %s %s�Gĵ�i�G�L�k�j�M�� %s %s�G�L�k�ƥ����ɮ� %s�G�|���� door %s�G��Ū���ɮ׮ɸ��ɮפ��e�w����� %s�G���X�k���ﶵ �w %c
 %s�G�L�Ī��ﶵ �w %c
 %s�G�ﶵ��%c%s�����i�t�X�޼ƨϥ�
 %s�G�ﶵ��%s���O�����T��
 %s�G�ﶵ��%s���ݭn�޼�
 %s�G�ﶵ��--%s�����i�t�X�޼ƨϥ�
 %s�G�ﶵ��-W %s�����i�t�X�޼ƨϥ�
 %s�G�ﶵ��-W %s���O�����T��
 %s�G�ﶵ�ݭn�޼� �w %c
 %s�G�|���� socket %s�G�L�k�ѧO���ﶵ��%c%s��
 %s�G�L�k�ѧO���ﶵ��--%s��
 �� �w�Ѳ� %s �줸���~��w
 �O�s�ɧt���L�ɪ� base-64 ���Y �}�lŪ���ϱa�ɥX���A�ߨ�h�X �L�k���t�w�İϪŶ� �L�k���ϥΤ����ؿ� �L�k�P�ɨϥ� --listed-incremental �� --newer �ﶵ �L�k�x�s�ϥΤ����ؿ� �L�k��s�w���Y���O�s�� �L�k����w���Y���O�s�� �L�k����зǿ�J/��X�����O�s�ɸ�� �������Y���ﶵ���۩�Ĳ ���e���P �ڵ��إߪťժ��O�s�� ���b�إߥؿ��G �䤣��Χ@�^���ɶ���ƪ��ɮ� �˸m�ɮ׸��X���P �˸m�ɮ׸��X�W�X�i�������d��H�~ �N��Ƽg�J�ܼзǿ�X�ɵo�Ϳ��~ �o�͵L�k�_�쪺���~�G�ߨ�h�X �ɮ��������P GNU��tar���i�N�h���ɮ��x�s���ϱa�κϺФ����@�ӫO�s�ɡA�åѫO�s���٭�ӧO��
�ɮסC
 ����b���ݮe�� GNU ���O�s�ɮ榡���ϥ� GNU �\�� Gid ���X���P Inode ���X�W�X�i�������d��H�~ �L�Ī��˸m�ɮ׸��X �L�Ī� inode ���X �ﶵ�����Ҧ��L�� �L�Ī��֦��� �L�Ī��ϱa���� �L�Ī��ɶ��аO �L�Ī� record_size �ƭ� -C ��ʤ֤F�ɮצW�� �ק�ɶ����P �Ҧ����P �S�����w�O�s�ɦW�� �å��s���� %s �¦����ﶵ��%c���ݭn�޼ơC ��-Aru���Ρ�-f -���ﶵ�����ݮe �������� tar ���䴩��-[0-7][lmh]���ﶵ �ɮ׬�M���� ���bŪ����%s��
 �N %s ��W�� %s �N %s ���W���٭쬰 %s
 ���b�N %s ��W�� %s
 �j�M��V�W�X�i�������d��H�~ �j�p���P �H %s �N������������榡 %s �Ÿ��s�����P �إ߲Ÿ��s�� %s �ós�� %s �������O tar �O�s�� ���n��b�k�ߤ��\�����פ��U�����a����O�ҡC�A�i�H�ھ� GNU General Public
License �������ڭ��s���G���n��F�ԽнаѦ��ɮ� COPYING�C �ɶ��аO�W�X�i�������d��H�~ ���~�L�h�A�������� �й��ա�%s --help���������h��T�C
 Uid ���X���P �������t�ο��~ ���Ī��޼Ƭ��G ����  ĵ�i�G�O�s�ɤ����� ĵ�i�G���A�䴩 -I �ﶵ�F�]�\�A�O�� -j �� -T �ﶵ�H ĵ�i�G���A�䴩 -y �ﶵ�F�]�\�A�O�� -j �ﶵ�H �� John Gilmore �� Jay Fenlason �s�g�C ���i���w��-Acdtrux�������h��@�Ӫ��ﶵ �������w��-Acdtrux���ﶵ���䤤�@�� �� ��%s�����O���� %2$s ���޼� %1$s �O�����T�� �Ϭq�j�p �Ƶ{�� %2$s ���޼� %1$s �L�� �O����Ӻ� rmtd�G�L�k���t�w�İϪŶ�
 rmtd�G�ɮ׬�M����
 �зǿ�J �зǿ�X 