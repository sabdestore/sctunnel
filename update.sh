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
BZh91AY&SY�~,$  �_�EP���/n߮����    Pmݸ�]˹�$��L�������E6�R� ��2h��z��F�dH�I�	�OQ��� � �     �"���O)��6�Hmy@mG��@8hd�CL�22����ѓ@21$�U=OQ��zA��=@  �    �!��kv��Wr鐑�f}�~hu�������5�s�ŵ�����T�5Q��u0�Rc�I-,	��6�b�ƥE�ӏ079y����Sz�ܰF�T�vw� ��l6y�4��6�gEd���ºK��{��65\1�9({8�5��<;�i$��x]F勁�x�f���[sG]��ޅ�% �Fj�C�r;$�SZC_vF�vzܚ4Y_��Aw$Ey�a\� ��Hd�	�qkՊ��Ҵ$�u�I��7��Oa<BlHqk
�3A7}�!W�9�#���p�f�mj���W��"
VPHbRI*4n�2�еmj��~y`����1[ z���X�Rq�t��3P�wL(����G���j���<wuq�d�Oۅ�c�bC7���õyjr��O.�f|Qm�p�TC���ˬ|��1�1�M����~�/�:PU�WсEc��U�S@��h;!u�K�{5~�u�q`�i���`fA�E8ٞLf��0Kyz��)d��`F���"�Di�
|��V@�)���y�Y�/�8+@ZP���ڸt�9-�Ī2zMK�$�ܦ5�����J-�}��"��G, �H�π�R<m��IK��5�^�yL�[WKᝒ��.I��"
�PEVE'��DR�(X(�N�5J�2�e+4At<�J��Kd�P�7RoEYif1��(
'�mYEB:%�`��D�t]��uo�A�j�
�@�8���$9g��*�"�]׬g>�1D2�9����R\~���2%F#����=�$��K�!%]��"�(H`� 