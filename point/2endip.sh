#!/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename '2endip.sh' encrypted at Fri Jan 19 07:09:45 UTC 2024
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
BZh91AY&SYX�� �_�D0���m�߮����w��[�m������ ��� )#I�=S�h~��M4�Jz��h�=@ 6���2�d�Hi�҈0 L ��0 `ɂd� ��LF  	��&  � �0L� ����C   �0 C� �&	� 211`  �(�h�&h&T�)��h�HѽSE<�M2`C�    ��.B�EB�UUUUUUUUTIHT*HU!JB�B����9�݇�%B�������R��-���y�ӹ��dڻ��X��:*2�su�L���o�>�},ڱv��6|e�9�kխ��_����X�h��hՖ|=��'��~K���R��i4�̀�Yв#eɫ���(��OZ�Y�ȳ���yhmCƆ��m~�ߥ����#��F����X��ԑyK����s#4V��0��c2�%�Y�����k��~�/1$C"�j��~�����P�W�.���[i!%k�#ˤw{�	-���oh�����;9d/*a
G�I2�e-N_,,�EgI:N�ž�t�	�*J��;�&T�!`5��}��6���n��7���M���e���>χ0�0��hʗ&�Է�^%�T^H�i�R���!���|�FQA������pp��px�����
KRRey(p]�+P;��k��{�yFl�q|���>3ݹX�Izu/R�T��/M]'v��᭡��k�ի�cj��0l���>��'��i�UG��E'^�:�v'�T�l�"�P��Z��(DCre�}�QQ�DD2�
�#ě*��Eǽ�+{�����������H�t7P��S��!js�a̅=�v-�����z3��;d[��/_�+А����\�˭J��̅��zLq�A"�Ƨ���ۘ�Ҳ"��q��Q�vKK'�Tdo�ކ$[�#=G�"fE�5��N�&Q8w�Us,���&[q�l4k�DL0C�7x�^�3�7�6Frw۱�oH���"կu#M�Z��c|���x��v���*��n�و�:�e4!��LV,�oW�����pesr��l�LZ�Qc��p8g1%�%�]I���,B�N"-B�e$֋20��8�䋚�-�6���Eσ5ضMeFrJ��1��O=����
��K����NgK�piX�I�%	�Mc2�6��b�v�u�]r��`mY�ʫ�b�	���dѷe��47�hX�DҭV�%��M�q�v�l�XXi�ɛ�f���q67ٗg<�W�p��ǚ����s��#�?���a�o��v����S���@!|%q�ƨ�Oa񰥱V���e&���",������kcD�:����IB�.�V��b��VU�7�hZ��&�L02;f�Er`���hj�:%����1�Fl�4jk`BfUT��,��"�`�߄XWw���V�;���k�L9�X1�Ŕ_��.
�.�Z�I�rE8P�X��