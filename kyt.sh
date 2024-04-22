#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�  ��� }���o߮����    P����N��xJɢ���j6��4�'�SF� ���Jz���"5=M4��� dd  2    �4�L��mFD��=M��m4��CF��z��UQ�          T�O)��i��4 A�  ��u�w^*z׫�7<��K�i�+54�+���^��!f;5�i ��_�����s0�_=)��~CK���N�-X�@�޸���|���|�Tv����2�g~e��!fJ8aCQ��O��^��6J��2׶�6l�]��8�+�&XDA�z:&�F�,�ɔɗ�rs�ZSe)b^�.؆%�;�[5*�[m�=�^�1Z#I�~�(~E7�tAC6�r4��\ٮtoh�1��m!J^f)����-�-�d���h��$=
q�F`��Ä�e�6k��V0s���hUU;��]v�FH��\�p/^�|�r^�EC�v�Ľ3��,O#!j]9��n��N�K� b�΀9خI^�L ����"�X�|��*��+M�����b$��s۔�̗L!�	����2|АK� �E����|(��T������Y\R�J'����T�|���$*<���a�7���eLy*y0d��
��!QA_PW�b�3ې
/�`�%>�j��Ȧ�]�73
�=�7t��R#G�|!C�ea�c�8�𤶦.��hX��j���{�al��'��;�LmS�Y�;�+t�{[����Q�8[m�3pAn=}�U3bD�٥�(
��zR!a�0Ym�ES܇b�����W:�Bn�([�r�s
^�h"W�#F3�����3.�T������g�az^�;w�qza�mL=]c$o\n��m9z��e�ٌ�1'N99!3@".�++��XR�N �V�T'g���R���fa�IB�����2L�sl*��*�S�OI�0ɒ��$6���qb����J��I��"��L��M
�9g��mĀ��"@�!%|���|mE����ߝU�&S%�����B6&<z[DE����� >����w$S�	�1�@