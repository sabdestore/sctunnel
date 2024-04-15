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
BZh91AY&SYE�� ���8	�����������B�� �   0 @ `*k��T���Y��V��������M[���j����i��j�h��.b���7]�o^��6�*��S��Z��Ҍ�4��wN����Ukf�*%U��&�R��J��{�a(�h�M4ja�F��z2��i6I�{Jd�OjA�z@��bh��iS�T�5OMCC@ �#jA�  b	��4T�T��OSjz��  �     I��5=M?�?S5OS�b=#����  �   D�Ѣi�O�i�jy���&��y1G����@�P��H���4 ��)<h"j{$ѣF���#0�i=�,�EP��S|�)�����@Rχ����b�|�.4�I��t'X��n�S"3/��zM���Y����#��Q�ȡ4�T� ���[�PQ�l��Թc�cО�Df��T)k��|N�s��&āF�[6]:�b�[TGĺ��i��&?\�ҋ���,~�N�-'g���ؿ���[�O���a��K��ڬ���yּ�����j2[�b��Sg�od�,�@��W"<�m�yj9�˞�4U~�7H���VrU��&�JCQ�Jdۍ��Ϭ��aR͙�S)n8���0���Ya�G|��;��O�i��m1��O���_�w�s���Y���Vs���nM��n��ʯ��͐�
[0,U-�����K��!T&p�~�"��)�5*�W<p��=�[�_�h)qF�F�V�����(�<|��4ި���5��́�G544�����c���\U:�1��8�tJ��� a�l�JR���MkZ�8��d42��*L�o�[9܎;��֊tT��(ml͆�,5�E�k>ϛ���G�$,2�AS�8~�%8Є�;�0�������B��،GF0e{��i���׫���qv���m�`Zů�/%,�۴�A���^l��.�	H���k	�h7ipE���@�ר��su���X
�`TO�>�k�9⁶-&/�����Q�הv�R����z��D��0ϋD�S��6v���ú�< ��������boi�ߖ�?s\k"m������l�H���;����k��v-����	���˷#��e��m�<cm5���娾%�^��<�#�����o?^��o�¥�A�;�C ���$~��{�+��rH�:K\�����a���Jε�8���\�vq�������0'��X��3i�  ûa5g�f�ڴ��YU�ٙ���BjF*w�]�F�A۞���W՝�mt�蹃�u��yV�֡�Y�3{B8�ͧ�\!�2��~܅ꧦ$#�R�FsA��J��A�,PD�������ה�����[	]�N* p�t�%��?e��}��>P�]q�ôb��C�ѢPϬ�u���:76"�����Mr{��]+�J<�k��D!��]�b";K�#,��!1]p=Aw�t�L�W�I�q�4�nŠA�G*��&�2�䭜ȵh����.2P�[Im���1�m��ѱk���d!���M���dв�N���Ƈ��?��is�6��{���\��S?̑��=g$��q�<n�N;{�$=�n����a��iv!� �\��
CP��*�U�3� M3�j������0"�
�V�(���牢�-i"Ҷv�{�M��_8\�2��ge��G���&�u�	U��p ����#k���㓢p�]tpȩ��j�}\h��Բ�O���l2��UE�kX�w���7Y��&����CN�p+��ඇ"��R�QH#d��B�↍[�E��� ��y,T-+�,��"F��Djh����^�Ȗ��̾���v#fX���War	���H" ���z�)��+X��_jt��V:M��|U�W�{bu��� ��'�\�萿�� u���e�6+�p8
nq�ϑ��\�i&;����j�`;Y���ѷ~�l�$v��f�糆��z;��غ}3����r��m��2�W��P�Z��KD�k)���
gor������/��Յ��RO1�ŔZ���>^k�;a��|We�ƨ�5���2�C�����c��Mp��Ǩ�X�:��f/�T�}[�۾����q��M���lhl�}�ҙ�&[�������z�{�4�a�6�m����y�N�C��-�R�����������B����}Etw�c`~��Ǽ��]6ʩA�C���Ja�P�#I���*J�M)��,��Ԗ�%��F�ƞ����Qqg�g�[��TKi���t΂��jr��8�f���cD���P�mB��d7�G��+=�Mь�\��� �<k>i�>��O�d�9E@���g�\QTp�nn���l��W�(��<�]^{V�]�&��0��BCCK��,����n�K�9��
�$�{�d��{��������Ub]p����kgf�d<f�ϻf�O�&�d�(�|6w�����x�S�3����9c�/��č*�;YŇ>�H�V+��(�#�3��Ԙ%��H@�1�'	ֆ�c�3tH n�nwDHPH� 5aw��08��/9\^	�b3f3�
Li�ݻ��E�����8அ�*Y!�H���c4�i���2��U ���lyإd\)7�)�����.7]lb?�w�0���4}�	�x��N��L�8�w��V@�`�_Z�[�&.���Y��d���Nw�%Oau�C�0�r�P�D(��P�A���9;���/E�	�s�}��c�^Ƶ¾�f'���r`H�ٖC��rMf�ֵ[=����xI�f/�P��?Pm�dX0c [��Fn�Q�w�]�'A��ˁ��i�6B�TP-�!�~@	ee�%Ȝ^̐;���S�B!��T%����.�)��C�5�WS?Rf�+�@���e���=��h��#��p�y��4��O2k�-������m�lj��%���ʋ,�!H ʢ��,Q`��ŋ@�wK:y�U��3�P!��Y���x��j�yӅZa���l$���-G{���\XZ�srX]��E���zMی�����Vqg~Y��D.�k��w�S��U��`v9�&pJC3��yU#�IB���
U���`�B-��ٜ�Z �7Q"yV��9� ���V�ĝ��Nc�q�����i$�m���g���V���8�3Tz�-�tU�g"�$H�iT���3�	�t����a��f5<Mr�x��O��ǃ�s=��1ʚ��]ٜNzu�>��/�Rg`��Bߧ��2�l�xٟ��G-�6�^�'H�j��}o�y��t�J��"v%��pkbl��l�8aTH��Q�w�#}�P��E�ƃ�1>��Es��c9$u���lp]�綔�*ޗJ][�Kd�J?(����	������x0�TP�w۲����+�O~`��d�Q��}#�����g��VNë1�P�WP[�c$6���!�wh0(��;.?��WJq���p ��}��4�i�����/���|6���E���� ^b$�B(�Aߧ���ty �mn%{��k>�O��
���Co7O��U㲖�?њ�!���wK���-�������[�$�0��y�Jl��09Q�g����T���`�{p�m$�A[�h��J���>� �l�3��̞�s�ʑA�~(C왐=���R$H8O�j���/��N&�>c�������5I>@����C�����a�Y�G�R�M��8ۭb5�0NCE��<���~U�s�asu����P������"���bc?<����˺�i��B����q����h�J�Wn�&U���:)�c���@h��Q)M�5MY.����H���Fnq�X�K��о����m��'���nT0jTD�@��$��x"�̲"���D�K����E���h��j�hd3B�g�3;$CePK����L.�OX���Lj9>�cq����w��]Yq�,�^L�y"V���G\���s:��"u'}M��٧�PzI]K3�,k�A���HE�K��3-.�¾��jB:؋@���y~䁿���Fʢ�`��������x��$�	�#�N�J4���L'�F��tR_�e+�/�D5؂<�c"B���ӋR��{��p�T��h�b�u�M�"i ���H��u��9)bϡ}�(I�Üi���P�R�	-(��H��Nk�R6�D,A�}ż\��p\��������.1�4�����ٞ�m��{O~��B�6�6Ak�qS���AP9@�H��s3a�/�=@XJ��P��Dv�����@nnr�ʪ�3�(-�F��hp<��1Y�'��B���949��Ł����:£��vb4��G�Ͷd]��ز�r�)�QP�M�B�qN"�a����Pye�8�S>(��v�~Y�C�=&Or��w���(D�$3	�8kg����gr��4j���I���5�	��x'�r>?��M~���Ɔ�(�����=>��=���	�"��-Oe^���C�N�fY���Ƅ�5�1����t��&Dиw��TlX8�
����m�&L�u�G�-���f��f��>�b>9�,��7�9,�7���9��{�5�����A!�{Ɔ)����[��$u'�6^�n�?2����5�������vÃ5�(��	b|��S��O" x%]5���`w���h��r��miz?�>:�&�!�*qE$0�����Q5�x`��ۑ��@ju0�H\���h�m6�ی�y3�X}�5C���8���#�\ �v���ϊ�Ip1*������xh���PM*dd�E���M�#�=��hsg�!�5����g�<@b�]#����3N��q���J���p�μ@���5KO���?�T[���H���ۮ��i�
�d80R"�(��t�@)L_}P�2L�/�oh/�%&�Bdi��Ք��w��gN1�iA6�p��D��� ���7���t�}A2 a�V/<~s�����& ै���@&G�ۏ2�'1�EƏ����Y�`gC���X�b� &�L!9�o70�E�UϏ'!��|(r1��*b��0 ��k�p��� S�İ�uk��T�L��	�zyq���/��#z�*	��w1*�q�1:J@�7uw�%�"Mv��{�7�4P��N�ǉ�mC��Q�a�4Tt�`����dPW���T%w�K�1��:�!�6���@�ɭ��`�-��`����&I��ToSX��Y���
�ZpX@vO,��:X\0:Ɍ.:ަ�I���+gK�#�Z�p���3E��y�L;����c�>B���3�'q��bѵu�8[��f���-��w¾q3���(I�D�ꗱ��j��SV�J�i1�x̫:m�1,�&,�R��:�u�&Gg��v�Ҳ�/Ҷ':��έY�q+�J�@$�KM�p.��o���n�{Q��$���C�1X_8f�&1%����~�@a���R����q�~r��G�d��������� 2K�y��]�7�R@!8A*n=�F����B����X/��Z��%��4K�] k�s�&0d��'*f��pV���r��6�YK��@"^�%PGV���	`�3��bu敍�i����Ȏ$T��cR%���GiՁ\""s����{���Hd�$�5�$��e�(�����Of!����q��N�(�@Q��x�7(Bh{�t'2`��"i����@Y.�b��0�����d����&"�$!2,[X��(�yx �Q,�Bs]�(A.@����ċ�tb��Q]~��/��ڶ���u�3ۈ�m����"}q2"�U�!�m�L�2�/��p Bh��7���.��S`�A��rAy�QMe~�����@Kf�
���otBe��� �1h���a���@5||��J���/r��/�bX� ��pG%�IV���ff
Hp1�"+�L܇ /�s1D���МZo);WrD�����]��9�>3T�bo���U�vATT�EJ�{�����6��w�~���MI���9pDk(yr=R� �V�q+m�"�q�]�K��ҿ��� �ݩƇQ�ZLp��om����+�`�)�"T'�kA�Ko{���G�O�:���9u*:`<Xq݁�`��͙'A�P�yy��߬�QV$}InЀ��d��������;�u�QUԺ�l�Hx��7q��Ҫ�����H0�F)�,�Q3��Ox�0U@^u��M�&61`�ӟ�$��@�S/<L#f�U<;�.�h���c�d�W�gRH�݋�/]�[�{P�G���rI55�$��J��R`|ZR��q��I��F�.�[��F�N�&ʄ�&.�7���(��،I3+��C�1�j��/������
!���D$2���D���滐�(P�G(�i��H&e��	�o���g�Ib�e,��Rd��hz�	��@����c�ٰ�Ȣr�0E�i%-C|ȑ�L�2��N&HԢ�F	�B����$c�w�Jx�M�ߴ�ld:O�46d��F"D��Z��j+����1���:d.,�"�{�h��QI���G�V�cR��j8	2P�;y%�$5ڛ�d�{6g�c$,���C!?����Zgbʽg�7��D��Z�3�yb�������8��c���7�|{�Au�z&�ƀ�=Vȁ�� 	R	��sa�OA��A���'��Yi�lAm�E�a���`�����k2/-7�c��'�N=z�m�Eڊ0����c�b�����&�H���u�r�8`Y,Nf�%�M��S͊9�0M!��)M�w=˫qv3s#0�D��L(`"�PTD�S.�� ��d ��=�ɩ4��i,}Ƈ<Q�IK�Y"�j`�P_
�l���<.��
���|u�)z���G5�"�Ȱ����CZ���\܌���+�/==�8H�Y��u�*	]��t�"B��k�� �0�ҟA����!�
H	�H�M%�N��(K��ƪ�@S�Ye�R�� ��.!����J�S`�y>�q�To�jM�B��%��!֨nͲ��8�h|^�-�0o�
���Q�%h�	������Ol0 GJo��G�͔�]J Q8#�$58�g)xW��CrI0��%:��Y3a�9����A(��E�$l��XXMx�A�B�@����᱑�fA(�O�:&oJ�cL<�K�܏�P�h0�^2&v��b[��)��� /��a0��O��u>n���N�Xo' �3`B'�a�l�q[�I�P�w�CԸ�рIF(�����,�``V%�?�U�#"ً"'I��rd\��v�ԋH����3���u��Y�����7��J�ϣ$+u��4p��~+�\�ж��.���l��lq��!�[�Ĝ�K�[`��ؗ3]��i�%�1!�І���j{���A6 s��x�sL@3)@�r0,�\Hbc�����^7��P�J�
ER�6���2A�CFN�1���ҧyЧ)b�U��ԖKg��!׉@�H%�vU�Xbf��_�P�л��� C�)P��&�8�b΋�i �(�CA;��ӮuN$���~ؠ)͆"�:Hk=��S�`a������Bn0�a�ʜ��s�o�.�n��ḚqS�Lu#�CV��t%�^aT�,���z���F�l���t!��l:�#ݹ����i	tٌ�lchtw!d����E 4�U�S�j,��@��̹����X4�S��K�Ok"Z�qf)�
�Q+����Ӎ�ā�0��b�<+�
�Q!�B��T+-�-�Y��L�A6�@/k�u�sJ���(�Z�����!���l�eKA*����w@�'�ps���D��s�8�ud��a���� �[K/
� ���O!���p�1"�0а���(L�h8݄��X@��3Dp���ćaSUtU�N"UBT�=%U����u1�r�(�`��א�1 �SK�:��HõyC��|�z#y�t�� ��jv��T)B&n�h�L
%�h��r�x̃���RK	IH��Ӏ���t(�{x��x�lK���X�R����nE�o�x
�eR�F�H� � ���\��i5!���#-:k;�tM�;���_z���Y�m�X��'8�;��',�w��Ó�(0� �"��*��Z�-aj@HH$C��9Jp���KVs�Y�@�qeL���!lE���1EVD�� �����Bd���k@
����T��NFHb%0����,
�202T�tTA̭��VD	N�a�8S�!Y����A�o�x��$�%h��Mۯ6*U�W���sbƳ=JQ�O@8v
j�:���<�uR����y��!�R`u�x�Z�5��5"�HYaK06_����I�i���l�/�� ��`�Q.ã�L͛�,@���4R-�1͘�;����6u�G[P�)c�IT�n&b�J�3 �D�P�f�e��b�m"O2]M.[���`����t�ADX �"	�n0�g����,�p�NC�����cT���g����zz���gn,!'"����(��ҙ��T#�Y��:9���zo4{j��+��/)Ao��?(��2�ӎ&�#�����K�����������d^��{d��pէ
�/A0�a���ɍ0)�*��q`��@��lm�u͒� ��#���3jP���x�{�x��Ĝ0�� xS��v��{&��ijA��N1
��Q�=�q6����α�����v2m�=�)�cAuE��Вn���,��3�g����*�0#�mN���� ����9ci�\��3��cv�JAN�v\� �� Tg�V���?6A4hU$��~rTC�FPH
qP@M�f�^��U�B@y�c��P��Mqω�����IA��N���^`T�p�T��&Q=4�u��v�؉�����UT�j���hzw�&Q��9�g�V�jy�kc`��G�\�w'��1`/�?�+���~/����� ����b�H�
�c��