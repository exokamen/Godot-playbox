GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�1      �      �p��<f��r�g��.�   res://Arrow.gd.remap�A              �cM�ة��"���.   res://Arrow.gdc        �      ��P\r���d����03p   res://Arrow.tscn�      �      4�,k�u�d��	�    res://Enemy.gd.remap�A              � G>��A_WWng4��   res://Enemy.gdc `	      T      N�q3���l�}T�,   res://Enemy.tscn�      i      �oBb>����������    res://KinematicBody2D.gd.remap   B      *       �9�^L�TDv [   res://KinematicBody2D.gdc   0      �      �|27�
�:�0�`4   res://World.gd.remap0B              ���z�����R�U�   res://World.gdc �      �      �/zy�F2��X{%k��R   res://World.tscn�      J      Pq6����ɺ�y�U   res://default_env.tres  �0      �       K��+fr��s����   res://icon.png  PB      i      ����󈘥Ey��
�   res://icon.png.import   @?      �      �����%��(#AB�   res://project.binary�O      �      �I��QK.W7�� �ޒGDSC            _      ������������τ�   �����ض�   �����϶�   ��������׶��   ������¶   �������Ŷ���   ����׶��   �������������Ӷ�   ���������Ӷ�   ��¶   �����¶�   ���Ӷ���          �        area_entered      hit    	   EnemyArea                                                       	      
         &      (      )      *      +      2      9      D      H      I      J      Q      Y      ]      3YYYYYY;�  �  PR�  QYYY0�  PQV�  W�  T�  P�  RR�  Q�  -YYYY0�  P�  QV�  �  �  P�  Q�  &�  �  PRQV�  �  PQ�  YY0�	  P�
  QV�  &�
  T�  �  V�  �  PQY`           [gd_scene load_steps=4 format=2]

