#!/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename '1CFwarp.sh' encrypted at Fri Mar 22 14:16:13 UTC 2024
# I try invoking the compressed executable with the original name
# (for programs looking at their name).  We also try to retain the original
# file permissions on the compressed file.  For safety reasons, bzsh will
# not create setuid or setgid shell scripts.
#
# WARNING: the first line of this file must be either : or #!/bin/bash
# The : is required for some old versions of csh.
# On Ultrix, /bin/bash is too buggy, change the first line to: #!/bin/bash5
#
# Don't forget to follow me on <https://github.com/FajarKim>
skip=75

tab='	'
nl='
'
IFS=" $tab$nl"

# Make sure important variables exist if not already defined
# $USER is defined by login(1) which is not always executed (e.g. containers)
# POSIX: https://pubs.opengroup.org/onlinepubs/009695299/utilities/id.html
USER=${USER:-$(id -u -n)}
# $HOME is defined at the time of login, but it could be unset. If it is unset,
# a tilde by itself (~) will not be expanded to the current user's home directory.
# POSIX: https://pubs.opengroup.org/onlinepubs/009696899/basedefs/xbd_chap08.html#tag_08_03
HOME="${HOME:-$(getent passwd $USER 2>/dev/null | cut -d: -f6)}"
# macOS does not have getent, but this works even if $HOME is unset
HOME="${HOME:-$(eval echo ~$USER)}"
umask=`umask`
umask 77

bztmpdir=
trap 'res=$?
  test -n "$bztmpdir" && rm -fr "$bztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | */tmp/) test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  */tmp) TMPDIR=$TMPDIR/; test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  *:* | *) TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
esac
if type mktemp >/dev/null 2>&1; then
  bztmpdir=`mktemp -d "${TMPDIR}bztmpXXXXXXXXX"`
else
  bztmpdir=${TMPDIR}bztmp$$; mkdir $bztmpdir
fi || { (exit 127); exit 127; }

bztmp=$bztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$bztmp" && rm -r "$bztmp";;
*/*) bztmp=$bztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | bzip2 -cd > "$bztmp"; then
  umask $umask
  chmod 700 "$bztmp"
  (sleep 5; rm -fr "$bztmpdir") 2>/dev/null &
  "$bztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress ${0##*/}"
  printf >&2 '%s\n' "Report bugs to <fajarrkim@gmail.com>."
  (exit 127); res=127
