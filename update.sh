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
BZh91AY&SY�  �_�EP���/n߮����    P-�/zw5Ǆ��eO�?R~MOT��"i�@�dѐɣC�z�����P	H@�I��S�M��� ��   ��S5?S�0��Hڌ7�=  d��j�=�F	�0&�&d�0 FFH�觐5 4 A�   � A��x7���o�av{o��K*��;���c[sj�m�I���(��߳O`@�ȅ���\�o�G�<�6W1;��b5��%�C��T�¼P�/}gDe�$�Jzq��DۣY�,~�K�<[���Z!0�>2;�4��R�Y����c|wV�:m�z��/=S��V���y�{�p13��"(h��#}2�<.m��.��ZX+0�)%���Bw(�;�b �N�]�ˆ�'r�8K޲���8�F�����zcd�u��L�@�<�K�ikE��7��i�u9��x�*I	%��#y�ȑ.H��e��Ȍ��r�2@L�p1���{V���*m-�q�F�P�x׆(ql[����[��fK�U����?��Vj��T�S8�6�l��C��~�S�|W��=<a�J5
�~�p4{��p��t ���2Y�}q?&r���j��zHxάd��
�̃�͑�l�vQ��M;�7��b)�����Ŵ+4��F�	���$�\|�c1?C$���d�]�'�E�Dj���̔�r��Y��K�C�+�RW�ʵ�뵼��p=p#f� n�1�	�r�vO���-�n��"��h�J�&��(t�AQ`���Qc̰� b��kX��MkEG�ᐋ碢-�jN:r�?������4jA_��RH�]<E��,��yi��9m޻h�kd��D�iT1�oJ��YĴ�N��%GSBł�MǤ��G�}F鞩̼Q��q�ʸ�/� � ;Nb�H�
�#`