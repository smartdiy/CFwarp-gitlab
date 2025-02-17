#!/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename '2cfip.sh' encrypted at Wed Mar 27 13:20:16 UTC 2024
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
BZh91AY&SYe+�\ s_�0}����������w�����������N�$�z ]��   հ�Jd���i�d���<�����<���4�ڦ���1�4���4�hѐbi���"�A�A�M0�4ɡ�b2`F�ѐ10�di�@ɓ& "M?T��Se��    @         R��@��4i��@4d4d   122 ��dѓ *S� ��� 4  �h   44    4)�L	���!�h�O�Q��m���i����<P�oTf�i�4�� 4 =@���M4е5@��[�ħ���)�C:�P=ϣ]��~e��0�A���I�'_=U��i���m�Nd�S��)TT�T��u����f9P��M�śڶܲ�c��Ŏ0�e�-�YHxM�U%���4U����LQT��Xِj�ח"�f��� ��]�����T�N ��A2^���ʰ�Cks��?$k���q`�#���7���ꍓ� Upڭ�(��fi��
r����!�c)]Tq�	���h,�S��N�b2O�����`Z-�(9G� ���H��=��3@�hv�! 
 ��&Ѭ�7i�U�_ q�Jy�DDW��N0	O0����m��E��$0Gs�:Y����g)���ֿ�
D+�1��ޞ�IB�^���1�7�:#)�!|���z�jh�*��zD�qx@���RA�x씻5w�Y3�h� �C.�N�k�F�	��˯��Ɵ=��Z�����B�W-|�"��VB�Ĵ�m��<���؀Y���^�yA�Fd.�V�ƟJ3���bE�vv�?p�l��j�&~s#�������q_�s�3��h=�b;0�""!{��$C�� c+<����d
�h�d!��x��\O�7���׵'��7<	\�+B�o�$�#0�� \��Had��j��$
���%��C�Ԡ�B��զI�|�y�'d�=�����j`�i��ݧ��b �L��
��%g۝����2S|���KBg����:�YD��f1�5k����s��9����jw4jx�L�=&R��y�t�y�ᷪ�E*^��ߗ�. ����Yn�0�נK���R�I%�SĜ(�F,           R��)JR��(�k��oot6�Ś�r����mFѰh7�����+�Y�Y'��0�0��Zl�B�!�w����m�v�Ɲ��b��O1��A A@�!D-6�����f�Ȉ�	���(!����ä��P��[� �2EO b�DD�D<��4
�,R�����4h<8��"�18����u35�а��
�HVV8���5�:�����'�%-�O#��0�q�%�ֆY�1��cM���_��^L��� ���Ea�<��--0�n#�B�i쯳����'�-��W�J Â:I�Y� PD��,��f��a-��d\��Z��<����)y��H֭RX���H��\Д��Д��qE�2�<�����߅���x<  (5*�
!�Hrh�@ȉ习��L��Eq@��Pr��%ri���?0A�+��o~s�ȷ"�'3S	ǥR��d�(HB
g��`�`�`�`�`�`�`�`��9��VR���R�`
ҥT�:D%$0%L��=�6*	Gs���r�e,� �ù��3 I=D�9#�r�^b����T�%)~�ŕ6��	 (�� XL��^4)�Puz`\�[d��za�e3"�A�rԻA^=ZJ�h���ǀ`�D27L�W���d.��p�J�V����y|u�
�ռ��1���,� �y�%��N'TTX�ؘ�i�dU&���pB��-!A��+!��rI�@q��YҔ,䔺�q���༕e�AA�Xl�2�b�&���u��4�א拞�M������(0q�@��)�J��x��6.F !A�q�x�䔱� ���xЩx�: 8H /��Be�w��z�GDǫ�9�P&��Er�<���X�:2�p��g���k������-���Ze]�XCzLl��x�s�4��l��C�(���dJ8¦�*D�KT#@`U��	Ēh����Kv���lP1M�1q�I���%��(�b%��Z߈߿�.�$a	�0 �AM�KC8:'�˜�-d����K�F��*:D2>��3F	�%D�`i�
<D_n�F\��Ѐ!�6Ρe6[���p�P���w�}���"�"��`-�3�D.;F�")x^?W�x���A��E2�Q�C$��L�1 @U"@0:�$�����5�ʛ���'�DB@B8�\�L9FCXx��9�oH�49h����`!�|%�p�z�) _!8qa��=��N�P�cE��R����!6����b2L`/Z���F��m�r�A�����a�)hk\�}�Q8p�T�@���6f����@���(�@�02��5��f6�CzR 2���6�a{q�xO�E,ϯS�y�u"�#G��a��.%)�����w? ӆ�r%�A'�$1L�C�_��|�*K�z�&*T�'��~:|s�,xj�Y��L����}���Z�_��V^9L?�\Ĩ���0�G������S8�^�	���
�?�`7��@�}���L��2�#C�O�aY�k����a���j{&��xy2�������!߲%C��*y����l/2�C1�s��h��Y9�8r$���Սu��8x�*,����"����$�4�3I��1��m���f��1�頻jN�����XB�l�Ԭ�T��P*���L5X3s0��,�^�[�(����J74h�m����.Z�W&�<S�S�NX����C��n4f=�b���?�B~Ú�5��C��#�w�LU��
���f+��d�y���^�v30J��n�u����;�^����Ð���6%;�c�z���68�떎FO+Z�\��,�1Ŋ�g�ECe��4_���)�)^"