[ext_resource path="res://Arrow.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 2.99969, 32 )

[node name="Arrow" type="KinematicBody2D"]
position = Vector2( 384, 192 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.1, 1 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="ArrowArea" type="Area2D" parent="."]

[node name="CollisionShape2D2" type="CollisionShape2D" parent="ArrowArea"]
shape = SubResource( 1 )

              GDSC            U      ������������τ�   ������϶   �����ض�   �����϶�   ��������׶��   ������¶   �������Ŷ���   ����׶��   ����������Ķ   ϶��   �������������Ӷ�   ��¶   �����¶�   ���������Ӷ�                   area_entered      hit                          
                           	   (   
   *      +      ,      3      :      @      G      H      O      S      3YYY8;�  Y;�  �  P�  R�  QYYY0�  PQV�  W�  T�  P�  RR�  Q�  -YYY0�  P�  QV�  &�  PQV�  �  T�	  �  �  �  �
  P�  Q�  Y0�  P�  QV�  �  PQY`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Enemy.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31.5839, 31.3699 )

[node name="Enemy" type="KinematicBody2D"]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.741176, 0.00392157, 0.00392157, 1 )
texture = ExtResource( 2 )

[node name="EnemyArea" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="EnemyArea"]
shape = SubResource( 1 )

       GDSC          4        ������������τ�   �涶   �����������   ����������Ӷ   �����ض�   ��������Ѷ��   ����Ҷ��   ���������Ӷ�   ������϶   �����϶�   ���������׶�   ������¶   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   ����������Ķ   ���������������������Ҷ�   ϶��   ���������Ӷ�   �������Ӷ���   �����������ض���   ��������������ض   ���������¶�   ��������Ҷ��   �������������Ӷ�   ��¶   �����¶�   ���Ӷ���   �������Ӷ���   ׶��                   ?      res://Arrow.tscn          �      �              area_entered      hit       ui_right      ui_left       ui_up         ui_down    2      	   EnemyArea     �������?                                                    	   (   
   -      .      4      ;      A      B      H      T      V      W      X      Y      Z      a      j      p      y      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3     4   3YYY:�  �  PR�  QY:�  �  YYY;�  ?P�  QY;�  �  PRQY;�  �  YY8;�  �  Y8;�  �  Y8;�  �  YY0�	  PQV�  W�
  T�  P�  RR�	  Q�  -YYYYY0�  P�  QV�  &�  T�  P�
  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  &�  PQ�  T�  P�  QV�  �  T�  �  �  �  &�  PQV�  �  T�  �  �  �  &�  T�  P�  Q�  
�  V�  ;�  �  T�  PQ�  �  T�  P�  �  PR�  QQ�  �  PQT�  P�  Q�  �  �  Y�  �  �  �  P�  R�  Q�  �  �  �  Y0�  P�  QV�  &�  T�  �  V�  �  T�  �  �  �  Y`          GDSC            �      ���Ӷ���   ����������Ӷ   ������������Ѷ��   ��������������Ķ   �����϶�   �������Ŷ���   ����׶��   ���������Ӷ�   �������Ӷ���   �����������ض���   �����Ķ�   ��������������ض   ��������Ҷ��   ���������������¶���   ����¶��   ������������϶��   ������Ҷ   �������Ӷ���   ����������   �������Ӷ���   ���¶���      res://Enemy.tscn          
             �                                                       	      
                     "      $      %      &      -      3      <      N      S      W      X      \      ]      ^      _      f      l      x      3YYYYY;�  ?PQYY;�  �  Y:�  �  YYYY0�  PQV�  -YYY0�  P�  QV�  &�  
�  V�  ;�  �  T�  PQ�  �  T�	  PW�
  T�  �  P�  R�  QQ�  �  P�  Q�  �  �  Y�  �  �  �  �  �  Y0�  P�  QV�  &�  4�  V�  &�  T�  �  T�  �  V�  �  PQT�  PQ` [gd_scene load_steps=6 format=2]

[ext_resource path="res://World.gd" type="Script" id=1]
[ext_resource path="res://KinematicBody2D.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 31.0328, 31.528 )

[node name="World" type="Node"]
script = ExtResource( 1 )

[node name="Player" type="KinematicBody2D" parent="."]
position = Vector2( 704, 352 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 3 )

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true

[node name="PlayerArea" type="Area2D" parent="Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player/PlayerArea"]
shape = SubResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 1 )

[node name="Walls" type="Node" parent="."]

[node name="Wall" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 480, 480 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall"]
shape = SubResource( 2 )

[node name="Wall4" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 544, 480 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall4"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall4"]
shape = SubResource( 2 )

[node name="Wall5" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 672, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall5"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall5"]
shape = SubResource( 2 )

[node name="Wall6" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 736, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall6"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall6"]
shape = SubResource( 2 )

[node name="Wall10" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 799.372, 127.606 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall10"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall10"]
shape = SubResource( 2 )

[node name="Wall11" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 544, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall11"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall11"]
shape = SubResource( 2 )

[node name="Wall14" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 480, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall14"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall14"]
shape = SubResource( 2 )

[node name="Wall12" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 608, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall12"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall12"]
shape = SubResource( 2 )

[node name="Wall13" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 800, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall13"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall13"]
shape = SubResource( 2 )

[node name="Wall7" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 864, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall7"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall7"]
shape = SubResource( 2 )

[node name="Wall8" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 928, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall8"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall8"]
shape = SubResource( 2 )

[node name="Wall9" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 992, 416 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall9"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall9"]
shape = SubResource( 2 )

[node name="Wall2" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 672, 480 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall2"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall2"]
shape = SubResource( 2 )

[node name="Wall3" type="StaticBody2D" parent="Walls"]
editor/display_folded = true
position = Vector2( 608, 480 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Walls/Wall3"]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/Wall3"]
shape = SubResource( 2 )

      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )

            GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Arrow.gdc"
[remap]

path="res://Enemy.gdc"
[remap]

path="res://KinematicBody2D.gdc"
      [remap]

path="res://World.gdc"
�PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   Godot_game     application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png     input/ui_accept\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index          pressure          pressed           script            input/ui_left\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            input/ui_right\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            input/ui_up\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            input/ui_down\              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         )   rendering/environment/default_environment          res://default_env.tres               GDPC