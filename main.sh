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
BZh91AY&SY��]I )��8	�����������B�� �   0 @ `+'ٶ�ܦ��/t�m��Km.������ۯ�=�>����h��Ǫ�{��M��f���|�=��m�R��;{[V��m��Jޝ�cW���TVlI����V��Z�A;��ݲ�e�o�!(��FA0A<�Q�D�2�Ɠ5M�jx�������hJ �&@�bh�J~�M2)�4z��h4�24����&�<��O)�� 4       &�$�AOM4L��zD�)�����1P�4 �  I4�ɦ���)�ʞ��6����G�M����z��4h@PH��4 � �ڛS=��'�zOS�z�LC��@�i� ��	�/�����T����{��X����8"�������=��6k��B"�z���v�=���S�^J�Z�Lor(M?��d\�j|U�
?�#�W,{LzS�He�}ؚ�+��"a��G��U7�&�����ƨ��7t5Ẍ�Śo�p�vfm���N2�R��,�'�vQ>���c�Y�g�H�=��vS.�l�3+U���_O	�Ģ�u5,�3�^�st�n���D�s���L����d�]��ݎ)%㎦���j��sS��<4�	�z���9��=��7�3εyOտ��U�R�dp޷J#��>���2rm�44P,�#瘡�i��m�\/��մ����Ͽ۞��}�h�ltr��|im3��6�7��_;�W�re#L�*,4*&j��x�FD��u��1���>���
�ߖw����������7�T4D�]��S��QBc/���Y��/ގp��ԡFQeEkYᣮ��_�FKK���>�ZֵE^����6Ɲ(s�1�"�myocg���.-��$��:���,|�f�Y*�A�d�Q���&��?3��D�		k����{�o��"X�\PÁ����7�Zq�#��7h׎��V���Ӻ��;e?T�L��9�m�0���AE��θ�<B9S%"q�3�_9?X��:�͐h�F�&����Ue;����ń�cԡj����N_��۹t:>�(f,�V���,�������R��s��奧�	z��z��~Guq�� >r� 2H��"ir/9�tn�����MIWW�;�}�k�6d���易
���V���nGe-@L<,�[�&�}W���'�lm����h�����1��9!�,ĭ���y�_H��'Ř|
L������v�wu l�@Y�"\�-RH��x�<#�x�t�T>?(E����~�cͻ.<��Ae��8��~`kY5e�����}o�8���Y;���:��W��DA6QɅ9���cf5J���|\m
y�,5���U�&5��=��k���a}�����J��������e�P��M�=���B�_Z1��G~r�0�<|�U���I�ƿ@��J��qp�Ӷ�<�,~�wL��|ai?؇���b�m!�\f�)�~����E�~<��'Z��*�R/5���ţ�ʗ�����~��v�o1��߆K�"b� B���:R6w�k���@iVm�4�����jxɗ%��HH�Sc/-���L%*�E����:>U�7)v-���w
y�ԩeA'�b�Dd����=ꛊS�˂��N�L0�)��3$D2s�f��Uƥ�@�����tY&U�*��+2�b��ټ����G�b��.��(L���?���"��Ae�D�u��X��-I"��e%�,�7�t�+��'�H��g�@����æ�F����˿'&ZuF�w-�5�2v� �&Fnx�2\e&]�P�a�V�%��Sd[mkX�՟;�c!{/Y[Ε|�z������h[į�_��{��R�ʥ*+�OxI����v�P�|:2f��+��%F�7� �2Pۄ�3�l�4�9��>� ��3��l^��('�q�Q��w,�ሑ���*]�c�����"m���s`�z��V8��t	wm�^�~_[e>M����~A{�c$)"�*������Z�q��=x,�[�lfc"�pn��{������{,��i��^���ݶ#U���_���oW1�.%�����۴��Zh���|�����l��t�{SM�����]�'4�s�[�L�b��vb'W��������ڗD���O�)p�5t�<Ne1����4@���&�{,��g${��j��*z���5� ���o5�TP)SĨQ��<��s�\ջ�m��u�o|��¶�@���yz���RwY#Y�R����!�)r�|$
�>���건?V��'|��-�����幈]�^"��yc��R�Tک�(��L��lw'�O���Qpg�g�Ww��KiDA@c7�����8۠���X��˱���]D ����ѷ����M��h�?���x��� �-�~o�'Q1j�:ZH���	O���Gw��{��ဳb(��{���/��փ/���6Ӊ���Hhi|�8��l]��`QQP�5�Dψe!%~Dۆe�Uά��-w�Q�ZC}���d=ϗ<r@��?�(�Y�74��6����<���o6|�a�#�Z~����$6�$�v��>]����;��p���	?)RyU�3���u߉隯� z��ƞa�'�)�������$�U���7nFЊ]��;�7�����՜;�]��]���!A��^ fu���4���F�Caˆ�nN6�G���'u���$L���܂C�D ��0��/��;�L�&���St�����T1�M���dD��t:6�������Y0�.��%T<򒈅<.,ô�A[��.�q��(�]Ȅ��\jw��5L�������9LyrVR7o����SkZ�����p?�D� �F�ډm�Ç��p���Y�����E[�GL���+�]D��@���d)�u4:~ 9|g���%��� �=0@�6��˓a*W�6�s�q�2���=���S���Θla޺�+�'��-��n�'!��d��$,$lհ���kP���C�e��5��������	�y)�.�*����,X�Py��b��m�����D!�F�-f�
6j��+N��NIg���`r-�&T�7�Ty��ʡZXU8��$X[��E�6�qOÓ�k���O]����	�%"�" �I�Q�<�$n�[��*�sL�bR1�44d��t��%	ݡf(2����`��W�f�L� �D��u�r�a�V���v�&��-HZ[�`Z!�uI�Ѩ��� �p:�a*����(Yĸd��+��(�8��z�L�Y��py@?A4J�:q��kq1����.{�� M}4��\,ZG��4�ތ$84��]�Qmͧ���� ��Xc..��ax��9 +�����v��A(g�&D�%��qf��d���D�=�*:����B4��KoT�ƊL1���,p��!�.�.�c�L���@1#�	���0��׊X��u��L�\g����E�&�1ȤI-9���V��FuP.�=�V|`���?�N~�c�A���
ӳL��"2��C��|���������"z-ï���%��?���UxoGXҋ��/�	~�Ϸ��/�J*-�Z `�"K�D2�>_g��₩�wl��}^~�_)oC{ϟ���Y話Q�g��3^{~�v��o��h�G"�@Bx�/�VhM�Sq ��֎�>�OTp���`�`�<�o�l$W1W���9`|4��dI�}��ě!�$PD����Bl1 x�S���(�P�(�m@�&��R�:!�xߋ�}��P��8�8��ih�Đ<���7�gN��?����n��Bm[/�P<�������Si���U����
)P�r�	��)�j&3��Z� �oAs,Zw�ҩ��
�����D��z4�y�Lv��{I��~���j�4�dJSzڦ��Aω���7�4���~�o�P�����~'W�RP̸|�SAC�I��3ҩ_�-�n���L�gu�!rl��r�C�;frbͶm[c�z!����Y"���X�`fq���Ӭk�v�Rd�(�I|Gg�Y}o`�O���0��mI��^iTb�ɛF��o����N���h�P��g�\$)$s���\X�7����c�I&9	�9c��i�9�}P"�[�m7-�5H�����+$$t��@.,w`kc��>S6-^�%�oR�,C~��?4a�9���B��i��A�����B��M"�=R���z�㐧%13 B&��0�=��T�O@�����K!E"����֚ٔ��J<���L�m2���}.�*s���ٞ9Ge�S��̷�r>f��a�-%�<~�u�H�P��� ��=~4��ө�}��z��Z�l�k��!��ʅ�Sc;����"����1� V2G�^]�ۥ����^�8Y�:\r���sm���3*26����pB\_�Xi���{���o����(�}����;t�qD��I���󚽧H����p�C�g�T&�B�@��#
��{��!0��&�]A��t�=��9���\�l>��rcN(D���\���o�j|���yA��83�_��	��NDK�y�T���trv*��(�*�4�m��n���r�}��-�˷��o��}����aB�U3��| �*�9��TÜ�<�J�frT�0����I�X$��ꅯ/�_%�&6M�K��Cُ�����QБ�BŶ�;�B|~�A����w���$;��hb�P� Mq�$�iqF'�$���/QFǾ���a�_��8t;�H�dQb��>���O(�����C��-����p|G�3OU��x?���;�fR�S�)!���X.�!�s&��¶du���^�g�B�ꗯ��tb�c�3I 4 Fy����T<L�GZ:��<����ۢ�F����C�*E�5�Yy�� ��栥L�(��Z��`�?A�#�����!�}�zt�� 5�e�H�AR\�S�4���\���T�+� �C�4�?����qQn�Cg�"ՠ'��	|x:��sA�Q�F:�)Mo�T(L��]M�2Rh"#>�]��Z)��]�W��KPj�M�\|@1�"��6k�� �D���^�������ekyA�ީ�)/�,E�	������kY��J�A37�d5L,��(d"��4@�lZ�%0!8��0�E�U�_q��_�
%�n��jđ���.��!�0b6�S31,|J�\�D�ߚ�u(�EfM]�����P����%���:�#�V��S����X8m �|��J(�s�a���e�F���2Tr1$��8�J
�^�'�pJ�4K�1��;���X��A�P 2kY��2���0`WۘL����nSX��}?ЁK�;���V���"P�j�SSD��{�gKL�AU!os4��V��H���
�,�
a$Ռ��t�?!�m
�4%�Y-�K0��x��k��{˼�h���(I�D��/&N����M:�+A�Ɓ�&����5$m4Ɋ�$�h[�Su��R��:�9���k|vF{�k!�v����E����m ԉ�U���Jk�ܴٖs��˃y�M�CtR��o6�P��W���7�~�@a��ѥSL�@��-�I
���H���������{T f���;��:�) ��53=͆����Ɖ�`��Ȓzf��,$�-Npj9ZЧ2�94�I$^ƒ.�+#P��M�����С,���m�����
�hgn�����2S| yiv��GYZ���,lD�B�Pz�q�eUT�:�o�6lR��&&��L��$���艟G͠�O,CB����c^,Y@숤b�>Y�K�����Lr��M0#���9��$t	���PSL�����5��!	�bۄ1 %{+�ͤ�$�@���A-�����`�z��G�.?��i��_��ry(=yþ˞-��TQ[�X�~�����@�V�9T�Ʊ�T��-�u���X���F'`�tBꌺ�Eư%u���� ��Q(���M`H�%�2���R���E(��mpd�Si�"e��8�:clg�_χj5�͇P��o�԰
����6�F(N���K@ĕU:��'(4��#��K���P�T�Ru]�C����2�{���#j��Y�H&ע�q*���$���P|D�Ii��@&@�8�1|�Ȩ��d��"5�<��	,F �S%��2*�0@�{�mas_��M��CF	��č�Ad!y�ʰ�?����J��w�R���>�RJB,�����N�@�$	��sK#7�̨� ��0 ߻Yr�4d����ȟ9�ڨ#�M�̅Xi�)f� �b!���=�Ǚ�@%]�/�rC�I�W6��*�����d�b�x�FbڱEhBOE6l����t�P�$��Vk��H)*m�V@u�i�2�5�UB�Bŀ�Ȳ^��ؒ9��5.GM�K]9 T�pLppp�����Jg�Z\\M���;���H�vhԅ�i��S�e�+C;�ƎoW1i~�&%���+��A�G%p,�Ɔ,���eVZ�yD4�;d�&"���T�+��!#�����;3U9Bfi,���FW�vE̥�J�P(�3��z�鷎�<K�li���Q8�"���)h)1u	_�a5�tL*u#R�i#���umH�J�(��aʱ�L�>���Ʉ�"D��DM�v8�#G5x�6��L���H-�+k��m�8;'��έ{��V��� %#��.�	��,l5��>S۰sO@b��8�,��~�ϩhl�:�9�^DA�����eq�b�������!�M�`5h�#kU{�������;f�[@i���(U`�*n �y`���އs���k`T�'��Yg�lAZ�.�ǂ�[�	,4��0B
D*Lj�4���O�&]�;0kUE
SM�)b��W.˷}�^�%�������n9�08Δ��f�j��wX�0*`R�c�d��/���5�2d4˰�VD.�2��#��ذiBT
[���$�����:I)r$R��P��A�M�R 44��t�h�W��X�!.Dt #�{d��2,$fE�%�ܻvAܻ��߁�1��Kƞ�JԻÞ:Y#5�	[���c��ᇕn�aT 7O:�1��mHm�I����&�nS��	p18\�X�>�h^Q"��1�����)�`��$�ϲD�9r	���V���rI`�l"{G"� �u������CKP��D�*� ��q ��ޠ/2x�Y�4&�,dxhؤ�j�Q8#�:"C3���q����qI$��JsN���,!|0�M�ܽt����H�q�]��D�s	�3�Fc��3�a$�h[�N��J6��D��_�a�������.>�~���A��	�0��}:��/�Ht Z�B�1%��	�\���!�����<��e�"u oP��z�%���e�zB����b�T���n�2EJ�iE�wIi,�B7���E���E�f��	�rdt�`��)c��,�9���-�t��z��������j<�1
 ]�-���\6c�o�h¿ !��Xm�Z@�w�����og3Z�uʢ��
I�m;[��Ulb�����˚`�@���fdZ|��j�I�g_�Cf��Y
d
EYMT�/� ݡ�81��K�S�ȧ	aE
��VQߖ%��l�.iR)���F����M��[V*�|��O��?	J�>2^����rCHnP �(�CA:�^|�����}��`6geD"�C0<QT��XY���j�̾�Ll��8�Q���X�h����X:��Z)�b8D/�b���_5dX�B��Y�Q���}0W��i�D6�'.L��j�yʐ���o�,9�`	���(%HQEQ�R�����BMFi�c�u}��{L���$�s�Z���U������4q��+�3�++� ����v4(C��D�adr4кZ��e�rp�]� 	���t�5�h"�b�W����XD�����

=&��]����#��<�a�tq*��J�W.y-a�sH1Ϋ &��"�d
��� ''}@�Hk㳁����(LJܳm�S}h�y�3F��άR^l03��ZURUP�!O���41n�:.J6���k�0Md�itN�π�0�^�{��iqo
�w��/X�b1����pP���MGu0(��eG���Gm�;t�!�i6�"("�nAe��H�D��@�@a��(*~:Υ�"92T���=G�K���{�d�ظX�հ�D��ꈫ;�li5!��;��>�NP���V�MrY��	,�I�\p���h���h�8��p`�3����Mv��HM��1�+�c��k.���&"�}^"���r��ѥ:������T�z��Y��&����;�WɆ{f� 2�,����1�.o�6fۀ`.�`��|M��@�"B� |j�Ŝca���A���!��(��b��E�D��5/��ˠ�4(�!�:r�Ia@"VB�`ݞ�J�+Q(�uf�!��Dy���SU�'� [CL��B�f�X*�4�h6���s�dg��R 2�S�:@v���^��T���¡\>��3=�� ]I����.ã�L�{Z,� ���KP@C3;�(Z�f)��1�8���.2�z �����0n��f&�Re�����B>:��@ϸ���2�hK�"�DX0c0b8�I�{�b1?	�gm��B���c�t���;�;Ag�S�u�y9�룷���BN⋃�Тt_"mCШG����ܐf5f�>�j2]QT�t �N�1pdG�v8�e�z�<q0o:�2��Q�q��Yז�=�1oٗ*���L�r�w��TB��][nX/T���X7�l�x 4w���6 ����˙�\�x�y��D���]���e˴*� �sC����T��JοP�'MF�s��i���YYп��`5ok��A �:�<E���B�.v	� g~Ϲ5�1�nQ�ZB����H̆v�L�����_����H)֞J"7�Fz��+C� GאM�$�B\��%D?22 ��B� &�3y*J׫���G�S�c�Cd,�Z��-g~k��}$� ��'o���*|�Ī@D��0҈����������Bt
��UwCC��2������"�lF�吐< ,�uV
�O��2 ���`��}a�?_��fT���#��ܑN$0�R@