fi; exit $res
BZh91AY&SY沗u :_�����������������������S_z��h ;z�n�����y2Oyӵ���R�˽�z��fw�Q���(���=z�n���#m\��ރ��ُv֚��Y��ݪ��z��å{��G���-��s��<��еk����q`�P妲5�h�
&�s����-�ڔ����se�h�jD�Hkv]�j�hצ;(�RJT��i6(=�gOs��ף�����!$�   �I�4b �Ʉ��CC"=S�jeG�5O5&O(�d!�P<�G��d4 �h � @&��)�5?�z���OS�2?T=A���i�4z��M�     14ɠ�Ɉd���0F�`�	�b4h@0�	�i�� ��4 � I��Dѵ�S�M��4�6�dhCF�Sjh�2d=@h�� � 4   2J &�bh  	�z`!ddj6�=���ɉ�z��'�f�ѐh2 =@��*H�4 �156Jz4ɦRlԞ��)�='�z�I�Ꞡ�6�A�  ���  ������`�Ģ~�5o��H�TUUUV@B$ (AG�C�b���S���UZ��J��Z�}/���w����[�%�Ѩ�f��c�p�͹Y{R� ?K�k�b��;G2�E�g���c1&��Oj�n���#q;BRr Sf��8��;cI�S9i=�?�V��k��r~��9nL��a�{s-9�U�I�u��`������ر-��a�`K�B����W��]�0ؖ�����`�1si;Jw��>%�P�B��@5�;s,��A��~���~��1C��Kj�*L�?5׉��k.r*2�Ɛ���喓$K�GZM���yN����6&ל�	`�L�^�g�����Y���4T�mt���S�׻���l�$��r�Ĉ�m�2Ӑ5g2��
.*��&F�F��i�:D�5���uydC���6V�)�sS�[��v6�v#'�ܧ�O���y�(qb��9Vv2�Q�¥�X�>vw[,�/������M�&��i?X�0�r��{��}���W_	9�<Ha��&
�Yݻ8��v<zU�䦚H �A�m�������wrv�� ���w�b�b���[�s����XyL�gIﴲM�=δ�{��կ�4�� B�6`x��m�~.��Ӂp�ge洁a�^� �,��~�-x}U�uu.��a�-���3�����ى���"UÝ{�t;���yS���b���E��-�I��UH�1���}�2��g�w[?�Nu�k�jIه�s�܇���>��l�o�y�N��{�a8)���?�<�^+,.��>��q��o����-|2k����%���k�p���)��dN��p{|#56��I_��������[ w1!���bX3=�L7%dZ�� ����2�^ �{xuY�PE�C`k��P��a6Z|�o�`�x,G����0���J��)U�7N�'s�KQ�LX�_w+���,�^a	f<H�5
��3�y��[�cm�*Ù�����L|tņK2HMX�G��(k����!�h�0e�����$֌c0`�P&��,!�Nݒ�/s4h����"ڌ�+4?#�iĞ��e�k��[�_��~w�QBؔ���
~���W6���*~w�a��0a����}+�Nr��;����}�`��]r�P�1_�e�K��/�4M�M����53@�D�F(����L8s�^��ee����!���]��8u˼/忁�6��Fq7e۲�E��J7�ަjM%J���U�+���UP�ԅItC�YyQ�e��H�c
�
���#=yŜ�7����"!�� �P��t��5JU��֪ZQ�Y5�;g94�1��4�Qꤤ�e�Zq�K�K����ۛ��,�(�� �ȁB|n���Cj��1H�r�@�IZB�f��U7�!���;X1ݘK�㝖t�x����b�強P��9�N$�~ywAUf:h	Ԁf0^C�ō�[;�̼�y����$0��S�s4J�C�`fCq���>���m�[��iu�*?����B*(�]4�Y���{c����������2x4	�0z����S�r�)L�3����K���O#t����`�a����>r��4��A���-;��ʦb�V�qf�e��_��(���MQ����
J�*RȬ]i�M�wOk���W��5�wٲlr��9S�6;�)0��0&�����F��#�>�6���`�3��(I�L�Q�'^���!I��)���G�V�m�Jn��=-���l��g:Y��&\�w�$�0X:$Ci1�?��=�p�VV��Λd=6���B��<�(��b��B� �����7�8��ّq���L;\}Q�$�[l�8�G͔
�HRJ�0{')o��a�Y�Z�p
Z���bK�+���-�W�,��0�j�LB���e0L�2ฅ�o���$���6kC�4Nm�Eb���34��.�Bz��َu.%H]q���a{�Tef6U�@��ud�L�^�+3�YM)��ա��K��Z��ѻ>����n��슌�%xP��/$p&�'5����_Ec����=K�j���Lv�
\X�D�qo�iy�Z��o�P�@+���ɟ��n���pph�:�ETGh�k�]]�	���ԡ�e;�b�N��p����@}�$�����"4G�P=�?1ǤĲEJ�Ĩ���N�+�?ZP���YB��=�Sk{hAJx�ǀ3�ÖL��F"Nq�Q�M��b�fI��F�!��::F@b�x<:XW����~���$�l�S����&��ait��E���Ӡ�I$����/�P=�P��+R�_���"���� �]�HO������3M'�O�n�I-d�c:���~>���s �Q� @rO�^T�6�8�Z(�H3�*���kw���ES�^�F�Oj���xU
��:Y��I�D�a��Gn��j
A(^@}�K��ٸ��k9�X͇�?��E/3�#U�� ��b5!�'���U�x���xw_:A6k��<���([���PCb���\�Á��w>l����
 '#ӷ˭��37%Kh5��78�.�h�rb������7_� r���������}����ŕ�3��=�7ȜPm!B iղO�7\�OA)���<s].��hQ�]p�]W�´ƚ0��B����l�8���)JS���!�gןֆ��F$J
 �b/��N_�濊 Ğy���r�+Ԉ�$�i�	p�1�`�cƦ�r�%3wt`/~N��u��s�1�gE.d]�
�Z�T�
�u�(&�d�1��1HG@j�޶��mv�yIC�4)�!�+�q_�-��
�q�b��yz>6�ږ�E��GcbZF�$�^;�CA~z���tU-�6���y�E4����8�,�ɘ�U��{�1 ��(5{L�"�y\
�k�s�椤3�q�Ⱥ��J�o�B��%����5">�l~�p̾#���x�ţ�F�Tr��[RӪv����w9��������88F7�����T׆w(��g��Qd@`�`[$�|]���[a{��F՟�K����j�C[-�O;g w�.�}?�u�5 �^f!D#�������3�"��A`���2����/�8��T��(F.j�:�,��i�g<9C�lK11��N����N��NYE���?.a�~�ws:_.ދǭȔK}'~���ﾟ�'j��O��W�	���6MC�Կ�y���������=��<��}��r��������$Z%�4�c�;2
k�K��d�L��Ksⲽ���鄥����>yHb��\u^1�5��:��Ȯ���y�r#���,
Ι�LP	�q�T�4��H�L/�u�du��R�vS{x?�;�&���E;�>.Z%�!`�L"
���G�8Q���_KE=F2��E@���C{Pw<2b�n)SU�１��6�����9"y��oyĴ«�q��W>L%�9 ������3`��2�8�W~Â��Q9Ŝ �R�x3�ew�~�⥭�U�4������k���=3�����;�QiG��:Z�H�8��%�	�<�"@���\?�!*��TC�Ӑ�����B %�w�'n����QX�%w�Oj|���P+��#���"C޲O�����:�ڊ��D$ȗRJ��!�W�P��1���<����R��MpfE��X��Qb�rމ�C�鸞��G�*�Z-R�E�#�E��#!R*C�X��.��)m��⦧��{6�)�����-*Ҍ$�9�h\��(Zi��	g�(.�lR��b�Lij�v�xp0,��E`��`�Z��*^%L�XJ&���X�
��J
(EE*
A��S*�RV���`m,���3�c���A�K�e�����^;P�;�`�(c�	GX���UL�$��I!�]_��΃z��{w�Q gk�X���!�1���T,��A�Y�,�t8h�U�fnn=�V�������]��~���s�%��/y�X�'��(L�ф=6^�U
�U_N�O�i
Tr��Of(Q#r��J	R(E#P"4��V@�z�'���OO�<?k���C�5�KzU�1��0��z�:?�ћu"��q-�҅k�{=R���'l�jʰ�c�'�|������]c`�C�!�w��<���鋬2L�ӄ����FL��/y���2Ɛ���N�r�{>��g��W=l5u�,��e�h�^*l�����[&<	I��fZ�#��_�'��'}�`3��9E@��,vo�D5�?i�X��yR?����p����x�3���O8���Ϸ��M�� �[�%HC�ɦ���"Ŏ|�^^#�}��`R�-ܲ;ZBw'3l�	�xAH&cE5AXJ���@7v%�f �aP�Y�C�58�t�4{����Ko]��⁌ ������m�*��e��4C꓂Ki�DY#Ai��9HQ��� ��@����:J ��)��S;�쇃z������j��.Z�ܪ&��(�&/�/?rZuD�fm�q�+�;�P�B�&ML�ߐ�Ԭ�`1��&&YR*��J�T$ȻBυh�C"T�^�]��YQ�˗���r�E�/��?$D�|��#��ͪ��]y4��ޤ$���U�#X���i(	�$*؊LD���6����n�\�Y�!s������C�H]����-Z�e�Ye�]�/���;�'�K����yݨw�7Ȇ�?%�X��]��`G�ː�S����9x]�����9�u�Q��'S`��.e(�
�;x �,*2^���GA�wuE��2QU�,e�h��(q��	Ld���D�/[��bhMT�0́���c�Y6C�Vl��Ř�1��h��m�);�,v��:3����Y�(P)$�^m�ǒ�����g�J�ý�h��;���,9�D�L��إG�|����Bn4�n~coP����hF)D�Z��
Y<�d=��Y��s;E�M,&��F�=�$�iT\]�F����i9���b��=d$UdH�F��-U���v!���8�!j,f�A��67TZ}	��Ù;��}c#RxB�
h�m���r������*�`=%8%<��0As��nr'��$a7���۬���	� $(+x�÷�z���a�`�_M��,l�Q4����B
H)!���!���HX��"��壍��R�Wb��"�����77�x�p?0;㬇C���כ���qo����Rf�#0�xf2�r<B�f��5%Fs��.3��e�Z��s8�]��K(���� p&psU+�-\P�Q���OV{�����Isq�4�7��j�J���뫉��	x����DP6���%��T��7)L��m����'<���*�(����`�M���^i�e�B�))J�l����vX\��:1tjE�YRhKſ��3��u�>F��Wf�#�vdpu��]M���r�ȕ��b�#S�Y�:D�y�ª�Y�p��v~��/Dw��@�h�(�ur��b������}fX��ǧ�Nښ
f�Id��#G;X�IRS|;:y���E����8B���Zي>t�orU=;��<��w�I�C��3���0;�h�/�o�S�sm����lWW�L�'W{R�i���hW�N�6��}j��ZۭoaU�Orbý�-ݙ's��Tz��
��$YУPk��Nh�WImB�
TY�wt��GîM �Z���^A�� �����+333_�^@쨀x.�Ct�w��7\�=�N�̑�M�߿��9
��j����$��I��@�ݝ�r���4a������ny�v{��2����u 8��h
y§B������;%�z�Ȥ���$��\�<���ZQkGs�1��S�a������P4AtNp������:����~"�JR+`u�	�,{�2�I?3 ٲ��q��6e@�L"Y�����Ii
���v�y�?�(����T�ƌƀ���F�V����a��	��q��l�A��`/TQ�.3n�*ź�	�y�r�Ye-���yS5|��`{.#�<<8}K������uxd�Y��1Ccp�G��q����MQ6����	���l	b�&9�0�>����( ���n���}ϔ{��H�1�#�փ�}B�ZG�R&��L!X��G�c�l�Ѷ�@�/U�y��*%����J������X���C[p�:�Q*(��G�A[ �'�*ϐs�:���}���hz^�.�ŧ�ߓ�Kt�F�ɬl�I�j�Ҕ"r�"|c�1wb���_�B'� %�� �H���B�B�����v���\��j�q��V���D�H�K���]��3�b���yVD 휫b�.��������� �!��U8�-,�g
�m8#ԾR��h񘠃q3,��&dѤ\�_˃�-��Ь+^훣{�o��m�^�>�&4yg�Qc�@��zBԋ*ӑ
��R�|��\�ri�P�d�b�~h�*JUQNGRB^�2�NI��)k-^䏟�}/�E��և�{:�UUUZ��+�ك�I_�=W�'/���w1:#\�8|(6���</l~�xՎg�?����@�0�X�P��1����ϵ����*og3?e�}�9�ϞR��48A6���}�S�[�C'9�:G!�ӈ���a����_\^ĞuA���Dy�PkWH�"�!@�v|��5�|(\�J�h;jq�еj���l�����XQ=`�B'8��"�P�xE�.�B*Y�P[�l�H�,���5�}c�޽��������P8c�kk����/(|�FY;��:E�4q�F��!a�~{nx&(V���3rKЩ�u�U�ǫ�Ǒ�����ƚ�.�� �pH���	t&����,���Fئ���r@�'K
���O���G��y�>҃����K���M�x���׽�u�"�T�!���_�-܎Cz}��ӟRzR���D�,�wbd�~q��S^�HI)a�xm�t���RT��?1Zh�Yi�P�VJ�F��|Z��:�vP�-��w������Ƨ�JR��t�(��hC#B��Բ�ک@�@d# �$B)"B(D���T�[��� !ș�/�5>�o��<j����� qa�	Z���DUic�z�"�H�
0�U�5�ag�~k����ާ5��9ܤ�}'�� �H(��r`N7�r'G8qx���/xL))"�f�`@L���xi��\�=��>��|ޙ}%ӡ����.�Ee����e�4��g���q�&D��gh!k{���<������ٌ�˖,�W��S�����2F�ұ'H��aL�%�E�4Zl�˚Mz�Љ��� N\ yp ��|��i�g���2H�ߧy=�(�-ao��ZU*�(��?���IM�����&AǗ�'	m<��CAĚl�Hg�\�y��;�>b��wT�MA"<��������F�����gʸ���P3F@��!"H�`���_�T�}T8��>ԑ�ڟ"���h��'�I��"$D	;�Q*S
 �"  AX��->X0i����j�"!�@�C�j�ϱ!��� �f�=����4��m��s�����8�nB
�ʆq�$�f��H)f�f����]P�bY$Q
T����E(�*���C�`���?e��<�"�`��u /��o̺�V��N��/�B�>�ɖMa�up�,������)��A}E��5y�a3��f�J�����ͻ��g�$q<�A�t*��HF�G�	�^6���Nh����*����!��z��Φ�*8xS�wQ0�*�mP��,�Uh�ub+����z��yX�����b��hD4��q;T���O��Ø	�N�Pډɬ`�o4��y'����"��Wk��<��m2ޥCtDUoU�g0@���3y����;O,HAI2'��C�6��_���`��fD��A3��?P�
�{�y���X�<ٱL'[��n=d�YLe��D�,t:�R�A�Bw�m5 Dɩ�v�=�,��qL����,na���ba���hu�hQ��J4GѨ�,T;&���$,�4b�y�����5AT�F�3wo�[XF�C�'K�����r6��nF\0�p���!{=ʇ ꆍ�T�YD�R;�E�6{*T��׍B��ĺ
tJ%�0� �
B��Ćn��K� ;��|QY���TL�H��!�5�L1�C8Q�(��,�Œ%m%\蛑.�{-��EE�=^%�$�d#'J4�ˢk���27�n�Ή�\��B��񈏮$�.%�G
�rq��E���q����J;k)J"HS9�!0X!��;���}0�!>z-��V҈�*@�
(�|��Pw���NՊ �� w��!:nxB� 1���W�-�Y(TJiҩ�"7�a�9��d]�<j��ʰB�/�
P�+�=s�Ul�j0u����W��d�=r�*W��(��}��^\��Tv
�z��Nc�n��$W������S~T�{ �A�=Y4�P��-�cs���ɓ[ r*�a2*�)D.,hxHZ,U#wA�LS�ɔ�l�|�ZI �hj`gmP�����9��|'8 �R�,k Rd`�W%Q}����.���>D\�E@E���T��ՅbJ�,�*B� RNJ(Nw��'����@�-�dZ`��#�!��䒔�g���C�ۯ**��(]EB�TH�UY68a>�P4�q�կ���%����ı��$9L!.P)�Ѽ��D��9;'^$�ÆH{���a��.'΂�z�.�Ks��A���(������Lq�^]�}���quh9�K!Ͽ�
�.g�R��Դ��
d`8�H�D��@�
o�k��ѩ��w�:-ޢ�fz��'�=��h���=�R��k�C�,N4{�D1���6I�{H�5D���҈�2r�-�p�Ե�`7���/��Htr&��0��qa�� ]�q`�?(7�E�$I �HR!:��p hZ5��6R��QMb�P���A�.Fɘ$	Q%)x"P˄��F�4�4
 PN�"�"؂P�I��^;{�0Q�6=y�xx  H� ��.���}ڡ�{�k|�`5�->g���>ъ
j���0��,��Z��\*K�A�7�&u���ۡAjcv&8�R�'d0j�-�;J�:�k4���U/j?**�(_�<#�,���^1g�)�:��o����΁�u�^P"B �9Ɗ`�`�I% k��q,�n�f��P�(DX�"F%U2�
1z("�z�B��2S�n�^</ �l�����D��=Y=2=�w�[
E���yJE6��QyB�
�<h��Z )A��O'�#��m��s�}�A=x�`u)�7��P�s(5�B�e=��!�
�-�C4��D�܏P�PϏi<�n��a�TԺ���v�Ox7!4S��K�а��B�B2I$�$�d""D�2REJ��ȁ"�h���<� �n����=ܜz�
�� ���##<#A��j�7Mls�V����=u+���f��	�Lu�D('/K���T��V�74���W���y˘JD[7�i�oE�Tw��I#���N�Khh���;
R�(P�5<*�{���d�%�h�w;B������v�L��PS_�9�cѴ��UC=
(��!PZahʖ`X�������M"7)�=�*4'-6ղwy� ��9��ƕ۴��cr��Z��E�N�eU"��R�D�@�e�Z����]A�+aAd�,4cc����Ȫ�H8(v7�A9�<K�= y��

���v��S�ձD0�/\� `#�Z��5o���pl��)��>tܡ����(�@J,(	!Pg.e@�B�٘n��P�k��*�#�;�@]�"��@�d)�����mb�^i�$�L�$mDs��j�op��XZ#"�KI*>�>Z>�����"gl�(��@:E��hl<.��uolu�z�{��N�ʠw���k�Mip��ČI8d@�z�!�A@��hD��L���~��$�;�
�tՃ�`K3i�`T>M�s�/�A�WD@�
�J��H��Q$\�
$H-��[k`���%��[R��8]�-'�L��1�aL�,����܅�]Rd/#0�����H`�T�1p�d\��.�_���(0+*(������r<�wʸ��k,��ϊ�(^Sl��Q��k��O$��� ���I)�n�jU**�x*0Rm�Z�1KKO��_��ǔ�n\�����3���B��g(QF�X�D$K�Ɗ�b���i��ɀ`k1�0����ۜ��\�Z[T��P�(���
��P5(<�D[m�B����RJ$�F4IH��\�����<���4R�Q̦4({�T�8�s���<�@��~��R΢��RI�	�ӂ!l]��r��U*R�C�1�7$�i.����h�@x��W��I�N!�`5�P�D!�7%���3���$F�� p��hz�
����;��p�������|O����6�Ԋ�4�<KG'[P����t�T�xQoט�Dv"Fù:ƈK�9��5�BE ���\@jE������UCXFpj�FW0X�U7�JD����8��0�{)�-N�tȇ�nkMc�e������"�=0�A�\��dALW���ƀ̓�p�QAsP��`�X0�U+��"���%��l�	ߍ�Zr����fo��ҙ�`�T�9�4��~<RmC�CQ�:ӳ1��7�+ݑ���6�8�~_��F�9���y"*I1b������`Q3�*�JR���O6�˫z�J��7a�6FXeU�ԟ=9��?��M'A+�?���u06������z�-55:Wj��	��^���rϜ�ؘ��g8F!#�\vN�q���$�����D���TGA(�YJ=L�z��2!@؉-P�3T����ȵ	�Ĥ�*I�D������Cx�PA"Db�wAL�n��!U�efv�i�H#�"�U,`il�H��^���%ȧ��71م"_���	���Є,X�BX�D�4��+]'�7��:�Bԁ�1@w9�"�(hnf�c�08�NH!��Q��J�b�q�`�&�=�U[�6a��v�F��F�H%#I�I�i{�F��+By룪�z/�JL(��\:/y��&W�����M=yd��b�cji��R qZLV��ql�]7`��&�,��������6���f�rFy�=�{F&'~xp�Nsad�2:]������T'#���Ŕjp�|�=��D��A�]Nwj�����a:Yv$�M/Ss��ޮwc�m;�Qذ�~\�y_�uiz"&h�����К	0�.��V-1
�����o� 	�ITe�q�+$9���R����P$H2$��'?���:CAc��	H�-Zh;.��}�y�M�M��z6����N���i	�vds��{���b�(C���6�0��1$w�HBG|h�@��{Qx\��S���yҦ��^�-�E�7�JNU*��&M����wF�pG��C��yx_���	��y�5R8H�D-�9/�	 ���tI����XJ�+M�U
^��^�ƆF|�g!MM�5�ű[^��2(\M��h����a��Y���Hu�S�S��	�
�����Ԭ�W%`q��f{��L�q�bV(2�`8�8#a X
��s�`�r�v�f�KfC,%�jL�n�l½�*{�0�UoT\C$Q��(n���	�4O�e����hk	��F)s�z�Lfb�,4!�#�b��n�B�X�P���Ǡ9`r�
)�S8f��}�_c�V�?�z�E-�����
�"m����v	�45j}=\i�KHb�R��:�:e�Ctپ��1`�3����3k�|��"0Jh��7!B�j����k銦���oW��=�gR�BOAR�'`� �,��TF���#l��fN�-z��Kʜ��}�W[؛h�T.�?jqK��[%R�\9���Z��H��i7��Ӱj� 9�",��6%�A�\��6�,(*�-�QݘHdn�4͏Q�]t�Q�+�k�$�1/�}�H�d��~�0���:,��3t%�fMк�4D0�)��U`e�h������(�x����̎`��ؖ#c�3�Bj 3�˧���#�ʹ�	=�a��G�$��0G�غ�)�	iiV���_�x�գ����7}�]�2C�9sT���q����ƑQH�q�H��!g߷��jr�EP��$�\0��],�(RN��5�� �0\D�QI �FP
4��"�Jǻ�^s" z�����������=�~n�չJ��(r<Ht�qK��|��y��QˬJ�i�9p�0V����q~���Ώ ��(����!H�ś�K7g��ʎijJ��ERH$��KE! "@� 4�v20*$9�h0���ԣ9�8Y%P�	
q��q�<�ߊ�-��x��By�;��2]]�� ��{~���@�A�\B�)�s�D��)�`������#e�,�P�s���}��9�	#����Ft�� �P��ԫ���e:�͜ �ӕ:�I�	�op��-|�'y���)�?���(kn����m>#DDM�T�(�� �KV
X���R���)0E���$B@FM'��Go�ސ�#�K�U �c��t!�pV�)u�<����
�_��O�D�7����'�V�5�l8Bj� ���3���dx�����K*����h0cS� G�t���<�O��A$�Ω P��Hy�s�����.t���KI"M��W��>�P-,��%`)#d���s!��~J����^$�#��3(R���@*|T)>��D8uFE+���?�b!sj�j���4 ��������@*1��kZD���K2����"�S�Q�O�a�̢�?]���0�߳C�L���N\�N��4*���P�m^��S��OQU��e`	`��K���qVtCqi[a���(܊0��G:vD"hDHE"���+�8�J��*%�!��� 0���C�;f-VH���(;�d
7����U a�?[`�B$	�$�H�L@	�,aR�ƣ�h��(�4i^"r`�ܤ&�L'�X����`C{�E��E��5',KC�Y���Z�Y�Q��DM���$��U�ڔ�^�*8�U��-���|Gv�V+�{]6�	J�����B��'�#�w~3((���`�����?���P�Q1�M���h095��7�)�̤_�}U����J]nG4��Q��PLK$<�����B����B�N�Tj'M��w�x�a���ɟ!{$�-�k-<钨Py�\٨,D�c�y�Ia2c�h#�
MԤU9CD"�DH����0�6�#��� ׯƄ��-�{��bc�l] p�������51!˰bs���>�R3c
E1\S��tZP�As��CN�jt��f�Q�$��I*#/D�y��
�QSY'D��R����oN�8���.�e�	8��{Z�6�8��5d�:�Ј̶ d1��(�q�J��ƴ�,�I{5U�Z.]UP��;4�N~A�a8Ha^��=��� ��H�|6ƚ��2{C��"Q�Eة`sY&Y��[$x�e�o@�u�zʖΠ(�-3�>A�t��
!�!��l�U#Jqq��'*F�b�,�C���R��� w^3U�8�E(+�^"�� :�w������<�,�-�6��Y ���9Y&in��o�`�c�IzR�s��Լ�i'+, ���,�����k[A���C�4�N����EN(�nA�����8�B�ty���A~GV�@©Y /l�Ǒ��OE=$B6{)�K�-8�3 �(�ZA,�"j�Z����B �M)g�� L �怛��x�r���9�	܄a71�^�v{�tz��(dt(Q����EG��呶�bC�4U�B&�GP'��OY�za0x��D��H�ց�%�z����B�D����	�,*���$%HB!m���S���<.�Y���'Q��5~R�唤�t�?��c�0�T5�-�Պ�Q��0`�Q��?��W��l�ޅ�B�hƍ��kbmmm���MF��75moj��c����o��+g�|�{�� hm�%�0��c�i��w�T�����������=JrߖM-�y�,�9#G�͜�sfR���T��:@j�s3��ŷ��/Y���iuԀ�r��`�k��x�z��`���gO���ᝃ�+�D�����A��'!�32fI�I4;�	��<�������D��*��!fig���g�5"ܢy0� �s��f������1Y����	�� �G�Ј��I����*g��
UzA4(gM6�Nd�,͢�a^�WM�i=����a����0�ʪ"�"���;i�6z�'I���Wm�i���~�W���%�KS��؋��v��5[$b[f�t^(�'���a)��%VJL&:Y ���bUi!n*��'�?[��6���	�w����vе� �H�H��,<��g��'�ln�j��WN�f�{�ѩ�N����מ�=����&�K:����jWV@ă�|/�'&e�⚐k�1osk���LU�chZ^��S��ϙ�a�Ǿ��OA��<�������q�y;��/�gV��1+�T�Ô���u�����c�r��F�Hsx}?�z:4x��ta�6���ɯ�
Bǩ���tn��	bPHpe����|;y����D<]D�����z̩�����R&�M�.�[0��J���g\n����Hp
&��id�np'�B��5�����IW�IT�'�/�9l�%b�nY&���
�NrR�\xT�l��QNXY&��;��(��k2*���I���k��K�s�y�>���bԗ� At�?yZ|��OfC2��K��n�9f�����^#���8�N�w��g����	F���7��k���wMrj�'"���[����`ʋUX��T��*'a<ϟ��>��I$Paetl�>g�vwoA������]��@y	����/�ʎ-�TG������a�a&C05��9�(<n��"	�݂isˎ��ʪ.��EF���w~�_�>��Б�	��E�f9�Y*��I�{�\�ި��������~P��)�lq�:��_>}�w������}˝�29�x����1vM�zL�����*�ŀ�T'�F<D?Cuw�/��0�!�a��r�+�qص=�3��JA:�b�A`Ȓ���Xw�B�@����T��#�����_ΆfGk�������,A���U��y|#ڜH���4����O��# s� ��i��H�ݔv2�!�	[�����7�F2�B����V�Z1��ۑ���n�/2b�,���1b��>�8���¬�,=d����J��^c'8ʚ�sd�35�<IxAyhv��9q��qeZv���C}O�i8�R�?.�ˁf3��$<T ����1<�2����!z�²y�sc��w�@_T�T�T!���A�2F���8s�31��8�:xQ�����#�H&���X�C#u�Ϳ��J�g�Q���R��K�A�,a�y4�(�3S'�T��w�t63y�%����.��oS�d�t��i�@�zK^l���A몓G�2e����KqXؼU��_�P;6������aa qAj�%V�av�������N�i�>��V������D�vjV78�Γ?�C�Mf[��_Z%��w1�p��B���t�uβTJ�*��D���J��p�W���w$S�	k)wP