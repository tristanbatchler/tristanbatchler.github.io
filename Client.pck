GDPC                                                                             '   P   res://.import/Client.apple-touch-icon.png-a7709734428a0af17a3f60d3f081dab3.stex        �      ��y0�N*Q�v���D   res://.import/Client.icon.png-36c57a7e4249c9a9228b664e4f8b5683.stex �3      >      �``q#h��k7V�=�@   res://.import/Client.png-110c50073966eb7ee835957b11bb080d.stex  �t      -      s��Ӗ����?����<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��     >      �``q#h��k7V�=�H   res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex  @4     (G      ��!�i�6p��9   res://Actor.tscn0
      �      A ������mw��ն   res://ActorSprite.tscn  �      �
      �Fܬ}�	fn�����B�   res://Chatbox.tscn  `      �      -�{N����LX�V�0   res://Export/Client.apple-touch-icon.png.import �0      �      �I��
tu�Q�nd$   res://Export/Client.icon.png.import �q      �      �g��Z4c׀R��$:#    res://Export/Client.png.import  ��      �      �􂿓��u@�_J   res://Font.tres P�      �       @�i7�JC����W���    res://Kenney Pixel Square.ttf   0�      �c      ��ꆸ�����;�Luz   res://Kenney Pixel.ttf  	     tn      m�,�69�y)�!�8   res://Login.tscn�w     �      �%>T��N����   res://Main.tscn p�     �%      2!�wqG�I�J���]ͣ   res://Player.tscn   �     |      ;ĵM�n���!Q�DF   res://Theme.tres��     �       �a j(�Ĭ/�ژl��   res://actor.gd.remap@�             h��ݧ.Zv�yǜ��2   res://actor.gdc p�     T      z���hܠ�js���ڧ   res://chatbox.gd.remap  `�     "       HH:�S��p7Qj*Ef   res://chatbox.gdc   м     �      ���%#�%/��P��   res://icon.png  ��     hu      �/'t��I��*�Wd�   res://icon.png.import   ��     �      �d��?S���4m���   res://login_screen.gd.remap ��     '       0ʴ>��S�-)\OjaG   res://login_screen.gdc  p     h      rީP���y35�D�X�   res://main.gd.remap ��            ֤�\n�������Dݮ�   res://main.gdc  �     J      ۧ��p(�Q�(}   res://model.gd.remap��             ͠���^�oxlu�sa,   res://model.gdc 0%     I      �o���Y�?QE1�M�R   res://packet.gd.remap    �     !       6q�E���7�ʇ�\)�   res://packet.gdc�&     [      �!x&$I����GN�   res://player.gd.remap   0�     !       �ؿk�5s0n��;P   res://player.gdc�*           ��PQ��b'H(���W   res://project.binary �     U	      ��[wp*!m�@�bVA�   res://server.crt -     2      ��F@��+�0��'    res://tilemap_packed.png.import p{     �      -�9;_�GK�M�؆    res://websockets_client.gd.remap`�     ,       X_BH�:�"���,y��I   res://websockets_client.gdc @~      	      ���K�6,��w����l    [gd_scene load_steps=5 format=2]

[ext_resource path="res://actor.gd" type="Script" id=1]
[ext_resource path="res://ActorSprite.tscn" type="PackedScene" id=2]
[ext_resource path="res://Theme.tres" type="Theme" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 31.4286
height = 0.0

[node name="Actor" type="Node2D"]
script = ExtResource( 1 )

[node name="KinematicBody2D" type="KinematicBody2D" parent="."]

[node name="Label" type="Label" parent="KinematicBody2D"]
margin_left = -50.0
margin_top = 32.0
margin_right = 50.0
margin_bottom = 46.0
theme = ExtResource( 3 )
align = 1
clip_text = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D"]
scale = Vector2( 0.7, 1 )
shape = SubResource( 1 )

[node name="Chat" type="Label" parent="KinematicBody2D"]
margin_left = -268.0
margin_top = -49.0
margin_right = 268.0
margin_bottom = -35.0
theme = ExtResource( 3 )
align = 1
clip_text = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" parent="KinematicBody2D" instance=ExtResource( 2 )]

[node name="Timer" type="Timer" parent="."]
wait_time = 5.0
one_shot = true
  [gd_scene load_steps=7 format=2]

[ext_resource path="res://tilemap_packed.png" type="Texture" id=1]

[sub_resource type="Animation" id=5]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0 ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("Sprite:scale")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( -4, 4 ) ]
}

[sub_resource type="Animation" id=2]
resource_name = "walk_down"
length = 0.3
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 1,
"values": [ 1, 5, 9 ]
}

[sub_resource type="Animation" id=4]
resource_name = "walk_left"
length = 0.3
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 1,
"values": [ 0, 4, 8 ]
}

[sub_resource type="Animation" id=6]
resource_name = "walk_right"
length = 0.3
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 1,
"values": [ 3, 7, 11 ]
}

[sub_resource type="Animation" id=7]
resource_name = "walk_up"
length = 0.3
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 1,
"values": [ 2, 6, 10 ]
}

[node name="Sprite" type="Sprite"]
scale = Vector2( 4, 4 )
texture = ExtResource( 1 )
hframes = 4
vframes = 3
frame = 8
region_enabled = true
region_rect = Rect2( 369, 1, 63, 48 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
root_node = NodePath("../..")
anims/RESET = SubResource( 5 )
anims/walk_down = SubResource( 2 )
anims/walk_left = SubResource( 4 )
anims/walk_right = SubResource( 6 )
anims/walk_up = SubResource( 7 )
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://chatbox.gd" type="Script" id=1]
[ext_resource path="res://Font.tres" type="DynamicFont" id=2]
[ext_resource path="res://Theme.tres" type="Theme" id=3]

[node name="Chatbox" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="VBoxContainer" type="VBoxContainer" parent="CanvasLayer"]
anchor_top = 0.7
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 10.0
margin_right = -10.0
margin_bottom = -10.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RichTextLabel" type="RichTextLabel" parent="CanvasLayer/VBoxContainer"]
margin_right = 1004.0
margin_bottom = 136.0
size_flags_horizontal = 3
size_flags_vertical = 3
theme = ExtResource( 3 )
scroll_following = true

[node name="HBoxContainer" type="HBoxContainer" parent="CanvasLayer/VBoxContainer"]
margin_top = 140.0
margin_right = 1004.0
margin_bottom = 170.0
size_flags_horizontal = 3

[node name="Label" type="Label" parent="CanvasLayer/VBoxContainer/HBoxContainer"]
margin_top = 5.0
margin_right = 43.0
margin_bottom = 25.0
custom_fonts/font = ExtResource( 2 )
text = "[Say]:"

[node name="LineEdit" type="LineEdit" parent="CanvasLayer/VBoxContainer/HBoxContainer"]
margin_left = 47.0
margin_right = 1004.0
margin_bottom = 30.0
size_flags_horizontal = 3
theme = ExtResource( 3 )
max_length = 80
            GDST�   �            �  WEBPRIFF�  WEBPVP8L{  /��, �(hۆq����@�גa���")����!#��%'\�� ����"�.�ֳS�uW�H�m�H��+�bg{�~3A�ܸ��%|%�U"$�n#)R�ð�o�m��6ڶ������afff��dP̌c���Aۓ'�-��>U]utW�ϯ�mo�|��KJpO�hնa����d�w �v��{��*�A��N�	�$�m�-�6��ļ���}u�:x�.I!��a!$i�u�w�śR����	J6�;��@���z;A̕��{��{u����u��t�N�S��[m��f�Y! ���ߏ�fC�&t���:5�ۓ8���d���P�Td��K�p����̳C�r�iwf��,����CQ�LgvTS�C���z~/�
�I�A��g��/5���PEV�;�5�7z��p,^�c�E���"9�H�.m�C��$�=`�%>��PKh�6�4�tI ��	��"
�!�8!�É���'��0�����|&��-����=Vi���	�'��h�&�N}��p�FPj�o�e��G���m�a �H|�����W\ݎ ���QY H���=d��f��U����s�6�r�Zv����]-m����ew�f�9�6AX��<([S݊���󦈷b��-nx֣�wxũd^q* ��8@�Z��_^����yѭMt��A�Ȳ7�~�q�&0�2�� (V��l&���Z��,�^���:�~Y�3kU��'~!��_��ڕ�۩�+R[6�(��٘f��`�̯i�Y��C�i9��ϻ96�qL�f�:~�-n������~)�W �t�B=��]�=DL��7�D+!� 0�J��;���{+ͩ���8(�>����E���LU<�i,n�D H�$"�+-�*���Z�Q�u;������)"�9j�j]��~��jݎ2����n�5Q����F�t�#�X��}_;�UN����h.�e��r�jg��}�&�J�sMն�$�4k�Ō^Z�������2�d�1W7���13�y�i��L�j�>6��&��O"� `�n�i�s=|�:{ݭ��K����C�S�㗯��~�f|�����H|��ab ��Ρ �����Vs��y��G���{ �l�>b�"C����_U�h����/���殣K��(�Y� H�+txҪm  ���fq�8�a����SV��� �W*��W��	E��s�c?�eq�A  ���   �U�R�9�F�'���3v�$	z�l}R�} �����F���6 ���]���m  ;c�7:��v�R��[�E�e�z��*B�/A��7�$��D�d��VoQF�d]��'(�S ����c�����@��[d	cq�M,a��1 �l%^no�]6���]e&3��Ӆl��s4O���l<��u�l�.4�o(��{$ 0I"��¹�d��*,7��p��K3%ka��I"���0S�q��+,���r�X�7&V3 {�#+R4X��Y�
�o��.��n����"�s���
�'>w��jqcl�=o\{z�-��������Dk��~�-�� p9��d9ݍK\"��������l�|������N ��97�g/s��/;��B����N�����b<b �c��1>-�ȧ/���U氲,n����݈(��6�����E��\8 � `�K�*h77_��9]y͎���:� ��8t�,��5 Y��lY� &B����y��¥0[��+n�<-qȫ�\Z�_$ �@�{�� /[<��U<���L鹧횋)a�X#������NI�3�u�3�T۩ s*}R�F�v-x��Sg��c �װOJ�h�l ��&
h��4)y�+y������� 0�{�OJ/�ȍ��<����J��G��w�F��qŬ�n��i�h&C{�~��߻ ȍ�5�ux-�u\^E��*�[|�� HҲ{z��e��_�)2Z�  ��=���-�w����i (9���9���FX�B�8��?3���=����QFQ �8�ټ��>P�$�,�0���=����1Pp�x��� ����ؑG'&	�J���g�l�$#�u����b�_��X��2�h�骩�1���ҕ\ϡgC�����q���^�p ��{�7Ƥw�N��.��Cz�$n�� �g��޼���a,I��j7�W P֞�Df�d��d��A�%?��N�"�0����)�g�D��h���@w m)Cg酁�.e �� �2P��-��B��2�kgd�|@�SF)��g�2�KFr9 M��u$�Ji1F/�ڼR�@r͌Сtw�?�~䖀���셢�r�� ��g���C�.���)�`�K��F�^ƨ]��;��'F2�Rl�7�S�g$`��io���~�X�-Ź��9�]����rW��-��b�   lā��,7�0e� ک#iN��h�0�(c��� �]�@���3vz��!���ܼ�܁�� �,�0�c��}���w����9��y�K�K ��9���j�Abq�%B&�j d��pNw��q��u�ai�i����%q&��nFa����x�b	�@[[�h����(��cݝ�k��`���:Q�0ְ@�nL�+j�.�L]�ᒛ�����]8Xȭ��vvr���ڸ�L�꒗u�����>���(휒u���䗉�&���;�i���i�G�;����l�auL�k#ԉ1sA:�۴mU�
v��G��ڶ���f�O��bub
 �b[�7������U5U���/���B��ת�:�~��� �J=�yH��]" �	���=9���Y��y�ܮޣpmQg���  �"��TSf���	�؀6���F�N��׫t�sz{�d�[|���7�|{I"�04�B�j���9]h dD�qx�*;vC��[:�r��%L��3	@�S0X��e����԰�t�Y�\�E[��PD�w��"�ǎ.�h+�nɴ�RW�h��w����D��9T̔M&ʈ���N溱��t�_J���ĄV����?����Y��^c�Bb	Õ�'��ǟ�jw���|M
+�V�Q�l%Y�`%�iX~��97*��=�d����)Ŝ�r��`��C�{�37*[����\�2���@��_��COѹ���F�}�.zs���3�z���%�6k�ʩ�uEQ1�s���bڬ�n'3��괾B�&�-_c�����K�<wK���&0m�P�O��<L� �pim��|�N��]����]������ډ]}�蟽����t^o-�5���ջ�8̘��5����M��\�0�5\~��� Z��H�w	��Z6�������T(,��t�}l \��˧و \$��)z�=��*}�-H(�t�Ƥ�i&~7N��Is&wUZ%a9USE���4�᳼��kQpP�45���z�hJ{-
.z��Y6���B)Y5U 0oy�7�
�r����>�G�ϋ_��9p�f�r1���0���¼pM��.�)g�����A<k���e��y�+-���� {���F�Gۉ�z�R�+ ����#i?	"�$��ϊm^})�M�xM `��
�$%���os�\� `�D>)���l�	�wc�����3)~��&�s�!�u��σ�'�g�J}�����E�8��>)�����A3t�5O4�|q�I�D/ �<�0z��Y��h�K�'��R�P8 �C��w���wt .�OJO%[��@و�t�u�.�F �R�|Rz+ݗ�*N  岟�F_�P℗��'�
���w��M@;�9  8��,~Q"�P��A�䯓���a�D��OJ�er8�l  GFZM�m������#60������|a~�Th2^~M���t�� �j:sSs+����L�  H��ۉ_1�+�η/�XԿ5�7�OJEr����?b @�8��ۛ�k���k��>��l��8��xX�'A�&ejhU2��W��L�����k2t�U���_�*]���5��]|�:���V�&V'����d�!ҳ����-:�c?M��o2^u�o��_2�kNw�j~��Bg����V0XKFs��_7�6��C?�Ӝs��[���6@�9�z/�W�����4�׵ڶ �e��O��O��U��Y�!��m7��?Bcj`��Ly�)�������VmU?�ǭ�~���d����}R>a7/;�~���;^���9l�"�h��t���G��_��T�Y�OJ����W�����$��� m:4�	�צ_�PK\����8_�%�����Mؘf�&oj�ErD�@�~��c��T��c�&o2�iI�LK�����b�����{Cʀ`���M������c�������Z�	ա;���2�����dحf�ʙ'/f�vgv���M���T����<�fح�MQ��8�I'�Q
v�8�9�`�����C�vix����9j͛F��^xaGg���r3ce��޼i��}28'&�?<woJ�����\���E�@D�~n�����xӠ� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Client.apple-touch-icon.png-a7709734428a0af17a3f60d3f081dab3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Export/Client.apple-touch-icon.png"
dest_files=[ "res://.import/Client.apple-touch-icon.png-a7709734428a0af17a3f60d3f081dab3.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST               �=  WEBPRIFF�=  WEBPVP8L�=  /�� ����)���_���0J�R��1�cK����b�%��^6�,�a��;K��R��ޛ�s-��y朙3g>� Z�ִ���K2I3۬f5��A��'*n�m5���AQEzz�4��n#	�$��j���"ܳ{*#� �L4EMQ���e(o{�5w�����FO˝�E8��)�<-�k��ms�1���7��)mj�j�)$ ud�.�3�$P�}��K��c�2/
?u����x�/��E8ݓo��E(Ͳ�l�B��X��G�v�E8�Wa�(�{=*OkYD�m\��U9o��H����T)���]��ay��U�+�>{��g���TK_��E8����j)e)�񳌋p�/~�I�M�ey��.�����ukYR7.������{��.���<����Q�.���uNW�e�eCܓ@��;�$P�=�p:4w����~/'Mw�;7<i8K�I�F�1�/N�: �8���H^$�%ѓ7Nsw�t���@�Eg�9���=ͽ�^$	8�xɓFW�O�V��g��xZV��?�΍�3$�Y�Y���3$���w�.wa	qV��;�8�E�s��vO��g�2>kx��m$g�o#y� �3�Eg �;�?�`��H�:*>F�`�����lw�{�n�#��M'���}=��妓���g�3$���T�lp���=�Q�	ԝܫ(]6r��p�<Xp�m���=�P�;���;K�����YOq��I���� �n�7;�޵7�Z�o���8뾸2�w5��%�����A����;�X��K�l0���xЀuA���TK�,�Õy��ԧ~��j)�E(qw�;g�Wp���U)����Fҏ|����U�C�=��]��������jЕ+�U��}tgA�YgƝ�������Io����8�ϐ(�;s�DY�e�1&7�uh�X���Z��Y@$a�q�m$=��H�q�������_��x�;o���+�9<����1�>�c���������(�Dvu�ԣ@3�PWaA'M{����'Mrv����e��*��E23ql�Qƚ�^{x�O�qF��}qү|q�_�K{<2�X�����\`�YG�1;�	�/Nz����o~(���r/�ks�{��8��I����"�p8gzI��"	��&�����=g�x�Li:͝�u�;�)m^�o�AO�<��mo yҠwy� ����t�D��,��k� /;x��wy�/<���Zz���@�m�k� #�]>F�Z���@�8�]�8�<-/;8����.��o`�?5X65�6U�Ul��;=�hIE*���{���Q����V�;=Yl�X�l�J��#��%�	�6�]E�ף�Hv�}K"mߒ�w�9�{l+�1T�	�w�,�1T�9_o� e�bAnOW�ۏW��vG��:>T�	�W�3}��kd=�P	 /q��)>P�Ym�5�_��&�c��v�*% yaz�q����7�\� ��F�n�#w1����FK$ yYj�MG�}�[*s:��rn�C��s8=�Ǭ�{_� ��Ț�Y���HU�$�sǜ7ǻ�B����Xj�@(�C�+ǐ��JKk2��7Y�s��`�k	�`l��æ*��浿3p��ܧE�D�$ �����"<����E�]�C�'l���i$�2�s5=>7��k�9��H��z#��5�V��ZT6���C��_7��#��p��F|��5���.IN�t�u�c �*F��=��Mu��9��'j�QW3�t�"q5�G���{�}�1_tHb�c3�
	����I��R�=�,ِ��^)kw	�EmuN��w��=b@L��&o�U�̀�o���ٯ�Ԝt�Lϣ[c��=�n���[�����
$z��ށ�[D���|�w��/�Zv	{���5�@oh+��N�&��R�wQ[1�B<��ޢ�x��l��0�مh+x�7p��$������d�־�i5�ڊ����CC�w��8�aNʴ�j_y2l�Vc�b��"��(��K���1_V�7�?Q[�S���;�z��G�1���G�}3�K�^�P�I��jy������ưx��*/�9�ށ�[,�\���g�}3���2T��$r�_����%�qLZO���N�e�4mH)I`�ŗ���%��F�-I���|G�^�2n1;���]Dm%�ɨ�����C��:2���]:��,��\$��t�
��[췇��1x���Ṗ3�����gR�}���~{��"n����΀���)�n��oQ[	f�������;��5�F�����t�`�It�S�	,���O������D���t�����$-�Ӡ���d���d��#�N6&oO����^���젖�,�7�N6b��x�~��p���[�Dm�����CC	?dD���xҘg��Ռ=\�@��7�P�-�}���W�V:��"0��Y��*� ��Hi�!�o�#�[H�:~S)Ҧb�׽���2�.��CZ�KN!�/���^������V�zմ�M�V�)��$ t�� ���!�^w4皶�!u��ߴ��|<�$օ�F+L��I-V���3RK��M]&�
��Dm-��$ t�1�_	`�uGu���R]&�ME*���-U�?�1`�[b�K��T��[��T𛂴E�yd�Dm��o% t���?8ë�o�δ摑
Җ�d�R�;�<�m�-#������p�����ݲ�,����!��	�J�dR(���t���㘧��H�����w4\ 񜑁�U�~t5�#Rv��H"�G���Տ�@!Տ剶��I~�(�n>R:^vJ�nCC�e�|DJ���5R��S&jk�+�W�ʴ��o�HѾ�7!^�4�)�"&�"&�F<����Ft�ɨ=B�� ��\�&�It~�m��SA]��MZ��M�|*�����C�H��N��6��j#��,W����Cᐶ˂�����������@z(���;��-�O�V�iH��F������7�Y@_o�?}��'I��'}o�?z�Y�7�HD}�`���:ZS}�.��o�	-r�Q�������O݈��\���{��榝�V⚱o�D�;6��j�vj�̱W�v?��QON�r�:t��� r�A;o$�bK>��dX<@����*�t��c}���!ys�qGN?ɛ{��`}�a��v�d�A��O��=
8s���A�2`jW3�RCy�pŐR�7�J�ސ�J�s�r��>�U���%�<�B6H5��V��R�lxNv�!�3�V�Gʈ;�(�!W�U����s�i.l5tHo܁��e�H;U�V�Go;��6�j��Hw��9ߐ�3{�T�����7$�cr�R���R1��a�\g��Hy�#K�]ߑV�wF+�T�ܰ��tF)�i/8���o[����
ٰz���*R�w���O=�Aʊ:p��Y�Q��Bc� ����]�2�\��Ί�Q~�^#<6;�&jv��{=6�u|�
G�1T;J @XjIr�^[��=i�K
e{��=���6�?�V���u��Cn��`��'�hS� &b�a�uV����,K��s�v��K҆�j25`��o#�5I�|cĜ�� 0bZO�S3s�}cDR�&�m$W[
��,o�#��Y���xl��e)��9��)|�`m�,��F2�}=Q3���v:� ��[V$6bM�<�o���;�3^��{�oܡ�����Q��k
	 7�9�{r�����m'���/C�P�̘����w4Ƚ�h�9v��+�lC%� d�\��������lҤ��Dmej��'�j7U/#�}�ʥ�ӥ��Ve���^����!̉[�a�6��Emen�.�uU��/-�}G�9��z�ץ��QE���,�4>T�?~�㍱�4ѳ���N�׷�Z�
v�J��WK��$c�� i$ �/K�5��~�%X㛎[��$j+����L�Vw:��5�g�إ*=��5s�FR ��������ִ��Emex��ݚb� m!7Y(NB-
�Ɗ�X�AWOE-n5 ,q��-�U��٠���Y�V�Ǹ��UJ���Ӏ�}@܎LE��������
p�f���"���{^����4b�}�.��V�6��2?��������������n,HQ}ϑ�O��7p,O푡���n��5U}��hX<�qS1������wYG5�`J(���|s^�vbS��w4,�G����T���#a��i
�ޒ��t�����p"�n�&����t�!��X���.q5o�z���\M�s�H�H����3��ۛ�4����c���j&�V���HO�{���4��b���޻�@"�f�V��E� �pv�@*[�tT3~l	�r�*�pF�L߂����GX+�;�-��;����H��Em՘�l c&n����p���m$(���J�S�т�ѯ��]-86ӄ�Q[5'���fV^~��~Å/E�0�#a�;yo�x=�|�q��r9��4)Տ,�nC�1|���{�W�q��8R2�LA4�������V���g.��jT������A����;ؠ�o"h��u�꜑�ƚ�P�e�x�hB��:t�]3�ڪY���]�o<�2vW��Y�e�(m�&+���4e{�ׅ��v���q�U�҈#�ݚVܶ�ƚ�����!���`=��;��aoH��(j��%�|�7G'���� � ��Y��,�����$�&�Oh5�R�wQ[5/)��j^��SA�SV�;B#����;�*��G2m��gh�-n��U�xB[���Lf�=�@m�kFi�k�8�Q2�j���9�h�M��.E4�!o%m�~j��;5PO�I�$���J�U���L�����=ۨ�U3�F���M��Ln���y�bPW܁A~���!�әd��⏩{%Q[54u�tL���?ɑZNg�\S�`�9��lST��{&�1w��ŗ����������&j[��4 u�f�������,��9�Yk$q�Ea[��Y���b�����2��7�U�V͛�:�K�^��	�I��k��Ty���7��E4צ�����i=��gQ[95��|+��z� �W��[c}E���k��Mt����AG���:�P�	����g��_�9�R0��W�'q�9q�f���n�C��x����k:�f5�I�|�5� ��1O��s"�^�n���P��x��ņ�`A�ʥ�;���)�B������Em���hv�۫�%'j�v�c�j�e����G���]"Q��V@�}&Q[�9���;?iU�m��O���������6�����������0P�_I�2���;�Em���hyFܩ�=�s�P��/_?T��{�W�̸�N��rvrN'@fܩҗF��)ڐ�Dm���
m��_I�^�F@����[�����c��h��G���S�Hh�@�QQڢ�Em��7 �d�F6U!�no|.u{C��J���,K>�Y������;�y�;����6�r�o���o#�ኡ-K�ߖ%G����*E���랉��=��(_+
��o�UJt�L�𵙸��Q�/�N�m��*o��%i#�ZWi�����o�u�l��0�K~6�K@��8+�T�:����2!�j7YXl(t�Ǐmv���t"=t4t4 >TΊC<u�������8��]��[�fo	2.g{K� YV����+�oK����QHs^��zlxW�c4�}Y�É	~2�n�@-2vW����J ��pV"1� E�d�Y�eA
@^�
8+�tP�1�1 ���K42��=�:�gOz���2�IZ�AI�����+��
�8+���:'��˧B���I��JS��~�!�9�z�o�8+��x=T����GU�7Pg�B)�XԒ��PY��w����C}��jg�8o�޲��	�yS���4]߳�`��H�������7��z����b������K��-�Ӵ�pV2���*N�z�II�	�hs���
��̧��`�Go�|* �ü�Q�s�H @:��G��B��wge���PBJ��xQ��u3+���r�s���r.��4?p��P��Ґ{�)�z�R�O�z6�%��L��Nɛ{���FQ���͔s:��}o9���S��T�n/�x�cS��$.�R}���L� ofz�Pyߦln��y��ɛ{�}�#�a&n��X��׳��T%ଭb�2}7�h	 +�AW�����"	?���f̗x5rU�u;��n:n% Y�x�3�l�?��>Ғ�p��oS���L�鴜q	@f>4E�u�e��N]ȭ�J��NG����r�@ s���_Y!}w����xҸ�9K�+I ���Ơ��̒���y�q9OF�@,�E�}��_���ZT�j4��뙛��;	�hqT��w$[��떓tP+Έ�§�����>�;q<$|�L��@<�LZOꕸ���|���6r��a�eYr	�B�{L���*i=�[B�F�y9���s*�*�J�#"&�uUҩ�T�r"�p���4�KZ5��k��{�=��P+qj�lő�>#a��ѫ �c�
x���8�ȗ��,G��3�����XNg	 �@�	�	�k�x#򿀎�x �-�_� �l�(b�z��a���7DN �D,� �����~�&l�l�V��g�@���!�>��}e�6e~��	Dp�ȿ� ���Y����X��/�*�3�V����"��٣f����@7>B�;��r<Cs����\F�!f1�3�t5�(�'��g? ���8XU�? x(�8��k����9� ?!ry��� ���&�ό���5Dd�>"k  ��d��qs WO "7�����IeI��`/a���`��8z�d�BDvq.N�X�9�(��K . r�9�H' R+u�Y'�iVr~l)��,�3q�GN����|��, NMK�;�0�8�77O B"g@�7����#��r���G�>�e
�"Ź�p ��C��-`x��"d�= r�هQ�l�&��Q�+r�7	�1"8U������L�'!�@�(̒4�*x���$��8� �Ċ��g��7��{��"Ĝ@�!�	�6G	 #�b���V@r��D&\�v�����s5ظœ��������1��7j�W,�3@�ir���ܕ� '!�"�.�Y�Y�8��6!��� `�>����
��G��ZRR�w	 3�+)��!\BH�s@X���Ԃ� ��N �@�n�����>��ɨCl��@�l� @]|��Q*  ��P@g����K���nM�����@x�/H �?!�+@�xc�/B&��t�9� ��a�"��B�_�'"��@d�Y��%��e�tm��EL><���Ac�'!��Y��^
�g��ċ3����xB���$� ���Ԡ晝�#$�!�r8��=(��g�8kgVZ��O��%�J�����
H�]@��R��D�Do=����!q�qf}E5�}fgW�P����3�) q�"��]���z��n&�>Y@/��
�,cU��ߛ���!(j��u�0@��"��xT�����O��E��N\a&n )��=D��6B�7��k@��!s��]|����й��07�n�[Bź/��;�, q� �{y���#m n Ry���j/�/!m�y)�:�߸H���wj#z'�AH�M@����<�!n�r�]@�"�gr�aWA� 	KF��%u��VTN2�!����7T\��5�B�:��F-:��d�������zlxC��J$�"΃�=���|<;4 ��@п?O�D2s���!$i��a�ßZ��;�d
����s\����ܡ��HP8B�v��������A� ��{�JD��J�3��"�����x#�z	!1��Sܪ������8�)�:���* �4������ ��{�D6a��
HHB�8C��j4�!ƚHl]2���r����rȬ� ���/�8@"� �S�7�D8ﰇۓ���P@�G<%j�"�̠���DH�W#��8Q[��,�nPB�QC4�<�&v�B7P�\ x~����E���q)�~��,'A�̕�;Q[��h�/{�xK�""��H3 ���wWQ[5��<3F�v ^��3" �M|� �.sDx�7Ddx��* ���^I�V-E>}� `��]@L)D�mC�����u6i�C.Cx	LW�pf7`kQ[�F��(k����_����!z`�=&,��*�����7=�
���`�X�kr���i+
1|?���XGX����? �� B�2΢�*�d��B��D|ApG�"������)���j+��y,e\��&@����� V"�X���#ه����A<����)� @%��t�ـ�[ g ����s�r�UcQI��o�� ᬫ�� �c�y����*�k�UkQJ�;��m���x%��Nn�j�DG4�d�+9�g����G%E�AkE�u��ڪ��%p�kg����œҴzŀk�Ք&38��N6:�R�QL��:"�.j���g\�8R�F�����Tdh2���m�"[���)�3����y��� ��#���������7T)��!���_T�4H<�ICu"ѳw;��~J6K����������zR6��O�K���jg��G8�Rox�g�s��_ۨ[�8�k7c���U_�)!a��|87~¨'7K�򡦓a�J\����~���8�>A	�������-�����@�*٨/�>�r8�O���k:�$�kI\ϖӹ�m|�&��c��1�(g&-��ڨSΌ§��͔w:V޷M���	�m��dZM��ﱙh=��꾁T?6�,`Z��~�G鳆�������q���*o��v��֛%[W�l,z�)�wQӷ�>�W� f�+��R��/K�o�,u�������R�)��7Z1�o�f��DU�~�u��M�L�����[V�3[���,�g�)x�@Y��BCy�PU��bCy�HU��RKy�x��g��h��G�d�Aa�%~�@���Yi� d��uU��̀�۩�{���!cMX>�'o	�,	�G��Zx9�=S;�����uU���q�.�g�% vz�P�l�:��ںW*��3��r��|xF��c\Ι�K�e_�J�:z6n6Ty�#~�f�}�["�a���%b���ֿS���:\Ws���F[��m��~Ws��R���ߩ��!O�%bS��H�l����	�l��b.Þ���K���p6�����_�k/�5}�V��p.�w�w��㰧�R�U���P���P����ͧb�S�|lx�2}g9���S���?�k��?j�NZO�ùL�5�c7G<5����Qk�JC�g�# �l�ł�G}i3M�'�_�9Ǔq9k�r�9�ʯ��O��fԗ�ޮ4e�%��	@9٭鐫�fo�5{�j��
j�FK�g�C	@Qш����V��ף��;��h���V����ޣ�H ���WTX#v{d��f��Z`!���#� (�����/~�TZ��� iI�݆*@��By����T��Tw?�h#��By�� �bQ�H� �^;����������{-�?ԽR�î�OŦbВ>Re>�W�JPHV��|<S�>Ҳ��zQNEm�ݷ����;�lﱋW����8X��a�)��������埏Տ�F܀���v%�>4Y�MI뻂��wk����T~ۑ�]3��k'��W,��2��j�����?���C���{�%z�~��rN����{�iF<9�uU~�u�D�L�H 
�L��T�J|��j^M�]�5�þ��·��k��1����C���:��}����'���l>�K.��gj#���'�n)�w�[�%�fV|�m!�m.Þ��c#��m��)�����3l�z�����Q��;�M��	�|~����c�mӈc�9�z&n֊���nsd����)�6G4{K��j:n��m�;�]w9�S��nX<�?��������JC�"�J��yd�GS�+e�E�F�ydJC��~����)z����G�;���VY�㖢��C+���D��H�u�>s5E�]�(�9���SA�NU(�NUP4�
��Ӊ���i�b�3U3$������ښ������������
-��F����4\1��R�σ���m�������3=��k�r�$����,�g�dH��LI��4<p��&�xR��㉚��}�쭀�^U��`Y"%�'J�F�C@4z��5Ϭ45�LM��v���Ĵ��l�b�~U"��L�z�]34����.>������YZ�1|?�>T��'o�leSR��F�J�ђ֓2��q����q�����V��퍭��r<�25h��5�D+��t]�h��&swA��-��	�1�٧\
t�ivZ�ߑ���"���n�~��k����F}IK��G*��},q��k6Ӡ��;ZL�	;�=L���R}��g�J�m�[�I
%R3���#��i�9���jQK����i���f쑒B�>Q�F�憖�WFk�Z��ɰ�eԗhU�-M�����ts��k�y�HC�����C�`��vj�l����ZE���`��e�QHo܁}�X#�d�Ғ�wB�ZF|��E���-}րV��e2j��X#�<4-�R�iI�]�B+�?P���q�g�/�,e�i���H�eAK�jB��J�'�ԃ"֮����C�d�d&n1���@��<�|cD��h���Ж3N�i=��~�C��BK����G��M뙒匣�.^�t��U�~v:T��c����U1JrOG�ռ��g�,9Z��H�V��B�l;��D���:G��gZ����cGj�D��Oi�W�j���B���U?2ژ��3�j��G&-l��.^�Ք���N��]�#��A��f_y� u���ңN	�[%� p��е��MĨ/�����F���r<��ތ�9z������b#=�'|2��.^o������|,�m�_��p6�9z"��XW�^K�J�U1Z��w,��1H{�eQ���|�Ȧb���v��m�'T�7E�{�񜲽'�<�f���Ǩ'�%#j�h���<���_�Ք�����m�'�S�g#�����o��~���,9-�5Ez�,t�	 ��LmϘxv�b%���v�U6Ӵ���K/���)�����}�?��{ه3=i�7��A�_��m\�����c�uk}�vj��~<�s�X+�݆���T�*a��:j��L�zŇ�oZʱ�t�(�S�#hq�=1��n>��w�v=���կ��
83Q�
�B% e��Q[)������
�!��5�(�G?:�qP����i>����6l�����)Tl��5�k����Q��f�Q4�ۃ(`�;����S{d�oI��H���Ya�q���&~�����H�/��F��e��ZT��/�e)�h*<�e.tf<�����pf$S���.�wt�/ʒ��Ӕ���%s��T�I 诰�������R��o[E	�,4��E�9�(�|:j���0�J�֬F��|<S�w������S�w[�R��i!�ֶ��xFޚ�����h����S��JZOY�K����mx�vf��~<��z]�4W ?��F(��d]�I=t�v��l�;V޷�Ǭ�%i=�}����y:����N3M�.��̈́���w����H��,�s���}�f#t�㐫��v9��Uq�Q�]�?�5U�t��vU,g|*j�\�m��F�}�}o9�S��O�����̈́��LS�É���qm�)1!�o��eZM�k��Xq�ֿSu}�0꫹D��^C��uOq�A�����\"F}�gm�տS�u�>f쯦�;����,o�h�pf���C�ki��%j���?�GL>�ߏ���|<���&��8���a�$뭲��0��Å��R6�O�{�*�%YO�݀�w�	��Ǧ�o>������G���?�+�����{��p,%�ܡ� l>�+��o��e\��k�߱캫�V�z,3�~��y���U1��W��O�X����W*�����黫q5��^�*
Q�֜�:pf�h_� :��9-ɛ� Z����2�K� л�<@��K�L#[	8|%�S����h��WΌ%�ܭ*����3�1.罆�u�J�������΀�����m�K��$m���^w�����V�6�v��Ֆ�m�,n��-q��V��V[z�ypN��N�0��G�i	�pf2�޲��yd�e�e%��h/# )8xJ���:��1�&�\�
�|�+?�9��~U�B��ٮ�0^1��	�/1|?�-�W�**����~O"&N��� .90��sR(�n��8X�Ȣ��^%�R�����2q9�<d�WP��2!��x�Y��T���ﰇ�4U��,����
�J^�n% ���O�9%�`%w5}s�?5��DR�Y87� &cw��e%�`��Z�Y�b~�f���n^�v3��g�f��W%%��#U	����|"�|��3Z�;�8��"s�����K�F��}e�7�ey�guRf��ЧJ��=�	��򆐯o�����:�*��\�Ѧ*��im9����xZHk�/6U]�Q�Y����$v� ��ڰ���&K;�M�P�"�Ϊ��|cĖ�c�v)�'^��wZ�8FKZ����K�9o���� 0��l���"g�Nfq�є��$�b
���kd�S����?9�ns%�$ 5��3����):�PI 8�6ǘ�K���^���
S��W5e�m����[��=S�ע�B���g�RL�0]/l#�r
�3.�d5�*o���_�����j^a5�1�7XpV;�'=�$ �,ȺD�i�}� k��G��盛��;�RC��=7�G�U�����/5���@�����K x����IK�NA�Y����Ƚ�3�"��� 03쩜�I+Y��aO������3�:��6}�ĭ�\"*�ۈ�}B�K�m{�:x�T��6Ό������q��S��%�'m���h�a�d����19�~88��j���Z�ΐ�5l;"s�~���'�9��*J����߅���y��[�ŗ�D���y����vt�!Ԕ�4����ݚvP���j���l}ţE&l�is�g�PW^9f�,% �OE�;�V�v�[<��O�c(�W�q��-T�/��u+� �d"h+����KDN?%�~�U�J��д���Hά��\�A擃]��.x���;�Y�^Ke�u�.L��D������'�vUts�}��[����ƭ�ɫ�X����$G�Y�AO$�uU�YC��MX>�˴�*n�~{�P��b�e�������l��'r���N6�1�;ϲ�OkE%��=�
�zgGXE�O�g)���ZN����>�O��h3�J�	���G����'5� HdA�V�r�N����r�N��-IN�r:���c��YF�]S�� �͉a_Y_1s/�6^2�W�+�j�.��l�,�=�ֲ����ɡ��@*kE�o���m��0��A�🼹W޷�V�c[)��3�8;�:�?�P�	{�d�Pt��K�]��o5����wײۮ��iM�H}�4����2r�S��+&�~Od���q,�?$m���W]B'ߤ�T�h���/�z�'D��ђ��yl�Ύ0+��6UR���Ч���c�3[N������ɒ��-�s�3w�q:n�?a�V�X_]!��PVbG�1���i3[ ��w�Z����C�'������q*�r�>\��m�'�a"�V��!�J�����8;�Nl�k̎;���(^�U�M�e�s:��n���x�O�������?|��-��Ք���Nŗ}�c���ha*��'�%��KU�"b��Vɖ%���O��C�M�P�LU�M�mW��χ���|8g쮩�[�z2.g��3f񎜾��K���?���A�_�x���co��Ӹ���S��������ӱ�|(���]�cS�LM���l�=�xr:n�%�*��#���?�Z,�m�c|ݘ�;=� �%a0F�2��ΐ����< `�ን�M��?a6f}�3���W�������q+��:���l�˗Fzf����V�n�,cﱳ�RB���%�S瘎�y$�)�-���lw�%��P�"�Ο��|��-��qLj$�z�.�a�Á��H�1��ms��c�L�y#�,\��$�MUQ�͎���4m��S{�N���h�;���)�5����,4�MUEi���x��c���u~�����O�ƌ��JKo��}���"#����/k�ɂ�m������1��M�,L��)�ZG�f���˲N�Yq��O����ppv��ю�3�5�k�����b}�ɂ���ugQ�T�RC�=ұ��JC�j֭���.J����t�;<����]�ᜑ�ۡ�4*_�t���M��m��!>P�Qg�ۼ�-J�2�Te�>���-�]E�[Ve9Z�ɺ�������d�#�= �`�q�#�-Yn�\SL�l�bC%�Se���
ޜ�֬��uE*��&?i�I�w��
��K��*�m��-����N�;%���@�8�]�8�<-�k� #�]>F�Z�yۀ���wy	t�6�"I��"	t�1��t�D����k�p�@,�],�n{ëH�ܘ׻ܘ��Tr*@��׻NqJN�UUz{��ʬ��m)̋$}�,I�ٖJ ���A���i�� ��+���i���r��$������v��:����!Q׮:�
��a��07�,7`3-u� .9�w:v���ϸ}�	��?�������߁�Ĝ������'S-u�����9 �	;��O$�ǁ����W�� {H	����v�A�>�*��8	�c0t��E�H Nb��<K�>�r��$�����p�{]��a�.�I ��1&O�'O0.�g�� ���I���o�6�I�ah/K	�O_c�ʕ{�ɕ{��O_K He��E8�%q����B� ~�{���%QO:K"�U���K �*�q��NG��c�S��R"�%��Ns���sM�� �j��ep�ʼ^��<��g����$���pΝy}ȃ�*E6 N��k|4���8��Z��Z�.��ӧ���]M�e�G���!���c$���x�;�k).n$ �<�z�A��N׭?�%��Xx����bg-{DW�@~N�etֲ��'����=��勓;�WQ�l$ 9y(ܡ�4��$�1gH<�=�5�$P����z�p�Ƽ�:�m$7�/�G�� ��;��}ЃE#骍?��������٣�p�O<h�M'xɃ���ÿv.:�@"�º����uc���8�O�gHtc�ie\8��� ��۲.���g�9�Y�9zmY�'��~���o?ͽ�^$锿n<it������*��G�3�ANs�Ƃ'gI�"��H>F��I���1����H:K�'n,���YCƫ�Lhܹ�C�*R ��F2&�@:�Eu�1��E���@>�-yH=�q ["P�1i��i��Z��}���ukYJ �"?��?~�I��@7S-}J��E(�Z*PO���^�y��U�K GQ�}�L)Ot�3E��dQI��;�+߹CT�u�L���SG����H���@�����m^Eʒ��U!(<�ua���H��z?{�'���׿�dN.�Z*�%;=�Ԭ0����u$�]���~��.,�s��/��]��=P�#�t�y�S��)]A     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Client.icon.png-36c57a7e4249c9a9228b664e4f8b5683.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Export/Client.icon.png"
dest_files=[ "res://.import/Client.icon.png-36c57a7e4249c9a9228b664e4f8b5683.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST   X           �,  WEBPRIFF�,  WEBPVP8L�,  /Õ�(n#����3�1�V�){#F��S@\~r#�r*��|L@@
,i��̬��Hۦ����mۆM1e�d(۶������mѶm|����i�7Xr]�m�-.ڻ���HN�����k۶�6�c�sѣ�= E��yDP�$ٴm�1�m۶m۶m۶m�]}��m��Z��m�H�����7�>�[�$K�$۪�����e��A����I��tn��?�F�$mꦾ�W�6g۶mo���l�l�,�mg�t��&�J�$In�l�xX�`��o۶)O���W��������Z��.��0C�.����iw�pm$d[8��
$�8.��mۛ4����� S	��*3� n��۶�D���W��L�c�-L����mڶ�}�ڶm�~߶m�?���m۶����$I�3���s�������?�?��������O��?��������O��?��������O��?�������L�2�j:�����N�+�4v�_������jӜ�|[��Ri�;�4��N�#��0�+V)O�����$������l����Gj�b�Ze�Gj<��Qk�]�l��G�c �A|�S�|��@g�	9��]���b����~�x��#`5��A
�o?{n?M��2 &p	���7�d�HX�l�n=N\��מ�(����U�   c�f�� (hn����=]��z��:�7�fA�v�Bx� '+���|���(nDQbenQp �| ��E��+5N_<�L6�|� 'p��B�C����/�>��$&���L  �qw�AX�q �~4�+q�55*���ơ؁0T�AK��l�ܢ�ֹI�I%�[  �y(�%p^L�-x�K�I[�fnQ�Xm�h��� 2yp�q���E�7��w�  �	x �}l�,�����L�v" �?�l������ᖀ�P�(��p+�����D�$`�^�-���C%AJ��֡  �Ɓ� [Ƕ�R-��S�6�5X.Ri)����6�6��
)r�o6�JK��5�/�un�����-  ���� ��8� ;������s%`�^�Dw�,����OW�7c�Zhݽ3�5�U\���:���#��<�����t}$�g�_��۽(JBsm�`�"۵�Bp{}�{>�k��n���wzzgg[w5���҇�t)��������]O�l`�S[y	64��^�gͺK%G��lI��z&���G���I�">�f��x�:pԞ��	�a}E�_���7��@=�����M��z��H[DHbz�b��GG�l����/H]�R�"$�� �K_G��� ���"$P���тB�
� 8O@��O�@S�r��`�>�O�! W�+(t����`G`
�ƂNp�jf���X:Z����` �N� ���X���ς�8�-����$���������wz��- H����~�8��;C;R�W  �X���5a����׏���(J� g[w�_?�	��h	��2�gHq�r���x��S[}�V��X�0�A@@o8k=:=_(NQ��E���x�b=g��אF�f�g�/��	���͂�@,o���>�O]�����pF���Y�fZڥ(J�&-���6c�xxF�	�-n>N�U_d���H`�34��-�[�6�⿩Q�[@\�F*�_Q��Q�J�{�1�'�S�V/����}�����zYPͼ���D�[�j��Y�t9�CÍ(N�(ɫDq28��8�6]^���r��n7�  p�:C+A�������&PIR�e���>��^�DQ�7�����#����K���3
  �������t�3��OO^� X�w�z�a����]��}�f���X�$��N���r,5��`�'O�5��(J�25���끋�#�b"j<\� 	w�F��pQ,nre�Z%��Rmq�pj�� ��+��S��Ή����!C�^��v/��O����K�C���m�h5�I�����rL�-��� � 6��>�反C  VB�F�9@t�΢(9��;����\2�EQr,�<��>�w�~������}j �;���`/��c"����������q��ӄ��>��@�ٽ8�u�����2`�����/WA�mY�el���@�� f�g���3  ��!�����^����Q �-�Y� ���*Mj��4�-o�  ���rc$��{��C�s  HB��|$�N��M-�)�C��.����X*d���d;!�-��n ޼�Ǎ�U�4^�� �&4rJ%A�@2�-��l	��P���Ou��M�:����ƔR(�� ���F�o  ��:�� ��\$⤥]��-�|�[�e2y�}jY��=Z����U_�F]���f��jh�;�}l���.��or�Ԓ����\����Z�(N�{g+��ɓ�Љ�×�W�
���]�ʿ�D���ל���	{�y���g�F'kQ����W'k�E ��������.�LN�[��}��޲P��v�J��-���CGs�
^�Ja%��c���X"j��ܢ ����Ԭ�������6�'����.`VW�k�gl��e��/���!���M ;K�\E�C�]�/ K)�C�^��|&D�!؆��K6+�=ޡ&�	���B�
�>�����"��=e����߄���!� ��r$@IR;�z8}�P��<\�  ��������f�����ǦfK���B�^�b��� ���25��;?-rA34��^5֟  [�V��{�M�2 &S�=����| x/D��	�G�-��l	X�V|>�z�0��mF�%�`l�K!��d�� �g��g���~T�?<�� ���ϗC�V��FE��w�,��"oZB ��.���.'���X�g H	�=K{�J�]�w`)��B$�P�K���7�s�o<C�y ��C�W*�\��G��ow,
��yc @IR;�I ���%�����X�$��V xwl��$X|��-A�"K�ՙ�
��)��. ,|���w�߅��X`ii��Xi���G�?�w6 \�97� 8#���<(�����.�V#֪��C����  �ݫ��ѽ���!��|�6a<\�DQ��.�=&'C��� �uh+Ij�|{]�m �/�9- ���'z,'�_?�=�<D��5 �w�EI8O�o� X�WB��!څ1��#'�˛������(�WC� ,nr�q�Ǎ�M /����`@PpН��gl�LvP'p��"DQ��! �����d��}j��H��9{���1�:]��D�%���EXYD'����?��%� ��<j��DQ�o�:7���+A*��C�c��B��E +w��������x��-�R@o��7���7-�m�m�;�/�w����ѽX��beq�i�������?���?!=�T�n?Mdk�;';"�WX���������~8oq�a���CXcQ���5�X'a]�:��8�uh��������AQ܈�D}����ֹ�t}42�Hvz�Nδq�VS����0��M�Jp[�89�z�:IvF�����:W�/���ב���50ع�������Ny�+��U�����l��ˑ��E*-5ԞJ�Z�)Mj��TZ��]<X�i)'{y��ɼx�{�����l\�w�޽:}�P]yKD�<V����/����;���Vn=N<X����Y�wX�ʴT@2E��ϼz��`92s?'3���u�rX�o�\]�w02٘��{�y��km������!ۧ���._4�wۧ�D��'�|�d=�ם��������ǩǫ�����6
�Vw�@�����}�E �_/�~5֟��2~l���~<^�|����o��<O���3�*JM�J��ͅ�G�í���ܢ��o�+���b��i	����!/���"�rj}߱�{���81�����u��Ri���R�4�~��zjp�0�*�M�ʫ�_@R7��}e��,J�Z���A�x���ԬT�?m驡�V�l��(U�� '�@N9�������E!����m���3��J��ޅ���=Yd�;gt���lV������/���Z��銑JKAG[FW�"���?��!I�%c,[ru�&�%�O��l)��p���^��0e�����x�
�ѽ0�;A�fK�O0G\�	r�`\�y��g]��/x�6�b�ȸt}��㔀��	��'/CA:�\��N��C�Y�	_^�ܷIv��?A����OPO��;���K�ܢ�ѽH��d�RU�(�奯���Iy�ˣ(nTU>��J*-ut/���]
�q�PG?A\ �T�r�}�s�V��7�=O^��>f���&+�����QG�Jfis�d��ͅ����ќޙ�x���MVf���>�����Y�f������  �B�~��e�B�$DM����N���O�̿|} `���WĽe!D"j�;�䤭s��s���c["NB�_�	xQCA3�����2mz����(��0��\��QO�,h9?4�)瀵 ��lɞg�; ���ٽ��?�MWf���.
O�o?{Vw��S�����$L'��9��S��˼��y���(��ύMW;���݋�����W�=�K;�$�}l)���럎Ǎ곷�F%��:�Wr�of��&�p5��WB�K6*�V#+��5���F���ͳ�2DY�f���p 0=_��$�~��A����� Y������./@��s@�6;�K�Za)MjK�  vB�]�	�B �`9���B���c  HB���Hf��
�����S*
�a���
��d�yP���LQ�(�8�v� �N))�����Py���j�#�|.��P����,|�N�?���9 �"��)=P�l<[)���(i�2E �zni*�����Ϟ�V)���ҿ>  `T�p���	Xy�:�������ܢ@0�GȎ+e���l����d���G7g� 8}!�J_����΋����Y"N�l������r�~ �Bqli쀀���Y�t7��/����44�Z�v;��Cė��`���~�I�j+/����20�y��8�m0�s���`4,nV6������ّ�U�&��˛�l��G�}i�R�h
��u�&S�_�&����E]��H^��{g���o�"�n�_��s���a,�$�����rd<[��?8ۺ�(}������ݥ��x��p9��oq�$,��P�+> ��`~A��u^t���/�{�W'���lT��ފ�F���V}��lTRi���d`�35_:U�]�=~`:�x���k ��J��;�s���ƾc�+����Gϓ�Г��㗡�EanQx�2t�~,~�6�{y��0`<���k  |��a^@^`��| ��u�^ `�h��|�|�)�� 4C4��g����@��S��+`7���!�6��ݰ����)h�4 ��3=A�^
r�ԇ��z@�#a$���Cs�� 7�.'�u�W4A���~�����r��������������>?S����9h�l Lu|.��N�~�r�Es���@�M9!�-"U�F��^�T햸a~��U�Q""����+�n�r��"uH���z�~�����t2�$��F62Qm&A�adG#�b�7T��zG�h����k��ll��z�J�E�ǉ��0����D��8�l�o5���n����#s�čXl;�W�=}�v�,�:�>64D�� �:?b�cc���L���t�	*�m�b�Xԓ���h�E�@J�@Q,4`�-�%t�>�p�n���7�H1�(�|G�'���2?�����:V����T�HS(����qR���1�/H5�r�fo��՛�SxY�ˢ����ʉr�a���<��H[L: �
�'��A�d7T9-�%<��b7���k�sذ�ڠ6?�E>�)�=�w!x�ǩ�C1�
�(*��A� ���|M�kY߂'�� �Į��#���؛����Ӟy�O
�'�''B�@���#:�db[�"���&����>�*����i�@[C�6��[�0m���B�-��C:B���1Z/�S���W��p�W*۸F�	i��7��xdN�
�3� �zZ���`C�n`���ƍxv(�#."=x�Hfﮁ |1�]8i�8G�m5?�7�?�z��^�6�x$LG\�
i���ۏ�ef�����]��K���؍4&�I�lD��`g��mR�L�4�B:�huͷ�ݑN��و�'�tb�O]��l�$AlGZa�~�nG`�$��EZ��'z4�̱�����	z!���IKA�@��DSj�Ė��ˑ`$��}�!�&."ݱ����R/t�x�:������O� N ]8)K�!���;���E�c���,�A���`H�m��x�צ����� ����~�J�]���\΄��'����l�i�sL��f���=�TQ����cc/�E�"����x�B&N@j��<���>��~u�g@*kc��^�_�dh(�C��5|r,�0N�	��m�ؤb��H	%&�KI�c9�ނ�J'u�e��{��&@Q��b�A*ʘ�g�6�kϙˢҧ�M��c%2{���y�� X=��qs�$lVۭ��[.j�SU℉.*��c0����%\�J6�� x�Kb���<���.�|��&�Z�mK]�c?1m��˓��J��+2c��r7{��q�]�MxT��P [�f=3�t�]�yW�:%��ԟH�]�W+��\��%6���:
��m�2m������.�V�(��mļ�Z�6��W8r�����J������T�sz1�r���%�aj�41ū^��l���ѣ�l�Ē��ϗx,��`06�NU��)v�''VNl`._L���B������+;� ;�bg����pB:�s+��M���X�{c�ɢ+�j�}�bj�b������� 5ud��]�����ܛW�՗u%��xS`�����z�Җo�j[���V�+��l|<�ʻ��ύ�5X�:V��=��O�zPQ�G�Ʋ\��^$�8웩��XY�;-�uA����}0*9>�_`��t�������]�'u�cI�&�8h�%���[�>���T.e߃4�)�=���
bm�UN%���䝷��V`�����Ӫ����:�-�I�Rc
bU���W۾����5����Z�J{z��g負��b!��+j�~��b��y�)1���V9��eŞ�؞��]w-%O�S`����m��I,�\�����_��J�hQ=q�Y�(���9P�u�*'�����	bzbz�3+�/�@��_+ӗ�+С�??(-0��
bQ�����[8U$��@��˵��&��!o�LN/���o1�rc�8-�B�/0�"6u~p���ߘ��]��t�z�m+�}&R���I,)���zj*������_�hV����ښs
���󑠤���/���KZ�����e _�[m��w4��k�P�}?��H�q�]"�p]���U G�<q0R����rg����dq�L�V`���P��V�g�dA���=�<<LBJoI�y�dw���8
��`�҅�����X����OBl��bI�\<@�D_@�Ao�L=�o )�*�FO��\�O��|#(x]�e�7�}�H��� ����� !���Qb�>��+���`�vHw >I��#�ˆ�r9��N:�rK�9��>o۝���T���P����g���_ӅW��]�:y'%�T�Zr�]A)6�@*=<��'���0�
o�t�
*�Re�
���Ը��X���nbR	�1�bK�*x��K7F[jk73={�.*�� "�P�xSy�TP�����ߟ%U�G*����R	1	��~F�B����5:�^��������c,R%N3^5�ڋ�������9�SeC�#%NX�bR
���!Z�jrd���nr����z��3ʑm��)�����"e�ci��(�Z0�.sLA�C�fg�j�#�A���K�ᴬBI�X��wh�8� �h��v�:7I;�=Ob�v蟟>C4k��t&N�F�."?�BK�[��)"����
-�y�,�ȏ�`�,��Q�-�1*8���C+��e�:�[�/�<�¡^1W�ѓ���I�M�Л.� �谥�:Q�A�����B�R��j�t�~�M,��4j��Y�iKp��C04�:��w����6�Ir'�A/�����.T��ݧ"�0�=����NY��F�!V/��u�T�����M�-�9"����&LoD(hB�tD?��Z��Tu�qs�]J2���׺ZLc�w|�S�����o�<
�c$���nҭ%�mlk�.�����#.�)�o��܆�w8�Rg��c������� �������vb�O������|�#ۂH�-���_��qX.���Ώ����v)�t_}�l{���:~p�AX�W�$իs,B[�-;λ�g,iǫ/xk�\�vD>̏�9[�*b����ؼ};%��B�N��<?
�¥�kF�_߃<��Q�2v�z�	47���,U�K��!�(�-�(�r�,����Ʒ���1\�r���g'̗U�j�9QJ�rn�A?X�ú�� *��ٱ��\��_�*�#?�G���������y���i��S\��np1rb��MB�_)��VYK�����D����"7)�����MN��^��,�w΀J7cM�A�@$���p����s�s��ֻ�b��vK�l^��x�=?y��U ��і5%�P/v�C�ti���e��&7zR�b�uS�?�G�g���&(K-���S�t�X�����"�]1Υ_���nR���œ����^pQ2�7첽b��3�ba�\��uu2�~w�G�����5��0��{�����\�w��I�c�P����߬��x6μ����!�b���_��!��a2v�ſi���4��C����������rI����f0�7O����S�Ţ���Ϳ��>�����E=o7S�S�-���o��Y�YZ�)�F"-��b�O�k���x��!��P�]\|󋧦���H߽�1��l��lΚ��iu��`ps��C��f�X�5/Q�\_*m�f�)稹����a>$O;��C�a�;V.���cq��i^��R5�X��t%�s���=xȸ�; 5��3\�.R��/���.�۸7���w�y�����Q4��/F����L�9���6ލ��>#߆�����i\�ߪ�l�k��u��G�x?�����������؋Kyu7Ɨ�����o&�~,e��xy����������u�ݛ�9�I�[soك�h>.���۸}��yg���]���Qq�����i\��)��Tƹ�ŭ���E$Z�W�B{IKrD�\'�"�q%�$�&�_e{=s����D"��_�W�1/_[��e��IE�?�=D��®i�صa�@b�K�&��ۺ�+� ����^��������ǥف6M[�
�	�E�ƞAK-�T��|L,��yA.;�vjIƜf��GL��;V�<�zY�mr�r�E9U���/�̜f��!UĐGVpV_~��ƣL�+��u�Ui�F\^�i��^�]g�Kx��X��\����&�!�y�"�+!�A�u!`�;@��P�+Z�|`n�����IGV�m"��KZ��$�aͷ�d�����v̪�(�p2���^����N�	U�(�����I9�7��#��0;C/���m�J�h6ӕ�=�0Z0-������~܇1?��$�Rnj���5����$1ׁݶ�L�w[Ju�K�0c{��>�{�Μ!��,�)����O&��ă����/�:�II� E��e���3A���s���Ed_�! Qn���){Q�4f��͎ns���d�v��W����R��6gtm q�Z,v��;Qr6)A���E;��5�b��Ē�M�'���3�M3���PU�ʵ�]7'��دӜ� 6�cN�Vw�*<���$r[�cJ�����$�2>�*�Rb�)�*I|�����"q��@O����o��V�F�AQԧ�w�(r~�t\a6(�;��EC��MH3��EqcܨF$��͞k&bi/�t��-ƈ�����2Hf�8�Tr�e l ?)�ɉ]���%S�>@�]X�[��L��������S>A�|kF.�U<�u�Q-z�bw�������� 3����$Q�ܡ�I���׍���{��E�i�cy��h�����a�1(Ltn1:M-s�Hm��4����7�^�?r���ңIQz�/��dç(j=�o��xAљ��Y�}�V���AeD����eZ�ij�S�SۘM�w'������2��f��B���'NZg�xT���h}���6F�`�5Ց��y | �����c�,Z+;1XOޣ��T�>��ɀ��3#?��2����a�D�}/!"|�H��XN�t�;y(�7�L&���O2m/x�]�5�!0:Y#<8A������ZT�����)�����T}�cL��4#?������Y������_��ٙp��۝Y��wj*:11��Ё|��a/�?����&S�4biՙI+k={������>}s�:��E61��IuqdZƑwE�̵]<��	k��Z�=��da2<"����}�=v��s�U�)�c���e&�	`
����c5�ԑ䅎�9X�E��Um���%3ő}��X��Q��T�%Յ��(�y���Jb�Z�����d��'[:0$�ĉ���۔��aO^��\Xy��J�WoÚ��ё�!8sx��.Z��,U�����	�N"I0�i��("���w�O!"�NޥHc�[	���)����ߵ\��ȎX�I�G_|d�ٵ�mBҸFA�>�����ҷE��ה��"@$��Yu!�}�2�o�V�El�&��r�TI�����Y0A�l:ɐ�ŵ�!Y���H�+Յ	/�Y���Cě�i0l�P�r��i�R1��Q�J:!����Z����v�lݬ��Bace��,�,���3��KpZ�kƱpK�Zt�������&Ɩ��]} \��(&��Ƀd����G׳�R���md��3~�>ZFpؾ ��Y�js�����e{椹[�=�o�2��p�vVw�V��s�Lq���g�+�}�a�ߤ��U�5'_�Y�{uN>��������E�x��K�AJ�I5�4|�WAh�Fyl�If8)��(�n<�B��W�%�6��7���x��e��G�ې拿\\�'��_	.n���_������G�����G��?��������O��?��������O��?��������O��?�����     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Client.png-110c50073966eb7ee835957b11bb080d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Export/Client.png"
dest_files=[ "res://.import/Client.png-110c50073966eb7ee835957b11bb080d.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_resource type="DynamicFont" load_steps=2 format=2]

[ext_resource path="res://Kenney Pixel.ttf" type="DynamicFontData" id=1]

[resource]
size = 25
outline_color = Color( 0, 0, 0, 1 )
font_data = ExtResource( 1 )
            
 �   OS/2��  �   `cmap�|�   �  \glyfay��  l  L head_��     6hhea ��  @   $hmtx{��  d  Ploca ��  `�  Tmaxp�� S  �    name�c��  �  post ��  L                 8 $       ~ �x�     " & : �!"���     �x�     " & 9 �!"��������I�$��������$߯�                                                                                                                                                                                                                                                                                                                                                                                                                                                                  $       ~ �x�     " & : �!"���     �x�     " & 9 �!"��������I�$��������$߯�                                                                                                                                                                                                                                                                                                                                                                                                                                                                       d�tF_<�       �$��    �$�����                �   ��� ��                �                            �     �  �  � �                                                   �     �                                         �                                            �     �                                           �                                                     �                          �     �        �                 �           �  �     �  �  �  �                       �                              ��                                       �                       �                                                                       �           �                                       ���  �  �      � ( 
                         �        �          �        �        �        �        �        �       < �       7      	 M      
S       De       (�       .�       )�       (  	  0  	  &D  	  j  	  <x  	  6�  	  �  	  &   	  x&  	  ,�  	 	 �  	 
$�  	  ��  	  P�  	  \�  	  R	.  	  	�Copyright Kenney 2011
�Kenney Pixel Square� is based on �Kenney Pixel� by �Kenney� (http://fontstruct.com/fontstructors/show/39328/kenney)Kenney Pixel SquareRegularFontStruct Kenney Pixel SquareKenney Pixel Square RegularVersion 1.0Kenney-Pixel-SquareFontStruct is a trademark of FSI FontShop International GmbHhttp://fontstruct.com/Kenney�Kenney Pixel Square� was built with FontStruct
Designer description: KenPixel Square is a simple font, works great in Flash (games). This version is square.
�Kenney Pixel Square� is based on �Kenney Pixel� by �Kenney� (http://fontstruct.com/fontstructors/show/39328/kenney)http://fontstruct.com/fontstructions/show/506233/kenney-pixel-squareCreative Commons Attribution Share Alikehttp://creativecommons.org/licenses/by-sa/3.0/Five big quacking zephyrs jolt my wax bedBwkOd1pn C o p y r i g h t   K e n n e y   2 0 1 1 
  K e n n e y   P i x e l   S q u a r e    i s   b a s e d   o n    K e n n e y   P i x e l    b y    K e n n e y    ( h t t p : / / f o n t s t r u c t . c o m / f o n t s t r u c t o r s / s h o w / 3 9 3 2 8 / k e n n e y ) K e n n e y   P i x e l   S q u a r e R e g u l a r F o n t S t r u c t   K e n n e y   P i x e l   S q u a r e K e n n e y   P i x e l   S q u a r e   R e g u l a r V e r s i o n   1 . 0 K e n n e y - P i x e l - S q u a r e F o n t S t r u c t   i s   a   t r a d e m a r k   o f   F S I   F o n t S h o p   I n t e r n a t i o n a l   G m b H h t t p : / / f o n t s t r u c t . c o m / K e n n e y  K e n n e y   P i x e l   S q u a r e    w a s   b u i l t   w i t h   F o n t S t r u c t 
 D e s i g n e r   d e s c r i p t i o n :   K e n P i x e l   S q u a r e   i s   a   s i m p l e   f o n t ,   w o r k s   g r e a t   i n   F l a s h   ( g a m e s ) .   T h i s   v e r s i o n   i s   s q u a r e . 
  K e n n e y   P i x e l   S q u a r e    i s   b a s e d   o n    K e n n e y   P i x e l    b y    K e n n e y    ( h t t p : / / f o n t s t r u c t . c o m / f o n t s t r u c t o r s / s h o w / 3 9 3 2 8 / k e n n e y ) h t t p : / / f o n t s t r u c t . c o m / f o n t s t r u c t i o n s / s h o w / 5 0 6 2 3 3 / k e n n e y - p i x e l - s q u a r e C r e a t i v e   C o m m o n s   A t t r i b u t i o n   S h a r e   A l i k e h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 3 . 0 / F i v e   b i g   q u a c k i n g   z e p h y r s   j o l t   m y   w a x   b e d B w k O d 1 p n   {�              3 �           �  @  
        FSTR @  ��        �    ��              f 3                         ��         �  �q    ��   �  �q    �r������  ��  �    �  �r � �  �q � �  �q � �    ���������  ��         ��         �  ��   �     �  �� �  ��   ���         �   �   �  �   �      �      ��    �  ��  ��  ��   �  ��   �   �   �   �   �  ��   �  ��  ��  ��  � �  ����    �   �   �     �      �   ��  ��  ��  �      �    ���         ��  ��  ��   �  �      �       �     �      �    �   � �   � �� �   �         �  ��  ��  �   �   ��       ��              �        �    �       �       �  �          �       �      �   �  �� � �  �� � �  �� �   �      �         �        #   �  �   �   �  �    �  ��   �      �  ��  �    �          �  ��        �  ��   �  �� � �  ��     �  � �  ��   �  �  �   �     �   �  ��   � ��        �  �   �         �      �   �  �    �       �     �  �� ��  ��� �  ��        �          �       �  �    �     �  �� ��  ��� �  ��    �  �        �   �   �   �  �    �  �    �   �   �    �  ��   �  �� � �  �� � �  ��   �  ��      ��       �       �     �    �    �     �   ��  �      �� � �        �  ��   �      ��        �  � �  ��        � �        �     �  ��       ��            �       �       �       �       �       �   �  �� � �  �� � �  �� �   �        ��       ��  ��  �   ��  �����  ��     �� 	       �  ��      �     �  �   �  �   ��     ��          �   �  �               �  �   �   ��       ��          �      �   �     �      �      �  ��       �� 	     �    �  �   �    �     ��  �  ��     ��          �   �  �         �        ��  �   �        ��  	     ��  ��   �      �   � ���  ��  �        ��         �       �      �   �    �  ��� �  �� �    �  ��     ��        ��  �  ��  ��  �   �   � �   � � �  ��       ��  	     ��  �  �   �      � � �     ��        ��         �  ��   �     �  ��  �  ��   �� ��         �  ��   �  ��   � � �  ��      �         �   �  �    �  �    �  �    �       �       �       �     �  �� � �  �� � �  �� � �  �� � �  �� � �  �� � �  ��      ��        �  ��  �    �  ��  �  ��      �              �       �       �       �  �    �  �    �  �    �     �  �� � �  �� � �  �� � �  �� � �  �� � �  �� � �  ��       ��        �  ��     �   �  �      �  ��        �  �   ��       ��       ��  ��  �  ��     ��     � �  �����  ��  �   �  ��  ��     ��       ��  ��  �  ��  ��      � � �  ��  �  ��     ��       �  ��  ��  �  ��  �   �    �  ��     �   ��  �      ��       ��       �  �        �  ��  ��  ��       ��        �  ��     ��  �   ��  �����  ��  ��  ��     ��       �  �      �        �  ��  �   ��  �   ��       �� 	      �  �      �     �  ��  �   ��  ��     ��       �  �   �  �   �    �  ��  ��      �  �        ��        �  �   �  ��  ��    �  ��  �  ��  �  ��       ��        �  ��  �  ��   �     �  �   �  ��  ��  ��       ��  	             �   �     �  �� ��   �  �        ��         �  ��   �  �  ��  �   �    �  ��  �  ��  ��  �� �  ��        �        �  �    �  �   ��     ��       �  ��  �   ��  �     �  ��     �      �        ��       �  ��  ��    �  ��     �        ��       ��  ��  �   ��  �����  ��     ��  	     ��  ��  �  �       � � �  �   ��     ����       ��   �   �  ��  �   �  �    ��  ��   �  ���  �  �  ��  ��     ��        �  ��  �  ��  ��  �  ��    �  ��  �  ��     �   ��  ��     ��          �   �  �         �        ��  �   �        ��      �   �  �         �  ��  �        ��        �  �   �    �  �      ��       ��           �  �    �   �   �  �    �  �   �     �  �� � �  ��   �  �� ��  ��  �  ��       ��        �      �      �    �  �      �      ��       ��            �  �   �  �   �  �    �  �   �    �  ��  �  ��� �  �� ��  ��  �  ��       ��      �    �  �   �  �     �     ��  �  �   ��       ��  	          �     �    �       �       �      �   �       ��  ��  �  �� � �  �� � �  �� � �   �  �         �          ��   �    �  ��  ��  ��       ��           �  �    �  �    �  �    �  �    �       �   �  �� � �  �� � �  �� �   �         �        �  ��        �  �   �  ��      ��            �  �   �  �    �   �   �  �    �    �  ��   �  �� � �  ��   �  �� � �  ��       � �       �     �  ��    ���       �  �   �        ��       ��  ��  �  ��  ��      � � �  ��  �  ��     ��       �  ��  ��  �  ��  �   �    �  ��     �   ��  �      ��       ��       �  �        �  ��  ��  ��       ��        �  ��     ��  �   ��  �����  ��  ��  ��     ��       �  �      �        �  ��  �   ��  �   ��       �� 	      �  �      �     �  ��  �   ��  ��     ��       �  �   �  �   �    �  ��  ��      �  �        ��        �  �   �  ��  ��    �  ��  �  ��  �  ��       ��        �  ��  �  ��   �     �  �   �  ��  ��  ��       ��  	             �   �     �  �� ��   �  �        ��         �  ��   �  �  ��  �   �    �  ��  �  ��  ��  �� �  ��        �        �  �    �  �   ��     ��       �  ��  �   ��  �     �  ��     �      �        ��       �  ��  ��    �  ��     �        ��       ��  ��  �   ��  �����  ��     ��  	     ��  ��  �  �       � � �  �   ��     ����       ��   �   �  ��  �   �  �    ��  ��   �  ���  �  �  ��  ��     ��        �  ��  �  ��  ��  �  ��    �  ��  �  ��     �   ��  ��     ��          �   �  �         �        ��  �   �        ��      �   �  �         �  ��  �        ��        �  �   �    �  �      ��       ��           �  �    �   �   �  �    �  �   �     �  �� � �  ��   �  �� ��  ��  �  ��       ��        �      �      �    �  �      �      ��       ��            �  �   �  �   �  �    �  �   �    �  ��  �  ��� �  �� ��  ��  �  ��       ��      �    �  �   �  �     �     ��  �  �   ��       ��  	          �     �    �       �       �      �   �       ��  ��  �  �� � �  �� � �  �� � �   �  �        ��           �  �    �  �    �       �       �     �  �� �   �   �  �� �   �   �  ��        ��        �    �  ��       ��            �       �       �  �    �  �    �     �  �� �   �   �  �� �   �   �  ��     � �           �        �          �  � �  ��   �  �� � �  ��   �  ��      ��         �  ��   �    �  ��  �  ��     ��       ��   �  �       �     �      �    �  ���  �  �   �  ��  ��  ��  ��  ��     ��         �     �   ��   �     ��  �    �  ��       ��  ��  �   �  �  �    �  �   ��  ��      ��              �  �   �  �   ��  ��  �  �    �  �   �   � �  ��   �  ��  �  �����  ��� �  ��   �  ��     ��      ��   �  �    �  �   �  �    �  ��     �   �   �     ��  �  �   ��  ��  ��        ��         �  ��   �    �  �� �  ��     ��          �  ��     ��     ��   �  ��  �  �    �    �  ���  �      �  �   �  ����   ��  �   ��    ��         �  �   �    �  ��   �  ��      �           ��   �   �  �   ��      �  ��  ��  �����  �����  ��     ���       ��  ��  �  ��  ��  � �  ���    �    �  �� 
   �           # '      �      �  ��   �      �  ��   �      �  ��   �      �  ��   �      �   � �  ��   �  �� � �  ��   �  �� � �  ��   �  �� � �  ��   �  �� � �  ��   �  ��    �       �   �    �   �  �    ��        �  � �  ��        �  	         ��     �   ��      �  ��  � ���  �����  ��    ��       �    �  ��      ��       ��  ��  �  � �  �����  ��    ��         �  ��  ��   �   �   �  ��   � �  ��  �   �   �  ��  ��  ��    ��          �   �  �       �   �   �  ��  ��  ��      ��          �      �   �    �   �   �   �   �  ��       �            �  ��     � �  	       �  �   �  �   �    ��  �  �   �      ��      ��  ��   �     ��  ��    �   �      �  ��     �    � �         �  � �  ��     �   �  	       �   �  �    �  �  �   �  �   �  ��       �    �  ��          �  ��    ��       ��  ��  �  � �  �����  �� 
   �           # '       �      �  ��   �      �  ��   �      �  ��   �      �  ��   �      �   � �  ��   �  �� � �  ��   �  �� � �  ��   �  �� � �  ��   �  �� � �  ��   �  ��      �             �       �  �  �    �   �   �  �    �  ��   �      �     �  �� � �  ���� �  �  �      � � �  ���    � � �  ��        �              �       �   �   �     ��  �   �  �    �  ��   �      �     �  �� � �  ����   ��  ��  �   �  � � �  ���    � � �  ��        �     !       �     �    �   �   �  �    �  ��   �  ��   �  ��     �   �     �  ��   �  �  �      � � �  ���� �   �   �   �   �  ��  �  ��     ��  	         �     �    �       �  ��   �    �  �   ��� �  �� � �  ��  �  ��       ��        ��  ��  �  ��  ��  ��         � � �  ��  �  ��  �  ��       ��        ��  ��  �  ��  ��            � � �  ��  �  ��  �  ��       �           ��  ��  �  ��  ��  ��   �  �   �  �   �      � � �  ��  �  ��  �  ��   �  �� � �  ��       �            ��  ��  �  ��  ��  ��   �      �  ��      �   �      � � �  ��  �  ��  �  ��   �  �� � �  ��   �  ��     ��         ��  ��  �  ��  ��  ��   �  �   �      � � �  ��  �  ��  �  ��   �  ��     ��        ��  ��  �  ��  ��   �   �      � � �  ��  �  ��  �  ��        �       ��  ��     ��  �  ��  �  �   ��      � � �  ��  �   ��  �   ��  �  ��   � ��        �      ��  �  �      ��  �  �  �� � �  �  ��  ��  ��  ��     ��        �  �      �      ��       �  ��  �   ��  �   ��  �  ��     ��        �  �      �      �        �  ��  �   ��  �   ��  �  ��     �           �  �      �      ��   �  �   �  �   �    �  ��  �   ��  �   ��  �  ��   �  �� � �  ��     ��         �  �      �      ��   �  �   �    �  ��  �   ��  �   ��  �  ��   �  ��       ��         �  ��  �  ��   �  ��        �  �   �  ��  ��  ��  �  ��     ��         �  ��  �  ��   �  �         �  �   �  ��  ��  ��  �  ��     �            �  ��  �  ��   �  ��   �   �   �  �    �     �  �   �  ��  ��  ��  �  ��   �  �� � �  ��     ��          �  ��  �  ��   �  ��   �   �   �     �  �   �  ��  ��  ��  �  ��   �  ��   ��  ��        �  ��  ��   �     ��     �   �   ��  �����   �  �  ��  �   ��  �   ��     �            �  ��  ��  ��   �      �  ��      �   �    �  ��     �   �  ��   �  �� � �  ��   �  ��       ��        ��  ��  �  ��      ��  �����  ��  �  ��       ��        ��  ��  �  �       ��  �����  ��  �  ��       �           ��  ��  �  ��   �  �   �  �   �   ��  �����  ��  �  ��   �  �� � �  ��       �            ��  ��  �  ��   �      �  ��      �   �   ��  �����  ��  �  ��   �  �� � �  ��   �  ��     ��         ��  ��  �  ��   �  �   �   ��  �����  ��  �  ��   �  �� 	   ��          #       �  �   �  �    �   �   �  �    �  �    �   �   �  �    �  �   �   � �  ��   �  �� � �  ��   �  �� � �  �� � �  ��   �  �� � �  ��   �  ��       ��         �   �  ��  �    �  �   �   �  ����    �  �   �����  ��       ��         �  �   �  ��       �  �      ��  �  ��     ��         �  �   �  �        �  �      ��  �  ��     �            �  �   �  ��   �  �   �  �   �    �  �      ��  �  ��   �  �� � �  ��     ��          �  �   �  ��   �  �   �    �  �      ��  �  ��   �  ��       ��       �    �  �   �  �            �     ��  �  �   ��  �  ��      �    �  �   ��   �  �  ��  � �  �����  �   ��  �      ��  	          �  �    �  �   �  ��  ��     �     ��� �  �����  ��     �      ��        ��  ��  �  ��  ��  ��         � � �  ��  �  ��  �  ��       ��        ��  ��  �  ��  ��            � � �  ��  �  ��  �  ��       �           ��  ��  �  ��  ��  ��   �  �   �  �   �      � � �  ��  �  ��  �  ��   �  �� � �  ��       �            ��  ��  �  ��  ��  ��   �      �  ��      �   �      � � �  ��  �  ��  �  ��   �  �� � �  ��   �  ��     ��         ��  ��  �  ��  ��  ��   �  �   �      � � �  ��  �  ��  �  ��   �  ��     ��        ��  ��  �  ��  ��   �   �      � � �  ��  �  ��  �  ��        �       ��  ��     ��  �  ��  �  �   ��      � � �  ��  �   ��  �   ��  �  ��   � ��        �      ��  �  �      ��  �  �  �� � �  �  ��  ��  ��  ��     ��        �  �      �      ��       �  ��  �   ��  �   ��  �  ��     ��        �  �      �      �        �  ��  �   ��  �   ��  �  ��     �           �  �      �      ��   �  �   �  �   �    �  ��  �   ��  �   ��  �  ��   �  �� � �  ��     ��         �  �      �      ��   �  �   �    �  ��  �   ��  �   ��  �  ��   �  ��       ��         �  ��  �  ��   �  ��        �  �   �  ��  ��  ��  �  ��     ��         �  ��  �  ��   �  �         �  �   �  ��  ��  ��  �  ��     �            �  ��  �  ��   �  ��   �   �   �  �    �     �  �   �  ��  ��  ��  �  ��   �  �� � �  ��     ��          �  ��  �  ��   �  ��   �   �   �     �  �   �  ��  ��  ��  �  ��   �  ��       �        ��  ��     ��  ��  ��   �   �      �   � ��      ��   �   �   �  ��  ��     �            �  ��  ��  ��   �      �  ��      �   �    �  ��     �   �  ��   �  �� � �  ��   �  ��       ��        ��  ��  �  ��      ��  �����  ��  �  ��       ��        ��  ��  �  �       ��  �����  ��  �  ��       �           ��  ��  �  ��   �  �   �  �   �   ��  �����  ��  �  ��   �  �� � �  ��       �            ��  ��  �  ��   �      �  ��      �   �   ��  �����  ��  �  ��   �  �� � �  ��   �  ��     ��         ��  ��  �  ��   �  �   �   ��  �����  ��  �  ��   �  ��    ��          �  ��  �  ��   �   � �  ��  �  ��  �  ��       ��         �   �  ��  �    �  �   �   �  ����    �  �   �����  ��       ��         �  �   �  ��       �  �      ��  �  ��     ��         �  �   �  �        �  �      ��  �  ��     �            �  �   �  ��   �  �   �  �   �    �  �      ��  �  ��   �  �� � �  ��     ��          �  �   �  ��   �  �   �    �  �      ��  �  ��   �  ��       ��       �    �  �   �  �            �     ��  �  �   ��  �  ��      �    �  �   ��   �  �  ��  � �  �����  �   ��  �      ��        �    �  �   �  �   ��   �  �   �    �     ��  �  �   ��  �  ��   �  ��       ��        �    �  �   �  �   ��   �  �   �    �     ��  �  �   ��  �  ��   �  ��       ��  	          �  ��     �   �  ��  ��     �     ��� �  �����  ��     �    �            � �  ��     � ��        �  �   �      � ��        �  �   �      �� � �        �  ��   �      � ��        �  �   �      ���         �   �   �  �   �      �    ���         �   �   �  �   �      �    ��� �         �   �   �  ��   �      �    � ��      �       �     �   �     �     �   ��  �       ��    �  ��   �   �   �  ��    �   �   �  ��  ��  ��       � �          �   �   �   �   �     �  ��   �  ��   �  ��      ��            �  �    �  �    �       �       �   � �  �� � �  �� � �  �� � �  �� � �  ��      ��             �       �       �  �    �  �    �   � �  �� � �  �� � �  �� � �  �� � �  ��   �� ��        ��   �  �  �      �       �    �     ��  ��  ��  ��  ��       �     �   �  ��  ��  �  ��  ��  ��  �  ��     � �  ����    �  ��  �      �       �  ��      �    �   �  �      ��  �  ��  �   � �  �����  ��  �   �   �  ��      �          ��      �  ��  �     �  ��  �      �   �  ��       �   �   �   �   �   �  �  L  �  �  �  8  �    P  t  �  �  8  p  �  �  H  �  �    p  �  	  	<  	t  
  
T  
�  T  �     `  �  �  0  p  �    T  �  �  (  t  �  �  (  �  �  4  l  �     l  �  4  �  �  x  �  ,  P  t  �     X  �  �  0  |  �    X  �  �  4  l  �  �  H  �  �  ,  d  �  ,  �  �  �     $  �    <  �   0   �  !4  !l  !�  "0  "�  "�  #�  #�  $  $p  $�  $�  %,  %x  %�  %�  &(  &|  &�  &�  '  'H  (0  (�  )�  *\  *�  +0  +�  ,$  ,�  -@  -�  .  .x  .�  /8  /�  0<  0�  0�  1�  2   2t  3  3T  3�  4   4�  5  5�  6L  6�  6�  7\  7�  8   8l  8�  9<  9�  :0  :�  ;L  ;�  <$  <�  <�  =D  =�  >H  >�  ?  ?�  @  @�  A  A`  A�  B,  B�  C   Cp  C�  D   Dl  D�  EH  E�  E�  Fl  F�  GP  Gt  G�  G�  G�  H  H<  Ht  H�  H�  ID  I�  J  J�  J�  Kl  K�  L     
 �   OS/2v�  �   `cmap�|�   �  \glyfxv�  @  Y�head_��     6hhea���  @   $hmtx   d  Ploca �	  k   Tmaxp�� S  �    name��S  �  �post ��                    8 $       ~ �x�     " & : �!"���     �x�     " & 9 �!"��������I�$��������$߯�                                                                                                                                                                                                                                                                                                                                                                                                                                                                  $       ~ �x�     " & : �!"���     �x�     " & 9 �!"��������I�$��������$߯�                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ��^1_<�       �$��    �$������ �            ���  @�� @@                � @       �   �   �     �  �  �  �   �   �   �  @ @�   �  �   �  �  �     �  �  �  �  �  �  �  �   �   �  @  �  @  �  �  �  �  �  �  �  �  �  �        �  @     �  �  �  �  �  �  �  �  �     �  �  �   �  �   �  �  �  � �  �  �  �  �  �  �  �   �     �  @     �  �  �  �  �  �  @  �  �     �  �  �      �     �   �  �  �  �  �   �  �  �  �     �  �     �  �     �         �  �  �   �   �   �     �  �  �  �  �  �  �  �  �  �  �  @  �  �  �  �  �              ����  �  �  �  �  �  �  �  �  �  �  �  �  @  �  �  �  �  �  �  �  @  �  �  �  �  �              �  �  �  �  �  �  �  �  �  �  �  �  �  �  @  �  �  �  �   �   �   �   �           �     �        ���@  �  �      � ( 
                         �                          !        (        ?        S        ^       < j        �      	  �      
 � �       ?\       (�       .�       )�         	   *"  	  L  	  d  	  .r  	  (�  	  �  	  �  	  x�  	  ,n  	 	 �  	 
4�  	  ~�  	  PX  	  \�  	  R  	  VCopyright Kenney 2011Kenney PixelRegularFontStruct Kenney PixelKenney Pixel RegularVersion 1.0Kenney-PixelFontStruct is a trademark of FSI FontShop International GmbHhttp://fontstruct.com/Kenney�Kenney Pixel� was built with FontStruct
Designer description: KenPixel is a simple font, works great in Flash (games). This version is slightly rounded.
http://fontstruct.com/fontstructions/show/503556/kenney-pixel-1Creative Commons Attribution Share Alikehttp://creativecommons.org/licenses/by-sa/3.0/Five big quacking zephyrs jolt my wax bedBwkLcFxi C o p y r i g h t   K e n n e y   2 0 1 1 K e n n e y   P i x e l R e g u l a r F o n t S t r u c t   K e n n e y   P i x e l K e n n e y   P i x e l   R e g u l a r V e r s i o n   1 . 0 K e n n e y - P i x e l F o n t S t r u c t   i s   a   t r a d e m a r k   o f   F S I   F o n t S h o p   I n t e r n a t i o n a l   G m b H h t t p : / / f o n t s t r u c t . c o m / K e n n e y  K e n n e y   P i x e l    w a s   b u i l t   w i t h   F o n t S t r u c t 
 D e s i g n e r   d e s c r i p t i o n :   K e n P i x e l   i s   a   s i m p l e   f o n t ,   w o r k s   g r e a t   i n   F l a s h   ( g a m e s ) .   T h i s   v e r s i o n   i s   s l i g h t l y   r o u n d e d . 
 h t t p : / / f o n t s t r u c t . c o m / f o n t s t r u c t i o n s / s h o w / 5 0 3 5 5 6 / k e n n e y - p i x e l - 1 C r e a t i v e   C o m m o n s   A t t r i b u t i o n   S h a r e   A l i k e h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 3 . 0 / F i v e   b i g   q u a c k i n g   z e p h y r s   j o l t   m y   w a x   b e d B w k L c F x i 6�      ��      3 �           �  @  
        FSTR @  � ��  � �  �    ��              f 3                                       ��   �  �]   R  ��   �  ��������  �R      H R  �� _ R  �� _ R  �� _ Q    ��������   �          @�         @  ��   @     @  �� �@  ��   @ ��         @   @   @  @ �  ��   �  ��     @�     �  ��  ��  ��   @  ��   @   @   @   @   @  ��   @  ��  ��  ��   � @  ���@ �   @   @   @   �  ��   �  ��  ��  ��  ��  ��   �  ��   ��@    #      @  ��   @   @  ��   �  ��   @  ��   @   @   �  ��   @  ��   @  ��   @ �  �� � �  ���� @   @   �   @   �   @   @  ��  ��  ��  ��  ��  ��  ��       @�              @   �   �  �    @       @       @  �    �   �   @     �  ��   �  �� � @  �� @ @  �� @ @  �� @ �  ��   �  ��       ��        #   @   �   @   @  ��   @  ��   @      @  �@  ��   @   �       @  �@   �     @  ��   @  �� @ @  ��   �  �� @ @  ��   @   �  ��  �� � �  �� � @  ��   @ @�        @  @ �  ��        ��      @   @  ��   @       @     @  �� @@  ��@ @  ��        ��          @       @  ��   @     @  �� @@  ��@ @  ��    @ � @        @   @   @   @  ��   @  ��   @   @   @   � @  ��   @  �� @ @  �� @ @  ��   @  ��      @@�    �  ��   �   @   �  ��   @ �   @   �  ��  ��  ��     �� @ @        @  �� �  ��      �@        @   � @  ��        @ @        @     @  ��       @�            @       @       @       @       @     �  �� � @  �� @ @  �� @ @  �� @ �  ��       @�       @   �  �    @   �   @  �    �     @  �� @@  ��  @  ��@ @  ��      �� 	       @  ��   �   @     @  @   @  ��  ��     @�  	         @     �    �       @  ��        �  ��  �� � @  �� @ �  �� � @  ��       @�                �       @  ��        @  �� @ �   @   �  ��@ @  ��       @� 	     �    @   �   @     �     �@   �  �@     @�        @   �  �    @   �   @  �    �  �   @  �      @  �� @ @  ��   �  �� � @  �� @ �  ��  ��     @�        @   �       @  ��   @   �  �@   �   @  �    �     @  �� @ �  ��  @  ��  ��  ��  @  �� @ @  ��       @�      �   @       @      �   @     �  �@ � @  �� @ �   @  �@     @�          @   �  �    @   �   @  �    �  �    @   �   @  �    �     @  �� @ �  ��   �  �� � @  �� @ �  ��   �  �� � @  ��       @�        @   �  �    @  ��   @   �  �@   �   @  �    �     @  �� @ @  �� � �  ���@ �   @   �  ��@ @  ��        @@         @  ��   @     @  ��  @  ��   �� @@         @  ��   @  �� �  ��@ @  ��      �          �   @  ��   @  ��   @  ��   @       @       @       @     @  �� @ @  �� @ @  �� @ @  �� @ @  �� @ @  �� @ @  ��      �@@        @  ��  @   � @  �� � @  ��      �              @       @       @       @  ��   @  ��   @  ��   @     @  �� @ @  �� @ @  �� @ @  �� @ @  �� @ @  �� @ @  ��       @�         �   @  ��   @       @  �    @   �   @  �    �     @  �� � @  �� @ @  �� � @  ���� �  �� � @  ��     @�        @     ��  ��  �@   @   @   �   @  �    �     @  �� � @  ����@  �� @ �   @  �   @  ��     @�         @   �   @  ��  �@       �    �  ��   �  ��   �  �@� @  ��     @�         @  ��   @  ��     �@   �  �@   �   @ �  �� � �  ��� �  ��  ��  ��  ��  ��       @�        @   �       @  ��   @   �   @  �    �     @  �� @ @  ��  @  ��  @  �� @ @  ��       @�        @  ��     �@   �   @@  �����  ��  ��  ��     @�      @     ��   @     �             @  �� @@  ��  ��  ��@ @  ��       @�         @     �            �  ��  ��  �@� @  ��     @�  	      @   �      ��   �  ��   @   �   @  �    �     @  �� @ �   @  �@  @  ��  @  �� @ @  ��     @�        @   �   @  ��  �@    �  �@   �  �@   �  �@        ��        @  ��   �  ��   @     @  @   @  ��  ��  ��        ��  	       �      ��   �     @  �� @@   @  ��       @�         @  ��   @   �  �@   �   @     �  �@  �  �@  ��  �@  �  �@        �     @   �  �    @     @  �� @�  ��     ��       �   @   �   @  �@   �  ��   �   �    �  ��  �  ��  �  ��  ��� @  ��       @�  	      @  ��     �@    �  ��  �  ��  ��       @�       @   �  �    @   �   @  �    �     @  �� @@  ��  @  ��@ @  ��     @�        @  ��     �@   �  �@    �  ��� �  ��  ��  ��  �@     ��@�       �  ��   @   @   @  ��  �@   @   �   @  �    �  �� @   @   @  ��  ��  �� �@  ��  @  ��@ @  ��     @�         @  ��   @  ��     �@   �  �@     �  �@  �  ��� �  ��  ��  ��  �@     @�                   @  �    �  �    @            @  �� @ �  �� � @  �� @ �  �� � @  ��       @�    �  ��  @  ��    �   @  ��  ��       @�      @   �  �    @   �   @     @  �� @�  ��  �  ��       @�        �   @  ��   @   @   @  �    @   �   @     @  �� @ @  ��   @  �� @@  ��  @  ��       ��  	        �  ��   @   �       @   �   @     @  ��  �  ��  �� @�  ��  �  ��       @�            @   �   @  �    �  �    @   �   @     �  �@   �  �@ � @  �� @ �  �@   �  �@       @�      �  ��   �  ��  �@   @   �   @     �   @  ��  �@  �  �@   �  �@       @�  	          @     �    @       @       @      �   @     �  ��  �� � @  �� @ @  �� @ @  �� @ @   @  ��        ��        �  ��   @    �  ��  ��  ��       @�           @  ��   @  ��   @  ��   @  ��   @     �  �� � @  �� @ @  �� @ @  �� @ �  ��        ��        @  ��   �     @  @   @  �@      @�            @   �   @  �    @   @   @  ��   @    @  ��   @  �� @ @  ��   @  �� @ @  ��       @ @       @     @  ��    @@�       @  @ �  ��       @�           @  ��   @       �  �@   �   @  �    �   @ �  �� � @  ���  @   �   @   @  ��@ @  ��       @         @  ��   @   �  �@   �   @   � ��   ��  ��  �   ��       @�        @   �       @  ��   @   �   @  �    �     @  �� @ @  ��     �  � @  �� @ @  ��       @          @       �  �@   �   @   @   � �� @      @   �  �        @�       @   �       @  ��   @   �   @  �        �     @  �� @ @  ��     ��   @  ��  ��  @  ��       @�     @  ��   @   @   �  ��       �        @   @  ��  ��  � � @  ��   ��@�       @   �  �    @  ��   @   �  �@   �  �@     �� @  �� @ @  �� � �  ���@ �   @   �   @  ��       @         @  ��   @   �  �@    @  ��     ��  ��  ��      @�        @    �  ��     �� ��  	       �      ��   �  �� @  �� @@   @  ��       @�         @  ��   @   �  �@   �   @     �  �@  �  ��  ��  �@  �  ��        �     @   �  �    @     @  �� @@  ��     ��       �   @   �   @  �@   �  ��   �   �    @  ��  @  ��  �  ��  ��@ @  ��       @�  	      @  ��     �@    @  ��  �  ��  ��       @�       @   �  �    @   �   @  �    �     @  �� @   �      �   @  ��     @�        @  ��     �@   �  �@   � �  ���@�  ��  ��  ��  ��     ��@�      �    @   �  �@     �� �   �  ��   �   @  �@       @�          @   �   @  �    �    @  ��  @  �� @ @  ��       @�                   @  �    �  �    @            @  �� @ �  �� � @  �� @ @  �� @ @  ��        �     �   �  �@  ��   @   @   �  ��     @  �� @    @   @  ��  ��  �      @�  	       @       �   @   @@  ���� @  @  ��       @�        �   @  ��   @   @   @  �    @   �   @     @  �� @ @  ��   @  �� @   �      �        ��  	        �  ��   @   �       @   �   @     @  ��  �  ��  �� @@  ��  @  ��       @�            @   �   @  �    �  �    @   �   @     �  �@   �  �@ � @  �� @ �  ��   �  ��     ��@�      @   �  �    @   �  �@   �   @  �� @  ��  �  �@�@ �   @   �  ��       @�  	         @     �    @       @      �@  @  ��     �  ��  �� � @  �� @ @  �� @ @   @  ��  ��        ��        �   @  ��   @  ��   @       @       @     @  �� @ �  �� � @  �� @ �  �� � @  ��        @�        @    �  �@        ��            @       @       @  ��   @  ��   @     @  �� @ �  �� � @  �� @ �  �� � @  ��      ��@           @   �   �  �    �   �   @   � @  ��   @  �� @ @  ��   @  ��      @�         @  ��   @    @  ��� @  ��     @�          @  ��   @   �   @  �@  ��   @  ��   @   @   @  ��   @  ��   � @  ��   �  �@ � @  ���  @   @   �   @   @  ��  ��  �@  ��  ��     @�           @     �   ��   @   @   @  ��   �   @  �@   �     �  ��  �� � @   @   �  ��  ��  �� � @  �� @ @  ��      @@�             @   �   @  ��  ��  ��   �  �    @   �   @   @ @  ��   @  �� � @  ���� �  �@ � @  ��   @  ��     @�      �  ��   @  ��   �  ��   @  ��  �@   @   �   @     @   @   @   @  ��  ��  ��  ��  �  �@   �  �@        @�         @  ��   @     �  �@  �  �@ 
    @�         # '   @   �  �    @   @   @   @   @  �    @   @   @  ��   @  �@   @   �   @  �    �     @  �� @ @  �� @ @  ���� �  �� � @  ��   @  �� @ @  ��   �  �� @ @  �� @ @  ��   �@�         @   �   @  � @  ��   @  ��     ��        @     �@   �  ��   @  �    @      @  ��        @  �� � �  ��  ��  ����@  ��  @  ��@ @  ��      � ��         @   @   @  ��  ��       @   � �  ��   @  �@   @  �� � @  �� 
   @��         # '   �   @   �   @  ��   @   �   @  ��   @   �   @  �@   @   �   @  �@   @   �   @   @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  ��    �@       �   @   � @   @  ��    � �         �   � @  ��       ��  	      @     �@   �  ��  �@   @      @  ��        @  �� � �  ��  ����@  ��  @  ��@ @  ��   �@�       @  � @  ��       ��     �  ��  ��   �  @ @  ���� �  �@    @@�        @  �@  ��   @   @   @  ��   @ @  �� � @   @   @  ��  ��  ��    � ��        �  ��   �  ��   �   � �   @   @  �@  ��  ��      � ��        �  ��   �  ��   �   � @   @   @   @   @  ��     � ��        �  � @  ��     ��@          @   �  �@   �   @  ���  �@  ��  �� � �  �@     @�    �  ��  ��   @     ��  ��     �   @   �   @  �@  �  ��    � @         @   � @  ��     �� � @  	       @   @  ��   @  �� @   @  �� � @  ��       ��    @  ��   �    �   @  �@     ��     �  ��  ��   �  @ @  ���� �  �@ 
   @��         # '       @   �   @  �@   @   �   @  �@   @   �   @  ��   @   �   @  ��   @   �   @   @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  �� @ @  ��   @  ��     ��             @       @   �  ��   @   @   @  ��   @  ��   @      @     @  �� @ @  ���� @   �  ��   �  � @ @  ����   �  � @  ��       ��              @       @   @   @   �  ��  ��   �  ��   @  ��   @      @     @  �� @ @  ���� �  ��  �� � @   @  �� � @  ����   �  � @  ��       ��     !       @     ��   @   @   @  ��   @  ��   @  ��   @  ��   �   �   @     @  ��   @   �  ��   �  � @ @  ���@ @   @   @   @   @  ��  @  ��     @�         @   �       @  ��   @       @       @  ��   @     @  �� @ @  ��   �  �� � @  �� @ @  �� � @  ��     @@          @   �   @  ��  �@       �  �    �    �  ��   �  ��   �  �@� @  �� � @  ��       @@          @   �   @  ��  �@       �  ��   �    �  ��   �  ��   �  �@� @  �� � @  ��       @�            @   �   @  ��  �@       �  �    @   �   @  �    �    �  ��   �  ��   �  �@� @  �� � @  ��   @  �� @ @  ��       @�             @   �   @  ��  �@       �  �    @   �   @  �@   �   @   @    �  ��   �  ��   �  �@� @  �� � @  ��   @  �� @ @  ��   @  ��     @@           @   �   @  ��  �@       �  �    @   �   @    �  ��   �  ��   �  �@� @  �� � @  ��   @  ��     @@          @   �   @  ��  �@       �  ��   @    �  ��   �  ��   �  �@� @  �� � @  ��        �        @   �  �@  �  �@   �  �@   �  �   �@    �  ��   �   @  ��  ��  ��  ��  ��   �  �@   ��@�  	       �   @      ��   �       @  ��   @   �   @  �    �  �� @  �� @ @   @  �� � @  ��  @  ��  @  �� @ @  ��       @@       @     ��   @     �          ��   �     @  �� @@  ��  ��  ��@ @  �� � @  ��     @@       @     ��   @     �          ��   �     @  �� @@  ��  ��  ��@ @  �� � @  ��     @�         @     ��   @     �          ��   @   �   @  �    �     @  �� @@  ��  ��  ��@ @  �� � @  ��   @  �� @ @  ��     @@        @     ��   @     �          ��   @   �   @     @  �� @@  ��  ��  ��@ @  �� � @  ��   @  ��        �@         @  ��   �  ��   @  �@   �     @  @   @  ��  ��  ��  @  ��      �@         @  ��   �  ��   @  ��   �     @  @   @  ��  ��  ��  @  ��      ��           @  ��   �  ��   @  �@   @   @   @  ��   @     @  @   @  ��  ��  ��  @  ��   @  �� @ @  ��      �@          @  ��   �  ��   @  �@   @   @   @     @  @   @  ��  ��  ��  @  ��   @  ��   ��  @�        @  ��  ��   @     �@   �  ��   �   @@  ���� �   @   �  ��  ��  ��  ��  ��     @�              @   �   @  �    �  �    @   �   @  �@   �   @   @    �  ��  �  ��� @  �� � @  ��   @  �� @ @  ��   @  ��       @@        @   �  �    @   �   @  �    �  �    �     @  �� @@  ��  @  ��@ @  �� � @  ��       @@        @   �  �    @   �   @  �    �  ��   �     @  �� @@  ��  @  ��@ @  �� � @  ��       @�          @   �  �    @   �   @  �    �  �    @   �   @  �    �     @  �� @@  ��  @  ��@ @  �� � @  ��   @  �� @ @  ��       @�           @   �  �    @   �   @  �    �  �    @   �   @  �@   �   @   @     @  �� @@  ��  @  ��@ @  �� � @  ��   @  �� @ @  ��   @  ��     @@         @   �  �    @   �   @  �    �  �    @   �   @     @  �� @@  ��  @  ��@ @  �� � @  ��   @  �� 	   @@�         #       @   �   @  �    @   @   @  ��   @  ��   @   @   @  �    @   �   @   @ @  ��   @  �� @ @  ��   @  �� @ @  �� @ @  ��   @  �� @ @  ��   @  ��       @�      �   @  ��  ��   @   @   �      ��  ��   �   @   � �  �@�� @  @  �   ��  �� @    @   @  ��  ��       @@       @   �  �    @   �   @  ��   �     @  �� @�  ��  �  ��� @  ��     @@       @   �  �    @   �   @  ��   �     @  �� @�  ��  �  ��� @  ��     @�         @   �  �    @   �   @  ��   @   �   @  �    �     @  �� @�  ��  �  ��� @  ��   @  �� @ @  ��     @@        @   �  �    @   �   @  ��   @   �   @     @  �� @�  ��  �  ��� @  ��   @  ��       @@       �  ��   �  ��  �@   @   �   @  ��   �     �   @  ��  �@  �  �@   �  �@  @  ��      �     �   @  �    @   �  ��   �  ��   � @  ���@�  ��  ��  ��  ��  ��     @�        �   �       @  ��   @       @  ��     �@     @  �� @ �  �� � @  �� @ �  ��� �  ��  ��     @@          @   �   @  ��  �@       �  �    �    �  ��   �  ��   �  �@� @  �� � @  ��       @@          @   �   @  ��  �@       �  ��   �    �  ��   �  ��   �  �@� @  �� � @  ��       @�            @   �   @  ��  �@       �  �    @   �   @  �    �    �  ��   �  ��   �  �@� @  �� � @  ��   @  �� @ @  ��       @�             @   �   @  ��  �@       �  �    @   �   @  �@   �   @   @    �  ��   �  ��   �  �@� @  �� � @  ��   @  �� @ @  ��   @  ��     @@           @   �   @  ��  �@       �  �    @   �   @    �  ��   �  ��   �  �@� @  �� � @  ��   @  ��     @@          @   �   @  ��  �@       �  ��   @    �  ��   �  ��   �  �@� @  �� � @  ��        �        @   �  �@  �  �@   �  �@   �  �   �@    �  ��   �   @  ��  ��  ��  ��  ��   �  �@   ��@�  	       �   @      ��   �       @  ��   @   �   @  �    �  �� @  �� @ @   @  �� � @  ��  @  ��  @  �� @ @  ��       @@       @     ��   @     �          ��   �     @  �� @@  ��  ��  ��@ @  �� � @  ��     @@       @     ��   @     �          ��   �     @  �� @@  ��  ��  ��@ @  �� � @  ��     @�         @     ��   @     �          ��   @   �   @  �    �     @  �� @@  ��  ��  ��@ @  �� � @  ��   @  �� @ @  ��     @@        @     ��   @     �          ��   @   �   @     @  �� @@  ��  ��  ��@ @  �� � @  ��   @  ��        �@         @  ��   �  ��   @  �@   �     @  @   @  ��  ��  ��  @  ��      �@         @  ��   �  ��   @  ��   �     @  @   @  ��  ��  ��  @  ��      ��           @  ��   �  ��   @  �@   @   @   @  ��   @     @  @   @  ��  ��  ��  @  ��   @  �� @ @  ��      �@          @  ��   �  ��   @  �@   @   @   @     @  @   @  ��  ��  ��  @  ��   @  ��       @        @   �  �    @   �  �@   �   @  �@  ��   @   @   @  ��     @  �� @ �  ��   �   @   �  ��  @   @   @  ��  ��  ��     @�              @   �   @  �    �  �    @   �   @  �@   �   @   @    �  ��  �  ��� @  �� � @  ��   @  �� @ @  ��   @  ��       @@        @   �  �    @   �   @  �    �  �    �     @  �� @@  ��  @  ��@ @  �� � @  ��       @@        @   �  �    @   �   @  �    �  ��   �     @  �� @@  ��  @  ��@ @  �� � @  ��       @�          @   �  �    @   �   @  �    �  �    @   �   @  �    �     @  �� @@  ��  @  ��@ @  �� � @  ��   @  �� @ @  ��       @�           @   �  �    @   �   @  �    �  �    @   �   @  �@   �   @   @     @  �� @@  ��  @  ��@ @  �� � @  ��   @  �� @ @  ��   @  ��     @@         @   �  �    @   �   @  �    �  �    @   �   @     @  �� @@  ��  @  ��@ @  �� � @  ��   @  ��    @@�      �   @  �@  @  �@   @   @ @  �� � @  �� � @  ��       @�      �   @  ��  ��   @   @   �      ��  ��   �   @   � �  �@�� @  @  �   ��  �� @    @   @  ��  ��       @@       @   �  �    @   �   @  ��   �     @  �� @�  ��  �  ��� @  ��     @@       @   �  �    @   �   @  ��   �     @  �� @�  ��  �  ��� @  ��     @�         @   �  �    @   �   @  ��   @   �   @  �    �     @  �� @�  ��  �  ��� @  ��   @  �� @ @  ��     @@        @   �  �    @   �   @  ��   @   �   @     @  �� @�  ��  �  ��� @  ��   @  ��       @@       �  ��   �  ��  �@   @   �   @  ��   �     �   @  ��  �@  �  �@   �  �@  @  ��      �     �   @  �    @   �  ��   �  ��   � @  ���@�  ��  ��  ��  ��  ��     @@        �  ��   �  ��  �@   @   �   @  ��   @   �   @     �   @  ��  �@  �  �@   �  �@  @  ��   @  ��       @@        �  ��   �  ��  �@   @   �   @  ��   @   �   @     �   @  ��  �@  �  �@   �  �@  @  ��   @  ��       @�        �   �       @  �@   �       @  ��     �@     @  �� @ �  �� � @  �� @ �  ��� �  ��  ��    ��        �   � @  ��     @ @�        @  @ �  ��     @ @�        @  @ �  ��     �� @ @        @  �� �  ��     @ @�        @  @ �  ��     @ ��         @   @   @  @ �  ��   �  ��   @ ��         @   @   @  @ �  ��   �  ��   �� � @         @   @   @  �� �  ��   �  ��   ��@�    �  ��   �   @   �  ��  ���   @   �  ��  ��  ��      � �@    @  ��   @   @   @  ��   � @   @   @  ��  ��  ��       @ @          @   @   @   @   @     @  ��   @  ��   @  ��      @ ��        �   @  ��   @  ��   @       @       @   @ @  �� @ @  �� @ @  �� @ @  �� @ @  ��      @ ��            @       @       @  ��   @  ��   @   @ @  �� @ @  �� @ @  �� @ @  �� @ @  ��   �� @@�        @   �       @  ��  ��   @   @   �  ��   �   @  �    �   @ @  �� @ @  ��   @   @   @  ��  ��  �� � @  �� @ @  ��       �     @   @  ��  ��  @  ��  ��  ��  @  ��   �  @ @  ���� �   @  ��  ��   �  ��   �   @  �@     �� 	         @  @  ��  �       @  ��   �    �  ��  �    �  �@@ @  �� @ @  ��     ��         @      @  ��  �        �    �  ��   �  ��   �  �@� @  ��       �   �   �   �   �   �  �  t    �    `  �  ,  x  �  �  �  `  �    t  �    �  	,  	�  
,  
�  
�  ,  �    �  D  �  (  �    h  �    �  �  4  x  �    �  �  ,  �    |  �  0  �  �  l  �  L  �    �  �  D  h  �    h  �  <  �     �  �    X  �  �  d  �    d  �       |   �  !   !�  "  "�  "�  #p  #�  $  $�  $�  %(  %�  &t  '  '�  '�  (�  (�  )x  )�  *�  *�  +  +�  +�  +�  ,P  ,�  ,�  -  -X  -�  -�  .  .@  .x  /`  0  0�  1�  2  2�  3  3�  4h  4�  5l  5�  6�  6�  7t  8  8�  9  9h  9�  :l  :�  ;�  <  <�  =(  =�  >t  ?H  ?�  @8  @�  A,  A�  B   B�  C  C|  C�  D�  EP  E�  FT  F�  Gl  G�  H\  I   I�  I�  JP  J�  KT  K�  L�  M  M�  N<  N�  O�  O�  Pd  P�  Q,  Q�  R8  R�  S  S�  T0  T�  T�  T�  U   UD  Uh  U�  U�  V  V\  V�  V�  Wt  W�  X�  Y  Y�  Y�            [gd_scene load_steps=4 format=2]

[ext_resource path="res://login_screen.gd" type="Script" id=1]
[ext_resource path="res://Theme.tres" type="Theme" id=2]
[ext_resource path="res://ActorSprite.tscn" type="PackedScene" id=3]

[node name="Login" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 2 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="."]
anchor_left = 0.153
anchor_top = 0.5
anchor_right = 0.862
anchor_bottom = 0.5
margin_left = 10.0
margin_top = -38.0
margin_right = -10.0
margin_bottom = 38.0
size_flags_horizontal = 5
size_flags_vertical = 5
alignment = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GridContainer" type="GridContainer" parent="VBoxContainer"]
margin_right = 706.0
margin_bottom = 64.0
columns = 2

[node name="Label_Username" type="Label" parent="VBoxContainer/GridContainer"]
margin_top = 5.0
margin_right = 83.0
margin_bottom = 25.0
text = "Username"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LineEdit_Username" type="LineEdit" parent="VBoxContainer/GridContainer"]
margin_left = 87.0
margin_right = 706.0
margin_bottom = 30.0
size_flags_horizontal = 3

[node name="Label_Password" type="Label" parent="VBoxContainer/GridContainer"]
margin_top = 39.0
margin_right = 83.0
margin_bottom = 59.0
text = "Password"

[node name="LineEdit_Password" type="LineEdit" parent="VBoxContainer/GridContainer"]
margin_left = 87.0
margin_top = 34.0
margin_right = 706.0
margin_bottom = 64.0
size_flags_horizontal = 3

[node name="CenterContainer" type="CenterContainer" parent="VBoxContainer"]
margin_top = 68.0
margin_right = 706.0
margin_bottom = 94.0

[node name="HBoxContainer" type="HBoxContainer" parent="VBoxContainer/CenterContainer"]
margin_left = 283.0
margin_right = 423.0
margin_bottom = 26.0
size_flags_horizontal = 3

[node name="Button_Login" type="Button" parent="VBoxContainer/CenterContainer/HBoxContainer"]
margin_right = 53.0
margin_bottom = 26.0
text = "Login"

[node name="Button_Register" type="Button" parent="VBoxContainer/CenterContainer/HBoxContainer"]
margin_left = 57.0
margin_right = 140.0
margin_bottom = 26.0
text = "Register"

[node name="Popup" type="CenterContainer" parent="."]
anchor_left = 0.5
anchor_top = 0.254
anchor_right = 0.5
anchor_bottom = 0.319
size_flags_horizontal = 3
size_flags_vertical = 3
use_top_left = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="Popup"]
margin_left = -113.0
margin_top = -25.0
margin_right = 112.0
margin_bottom = 25.0
size_flags_horizontal = 3
size_flags_vertical = 3
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Popup/VBoxContainer"]
margin_right = 225.0
margin_bottom = 20.0
size_flags_horizontal = 3
text = "Please choose your avatar"
align = 1

[node name="HBoxContainer" type="HBoxContainer" parent="Popup/VBoxContainer"]
margin_top = 24.0
margin_right = 225.0
margin_bottom = 50.0
rect_pivot_offset = Vector2( 28, 17 )

[node name="LeftButton" type="Button" parent="Popup/VBoxContainer/HBoxContainer"]
margin_right = 72.0
margin_bottom = 26.0
size_flags_horizontal = 3
text = "<"

[node name="OK" type="Button" parent="Popup/VBoxContainer/HBoxContainer"]
margin_left = 76.0
margin_right = 148.0
margin_bottom = 26.0
size_flags_horizontal = 3
text = "OK"

[node name="Sprite" parent="Popup/VBoxContainer/HBoxContainer" instance=ExtResource( 3 )]
position = Vector2( 115, -56 )
scale = Vector2( -4, 4 )
frame = 0

[node name="RightButton" type="Button" parent="Popup/VBoxContainer/HBoxContainer"]
margin_left = 152.0
margin_right = 225.0
margin_bottom = 26.0
size_flags_horizontal = 3
text = ">"

[node name="Timer" type="Timer" parent="."]
one_shot = true
autostart = true
         [gd_scene load_steps=5 format=2]

[ext_resource path="res://main.gd" type="Script" id=1]
[ext_resource path="res://Login.tscn" type="PackedScene" id=2]
[ext_resource path="res://tilemap_packed.png" type="Texture" id=3]

[sub_resource type="TileSet" id=1]
resource_local_to_scene = true
0/name = "tilemap_packed.png 0"
0/texture = ExtResource( 3 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 1, 1, 127, 47 )
0/tile_mode = 1
0/autotile/bitmask_mode = 1
0/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 50, Vector2( 3, 2 ), 48, Vector2( 4, 0 ), 152, Vector2( 4, 1 ), 26, Vector2( 4, 2 ), 56, Vector2( 5, 0 ), 255, Vector2( 5, 1 ), 507, Vector2( 5, 2 ), 24, Vector2( 6, 0 ), 447, Vector2( 6, 1 ), 510, Vector2( 6, 2 ), 16, Vector2( 7, 0 ), 144, Vector2( 7, 1 ), 146, Vector2( 7, 2 ), 18 ]
0/autotile/icon_coordinate = Vector2( 0, 0 )
0/autotile/tile_size = Vector2( 15, 15 )
0/autotile/spacing = 1
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "tilemap_packed.png 1"
1/texture = ExtResource( 3 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 129, 1, 127, 47 )
1/tile_mode = 1
1/autotile/bitmask_mode = 1
1/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 50, Vector2( 3, 2 ), 48, Vector2( 4, 0 ), 152, Vector2( 4, 1 ), 26, Vector2( 4, 2 ), 56, Vector2( 5, 0 ), 255, Vector2( 5, 1 ), 507, Vector2( 5, 2 ), 24, Vector2( 6, 0 ), 447, Vector2( 6, 1 ), 510, Vector2( 6, 2 ), 16, Vector2( 7, 0 ), 144, Vector2( 7, 1 ), 146, Vector2( 7, 2 ), 18 ]
1/autotile/icon_coordinate = Vector2( 0, 0 )
1/autotile/tile_size = Vector2( 15, 15 )
1/autotile/spacing = 1
1/autotile/occluder_map = [  ]
1/autotile/navpoly_map = [  ]
1/autotile/priority_map = [  ]
1/autotile/z_index_map = [  ]
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0
2/name = "tilemap_packed.png 2"
2/texture = ExtResource( 3 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 1, 49, 127, 47 )
2/tile_mode = 1
2/autotile/bitmask_mode = 1
2/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 50, Vector2( 3, 2 ), 48, Vector2( 4, 0 ), 152, Vector2( 4, 1 ), 26, Vector2( 4, 2 ), 56, Vector2( 5, 0 ), 255, Vector2( 5, 1 ), 507, Vector2( 5, 2 ), 24, Vector2( 6, 0 ), 447, Vector2( 6, 1 ), 510, Vector2( 6, 2 ), 16, Vector2( 7, 0 ), 144, Vector2( 7, 1 ), 146, Vector2( 7, 2 ), 18 ]
2/autotile/icon_coordinate = Vector2( 0, 0 )
2/autotile/tile_size = Vector2( 15, 15 )
2/autotile/spacing = 1
2/autotile/occluder_map = [  ]
2/autotile/navpoly_map = [  ]
2/autotile/priority_map = [  ]
2/autotile/z_index_map = [  ]
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape_one_way = false
2/shape_one_way_margin = 0.0
2/shapes = [  ]
2/z_index = 0
3/name = "tilemap_packed.png 3"
3/texture = ExtResource( 3 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 129, 49, 127, 47 )
3/tile_mode = 1
3/autotile/bitmask_mode = 1
3/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 50, Vector2( 3, 2 ), 48, Vector2( 4, 0 ), 152, Vector2( 4, 1 ), 26, Vector2( 4, 2 ), 56, Vector2( 5, 0 ), 255, Vector2( 5, 1 ), 507, Vector2( 5, 2 ), 24, Vector2( 6, 0 ), 447, Vector2( 6, 1 ), 510, Vector2( 6, 2 ), 16, Vector2( 7, 0 ), 144, Vector2( 7, 1 ), 146, Vector2( 7, 2 ), 18 ]
3/autotile/icon_coordinate = Vector2( 0, 0 )
3/autotile/tile_size = Vector2( 15, 15 )
3/autotile/spacing = 1
3/autotile/occluder_map = [  ]
3/autotile/navpoly_map = [  ]
3/autotile/priority_map = [  ]
3/autotile/z_index_map = [  ]
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape_one_way = false
3/shape_one_way_margin = 0.0
3/shapes = [  ]
3/z_index = 0
4/name = "tilemap_packed.png 4"
4/texture = ExtResource( 3 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 129, 97, 127, 47 )
4/tile_mode = 1
4/autotile/bitmask_mode = 1
4/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 50, Vector2( 3, 2 ), 48, Vector2( 4, 0 ), 152, Vector2( 4, 1 ), 26, Vector2( 4, 2 ), 56, Vector2( 5, 0 ), 255, Vector2( 5, 1 ), 507, Vector2( 5, 2 ), 24, Vector2( 6, 0 ), 447, Vector2( 6, 1 ), 510, Vector2( 6, 2 ), 16, Vector2( 7, 0 ), 144, Vector2( 7, 1 ), 146, Vector2( 7, 2 ), 18 ]
4/autotile/icon_coordinate = Vector2( 0, 0 )
4/autotile/tile_size = Vector2( 15, 15 )
4/autotile/spacing = 1
4/autotile/occluder_map = [  ]
4/autotile/navpoly_map = [  ]
4/autotile/priority_map = [  ]
4/autotile/z_index_map = [  ]
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shape_offset = Vector2( 0, 0 )
4/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
4/shape_one_way = false
4/shape_one_way_margin = 0.0
4/shapes = [  ]
4/z_index = 0

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="TileMap" type="TileMap" parent="."]
scale = Vector2( 4, 4 )
tile_set = SubResource( 1 )
cell_size = Vector2( 15, 15 )
cell_custom_transform = Transform2D( 15, 0, 0, 15, 0, 0 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 1, 2, 0, 1, 3, 0, 1, 4, 0, 1, 5, 0, 1, 6, 0, 1, 7, 0, 1, 8, 0, 1, 9, 0, 1, 10, 0, 1, 11, 0, 1, 12, 0, 1, 13, 0, 1, 14, 0, 1, 15, 0, 1, 16, 0, 2, 65536, 0, 65536, 65537, 0, 65537, 65538, 0, 65537, 65539, 0, 65537, 65540, 0, 65537, 65541, 2, 0, 65542, 2, 1, 65543, 2, 1, 65544, 2, 1, 65545, 2, 1, 65546, 2, 1, 65547, 2, 2, 65548, 0, 65537, 65549, 0, 65537, 65550, 0, 65537, 65551, 0, 65537, 65552, 0, 65538, 131072, 0, 65536, 131073, 0, 65537, 131074, 0, 65537, 131075, 0, 65537, 131076, 0, 65537, 131077, 2, 65536, 131078, 2, 5, 131079, 2, 131073, 131080, 2, 131073, 131081, 2, 131073, 131082, 2, 6, 131083, 2, 65538, 131084, 0, 65537, 131085, 0, 65537, 131086, 0, 65537, 131087, 0, 65537, 131088, 0, 65538, 196608, 0, 131072, 196609, 0, 131073, 196610, 0, 131073, 196611, 0, 131073, 196612, 0, 131073, 196613, 2, 131072, 196614, 2, 131074, 196615, 1, 0, 196616, 1, 1, 196617, 1, 2, 196618, 2, 131072, 196619, 2, 131074, 196620, 0, 131073, 196621, 0, 131073, 196622, 0, 131073, 196623, 0, 131073, 196624, 0, 131074, 262144, 4, 0, 262145, 4, 1, 262146, 4, 1, 262147, 4, 1, 262148, 4, 1, 262149, 4, 1, 262150, 4, 2, 262151, 1, 65536, 262152, 1, 65537, 262153, 1, 65538, 262154, 4, 0, 262155, 4, 1, 262156, 4, 1, 262157, 4, 1, 262158, 4, 1, 262159, 4, 1, 262160, 4, 2, 327680, 4, 65536, 327681, 4, 65537, 327682, 4, 65537, 327683, 4, 65537, 327684, 4, 65537, 327685, 4, 65537, 327686, 4, 65538, 327687, 1, 65536, 327688, 1, 65537, 327689, 1, 65538, 327690, 4, 65536, 327691, 4, 65537, 327692, 4, 65537, 327693, 4, 65537, 327694, 4, 65537, 327695, 4, 65537, 327696, 4, 65538, 393216, 4, 131072, 393217, 4, 131073, 393218, 4, 131073, 393219, 4, 131073, 393220, 4, 131073, 393221, 4, 131073, 393222, 4, 131074, 393223, 1, 65536, 393224, 1, 65537, 393225, 1, 65538, 393226, 4, 131072, 393227, 4, 131073, 393228, 4, 131073, 393229, 4, 131073, 393230, 4, 131073, 393231, 4, 131073, 393232, 4, 131074, 458752, 0, 0, 458753, 0, 1, 458754, 0, 1, 458755, 0, 1, 458756, 0, 1, 458757, 0, 1, 458758, 0, 2, 458759, 1, 65536, 458760, 1, 65537, 458761, 1, 65538, 458762, 0, 0, 458763, 0, 1, 458764, 0, 1, 458765, 0, 1, 458766, 0, 1, 458767, 0, 1, 458768, 0, 2, 524288, 0, 65536, 524289, 0, 65537, 524290, 0, 65537, 524291, 0, 65537, 524292, 0, 65537, 524293, 0, 65537, 524294, 0, 65538, 524295, 1, 131072, 524296, 1, 131073, 524297, 1, 131074, 524298, 0, 65536, 524299, 0, 65537, 524300, 0, 65537, 524301, 0, 65537, 524302, 0, 65537, 524303, 0, 65537, 524304, 0, 65538, 589824, 0, 131072, 589825, 0, 131073, 589826, 0, 131073, 589827, 0, 131073, 589828, 0, 131073, 589829, 0, 131073, 589830, 0, 131073, 589831, 0, 131076, 589832, 0, 131076, 589833, 0, 131076, 589834, 0, 131073, 589835, 0, 131073, 589836, 0, 131073, 589837, 0, 131073, 589838, 0, 131073, 589839, 0, 131073, 589840, 0, 131074 )

[node name="Login" parent="." instance=ExtResource( 2 )]
margin_left = 3.0
margin_top = 12.0
margin_right = 3.0
margin_bottom = 12.0
          [gd_scene load_steps=4 format=2]

[ext_resource path="res://Actor.tscn" type="PackedScene" id=1]
[ext_resource path="res://player.gd" type="Script" id=2]
[ext_resource path="res://Font.tres" type="DynamicFont" id=3]

[node name="Actor" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Label" parent="KinematicBody2D" index="1"]
margin_left = -75.0
margin_top = 39.0
margin_right = 75.0
margin_bottom = 63.0
custom_fonts/font = ExtResource( 3 )

[node name="Chat" parent="KinematicBody2D" index="4"]
margin_left = -427.0
margin_top = -62.0
margin_right = 428.0
margin_bottom = -36.0
custom_fonts/font = ExtResource( 3 )
    [gd_resource type="Theme" load_steps=2 format=2]

[ext_resource path="res://Font.tres" type="DynamicFont" id=1]

[resource]
default_font = ExtResource( 1 )
Button/fonts/font = null
Button/styles/disabled = null
             GDSC   +   $   Z   [     ���϶���   ������������τ�   �������Ӷ���   ����ڶ��   ����ڶ��   ������Ӷ   �����Ӷ�   ����������������Ķ��   ��������������Ķ   ��������ζ��   ������������Ķ��   ����Ķ��   �����¶�   ������������¶��   ��������Ķ��   ��������������ж   ��������   ����������������������Ҷ   ����������������Ŷ��   �������϶���   ���������Ӷ�   ��������������Ӷ   ��������Ҷ��   �������������������¶���   �����Ӷ�   ����������׶   ������϶   ���¶���   �������ض���   �������������Ҷ�   ����ݶ��   ������Ӷ   ����¶��   ���������������Ŷ���   ����׶��   �������������¶�   �����������ٶ���   ������������������ٶ   �������Ŷ���   ���ƶ���   ���϶���   ���������Ҷ�   ��������������¶      res://model.gd        KinematicBody2D       KinematicBody2D/Label         KinematicBody2D/Sprite     &   KinematicBody2D/Sprite/AnimationPlayer        KinematicBody2D/Chat      Timer                        2                       instanced_entity      x         y         entity        name   	   avatar_id         Set       id        's target to:            F                  
   walk_right              walk_up    	   walk_down      	   walk_left      q     0            ?      /                                  $      /      :      E   	   F   
   G      L      Q      V      ]      b      g      n      s      z      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +     ,     -     .     /     0   '  1   -  2   .  3   5  4   ;  5   F  6   S  7   T  8   Z  9   `  :   d  ;   e  <   r  =   x  >   y  ?   }  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N     O     P     Q     R   "  S   )  T   *  U   2  V   :  W   ;  X   ?  Y   Y  Z   3YY5;V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�	  V�  �  P�  QY5;�
  V�  �  P�  QYYY;�  �  Y;�  �  Y;�  �  Y;�  �  T�  Y;�  �	  Y;�  �
  Y;�  �  T�  Y;�  �  Y;�  V�  �  Y;�  V�  �  Y;�  V�  �  Y�  Y0�  P�  V�  QV�  T�  P�  Q�  �  ;�  �  L�  M�  �  �  P�  P�  L�  MQR�  P�  L�  MQQ�  �  �  L�  ML�  M�  �  &�  �  V�  �  �  L�  M�  �  &�  V�  �  T�  �  �  �  �?  P�  R�>  P�  L�  MQR�  R�  Q�  �  &�  V�  �  �  T�  �  �  �  T�  PQ�  �  &�  V�  T�  �  �  �  �  YY0�  P�  V�  QV�  T�	  T�  �  �  �
  T�   PQYY0�!  P�"  QV�  &�  �  V�  �  �  T�#  PT�  Q�  �  T�  T�$  P�  Q�  �  �  &�  �  V�  T�  �  �  �  �  �  �  &T�  T�%  P�  Q
�  V�  �  �  T�  �  �  '�  V�  �  �  T�#  PT�  Q�  �  T�  T�$  P�  Q�  �  �  &T�  T�%  P�  Q
�  V�  �  �  T�  �  �  T�  �  �"  �  Y0�&  P�"  QV�  &�  T�  PQ
�  V�  �  T�'  PQ�  (V�  &PZ�  
�  �  	�  QP�  
�  �  	Z�  QV�  �  T�(  P�  Q�  '�  Z�  
�  �  	Z�  V�  �  T�(  P�  Q�  'Z�  
�  �  	�  Z�  V�  �  T�(  P�  Q�  (V�  �  T�(  P�  Q�  �  &�
  T�)  PQV�  T�	  T�  �  �  �  &�  V�  �  T�*  P�  P�  P�  R�  �   �!  QR�  P�"  R�#  QQQY`            GDSC      	      �      ������ڶ   �������Ѷ���   �������Ӷ���   ����������ڶ   ����������Ҷ   �����������¶���   ������Ӷ   �����϶�   ������¶   �����¶�   ����¶��   ���������¶�   ������������϶��   ������Ҷ   �������Ӷ���   ��������䶶�   ���������Ŷ�   ����������   ������������Ŷ��   ����������Ӷ   ���¶���   ����������¶   �����������Ҷ���   ����������ڶ   '   CanvasLayer/VBoxContainer/RichTextLabel    -   CanvasLayer/VBoxContainer/HBoxContainer/Label      0   CanvasLayer/VBoxContainer/HBoxContainer/LineEdit      text_entered      
                       message_sent                                                 %      &   	   ,   
   7      8      A      K      Q      T      Z      ]      c      d      m      u      v            �      �      �      �      �      3YY5;�  �  PQY5;�  �  P�  QY5;�  �  P�  QYYB�  P�  QYY0�  PQV�  �  T�  P�  RR�  Q�  Y0�	  P�
  V�  QV�  &�
  4�  �
  T�  V�  /�
  T�  V�  �  V�  �  T�  PQ�  �  V�  �  T�  PQYY0�  P�  V�  QV�  �  T�  �  �  YY0�  P�  V�  QV�  &�X  P�  Q�  V�  �  T�  �  �  �  �  �  P�  R�  R�  QY`        GDST               �=  WEBPRIFF�=  WEBPVP8L�=  /�� ����)���_���0J�R��1�cK����b�%��^6�,�a��;K��R��ޛ�s-��y朙3g>� Z�ִ���K2I3۬f5��A��'*n�m5���AQEzz�4��n#	�$��j���"ܳ{*#� �L4EMQ���e(o{�5w�����FO˝�E8��)�<-�k��ms�1���7��)mj�j�)$ ud�.�3�$P�}��K��c�2/
?u����x�/��E8ݓo��E(Ͳ�l�B��X��G�v�E8�Wa�(�{=*OkYD�m\��U9o��H����T)���]��ay��U�+�>{��g���TK_��E8����j)e)�񳌋p�/~�I�M�ey��.�����ukYR7.������{��.���<����Q�.���uNW�e�eCܓ@��;�$P�=�p:4w����~/'Mw�;7<i8K�I�F�1�/N�: �8���H^$�%ѓ7Nsw�t���@�Eg�9���=ͽ�^$	8�xɓFW�O�V��g��xZV��?�΍�3$�Y�Y���3$���w�.wa	qV��;�8�E�s��vO��g�2>kx��m$g�o#y� �3�Eg �;�?�`��H�:*>F�`�����lw�{�n�#��M'���}=��妓���g�3$���T�lp���=�Q�	ԝܫ(]6r��p�<Xp�m���=�P�;���;K�����YOq��I���� �n�7;�޵7�Z�o���8뾸2�w5��%�����A����;�X��K�l0���xЀuA���TK�,�Õy��ԧ~��j)�E(qw�;g�Wp���U)����Fҏ|����U�C�=��]��������jЕ+�U��}tgA�YgƝ�������Io����8�ϐ(�;s�DY�e�1&7�uh�X���Z��Y@$a�q�m$=��H�q�������_��x�;o���+�9<����1�>�c���������(�Dvu�ԣ@3�PWaA'M{����'Mrv����e��*��E23ql�Qƚ�^{x�O�qF��}qү|q�_�K{<2�X�����\`�YG�1;�	�/Nz����o~(���r/�ks�{��8��I����"�p8gzI��"	��&�����=g�x�Li:͝�u�;�)m^�o�AO�<��mo yҠwy� ����t�D��,��k� /;x��wy�/<���Zz���@�m�k� #�]>F�Z���@�8�]�8�<-/;8����.��o`�?5X65�6U�Ul��;=�hIE*���{���Q����V�;=Yl�X�l�J��#��%�	�6�]E�ף�Hv�}K"mߒ�w�9�{l+�1T�	�w�,�1T�9_o� e�bAnOW�ۏW��vG��:>T�	�W�3}��kd=�P	 /q��)>P�Ym�5�_��&�c��v�*% yaz�q����7�\� ��F�n�#w1����FK$ yYj�MG�}�[*s:��rn�C��s8=�Ǭ�{_� ��Ț�Y���HU�$�sǜ7ǻ�B����Xj�@(�C�+ǐ��JKk2��7Y�s��`�k	�`l��æ*��浿3p��ܧE�D�$ �����"<����E�]�C�'l���i$�2�s5=>7��k�9��H��z#��5�V��ZT6���C��_7��#��p��F|��5���.IN�t�u�c �*F��=��Mu��9��'j�QW3�t�"q5�G���{�}�1_tHb�c3�
	����I��R�=�,ِ��^)kw	�EmuN��w��=b@L��&o�U�̀�o���ٯ�Ԝt�Lϣ[c��=�n���[�����
$z��ށ�[D���|�w��/�Zv	{���5�@oh+��N�&��R�wQ[1�B<��ޢ�x��l��0�مh+x�7p��$������d�־�i5�ڊ����CC�w��8�aNʴ�j_y2l�Vc�b��"��(��K���1_V�7�?Q[�S���;�z��G�1���G�}3�K�^�P�I��jy������ưx��*/�9�ށ�[,�\���g�}3���2T��$r�_����%�qLZO���N�e�4mH)I`�ŗ���%��F�-I���|G�^�2n1;���]Dm%�ɨ�����C��:2���]:��,��\$��t�
��[췇��1x���Ṗ3�����gR�}���~{��"n����΀���)�n��oQ[	f�������;��5�F�����t�`�It�S�	,���O������D���t�����$-�Ӡ���d���d��#�N6&oO����^���젖�,�7�N6b��x�~��p���[�Dm�����CC	?dD���xҘg��Ռ=\�@��7�P�-�}���W�V:��"0��Y��*� ��Hi�!�o�#�[H�:~S)Ҧb�׽���2�.��CZ�KN!�/���^������V�zմ�M�V�)��$ t�� ���!�^w4皶�!u��ߴ��|<�$օ�F+L��I-V���3RK��M]&�
��Dm-��$ t�1�_	`�uGu���R]&�ME*���-U�?�1`�[b�K��T��[��T𛂴E�yd�Dm��o% t���?8ë�o�δ摑
Җ�d�R�;�<�m�-#������p�����ݲ�,����!��	�J�dR(���t���㘧��H�����w4\ 񜑁�U�~t5�#Rv��H"�G���Տ�@!Տ剶��I~�(�n>R:^vJ�nCC�e�|DJ���5R��S&jk�+�W�ʴ��o�HѾ�7!^�4�)�"&�"&�F<����Ft�ɨ=B�� ��\�&�It~�m��SA]��MZ��M�|*�����C�H��N��6��j#��,W����Cᐶ˂�����������@z(���;��-�O�V�iH��F������7�Y@_o�?}��'I��'}o�?z�Y�7�HD}�`���:ZS}�.��o�	-r�Q�������O݈��\���{��榝�V⚱o�D�;6��j�vj�̱W�v?��QON�r�:t��� r�A;o$�bK>��dX<@����*�t��c}���!ys�qGN?ɛ{��`}�a��v�d�A��O��=
8s���A�2`jW3�RCy�pŐR�7�J�ސ�J�s�r��>�U���%�<�B6H5��V��R�lxNv�!�3�V�Gʈ;�(�!W�U����s�i.l5tHo܁��e�H;U�V�Go;��6�j��Hw��9ߐ�3{�T�����7$�cr�R���R1��a�\g��Hy�#K�]ߑV�wF+�T�ܰ��tF)�i/8���o[����
ٰz���*R�w���O=�Aʊ:p��Y�Q��Bc� ����]�2�\��Ί�Q~�^#<6;�&jv��{=6�u|�
G�1T;J @XjIr�^[��=i�K
e{��=���6�?�V���u��Cn��`��'�hS� &b�a�uV����,K��s�v��K҆�j25`��o#�5I�|cĜ�� 0bZO�S3s�}cDR�&�m$W[
��,o�#��Y���xl��e)��9��)|�`m�,��F2�}=Q3���v:� ��[V$6bM�<�o���;�3^��{�oܡ�����Q��k
	 7�9�{r�����m'���/C�P�̘����w4Ƚ�h�9v��+�lC%� d�\��������lҤ��Dmej��'�j7U/#�}�ʥ�ӥ��Ve���^����!̉[�a�6��Emen�.�uU��/-�}G�9��z�ץ��QE���,�4>T�?~�㍱�4ѳ���N�׷�Z�
v�J��WK��$c�� i$ �/K�5��~�%X㛎[��$j+����L�Vw:��5�g�إ*=��5s�FR ��������ִ��Emex��ݚb� m!7Y(NB-
�Ɗ�X�AWOE-n5 ,q��-�U��٠���Y�V�Ǹ��UJ���Ӏ�}@܎LE��������
p�f���"���{^����4b�}�.��V�6��2?��������������n,HQ}ϑ�O��7p,O푡���n��5U}��hX<�qS1������wYG5�`J(���|s^�vbS��w4,�G����T���#a��i
�ޒ��t�����p"�n�&����t�!��X���.q5o�z���\M�s�H�H����3��ۛ�4����c���j&�V���HO�{���4��b���޻�@"�f�V��E� �pv�@*[�tT3~l	�r�*�pF�L߂����GX+�;�-��;����H��Em՘�l c&n����p���m$(���J�S�т�ѯ��]-86ӄ�Q[5'���fV^~��~Å/E�0�#a�;yo�x=�|�q��r9��4)Տ,�nC�1|���{�W�q��8R2�LA4�������V���g.��jT������A����;ؠ�o"h��u�꜑�ƚ�P�e�x�hB��:t�]3�ڪY���]�o<�2vW��Y�e�(m�&+���4e{�ׅ��v���q�U�҈#�ݚVܶ�ƚ�����!���`=��;��aoH��(j��%�|�7G'���� � ��Y��,�����$�&�Oh5�R�wQ[5/)��j^��SA�SV�;B#����;�*��G2m��gh�-n��U�xB[���Lf�=�@m�kFi�k�8�Q2�j���9�h�M��.E4�!o%m�~j��;5PO�I�$���J�U���L�����=ۨ�U3�F���M��Ln���y�bPW܁A~���!�әd��⏩{%Q[54u�tL���?ɑZNg�\S�`�9��lST��{&�1w��ŗ����������&j[��4 u�f�������,��9�Yk$q�Ea[��Y���b�����2��7�U�V͛�:�K�^��	�I��k��Ty���7��E4צ�����i=��gQ[95��|+��z� �W��[c}E���k��Mt����AG���:�P�	����g��_�9�R0��W�'q�9q�f���n�C��x����k:�f5�I�|�5� ��1O��s"�^�n���P��x��ņ�`A�ʥ�;���)�B������Em���hv�۫�%'j�v�c�j�e����G���]"Q��V@�}&Q[�9���;?iU�m��O���������6�����������0P�_I�2���;�Em���hyFܩ�=�s�P��/_?T��{�W�̸�N��rvrN'@fܩҗF��)ڐ�Dm���
m��_I�^�F@����[�����c��h��G���S�Hh�@�QQڢ�Em��7 �d�F6U!�no|.u{C��J���,K>�Y������;�y�;����6�r�o���o#�ኡ-K�ߖ%G����*E���랉��=��(_+
��o�UJt�L�𵙸��Q�/�N�m��*o��%i#�ZWi�����o�u�l��0�K~6�K@��8+�T�:����2!�j7YXl(t�Ǐmv���t"=t4t4 >TΊC<u�������8��]��[�fo	2.g{K� YV����+�oK����QHs^��zlxW�c4�}Y�É	~2�n�@-2vW����J ��pV"1� E�d�Y�eA
@^�
8+�tP�1�1 ���K42��=�:�gOz���2�IZ�AI�����+��
�8+���:'��˧B���I��JS��~�!�9�z�o�8+��x=T����GU�7Pg�B)�XԒ��PY��w����C}��jg�8o�޲��	�yS���4]߳�`��H�������7��z����b������K��-�Ӵ�pV2���*N�z�II�	�hs���
��̧��`�Go�|* �ü�Q�s�H @:��G��B��wge���PBJ��xQ��u3+���r�s���r.��4?p��P��Ґ{�)�z�R�O�z6�%��L��Nɛ{���FQ���͔s:��}o9���S��T�n/�x�cS��$.�R}���L� ofz�Pyߦln��y��ɛ{�}�#�a&n��X��׳��T%ଭb�2}7�h	 +�AW�����"	?���f̗x5rU�u;��n:n% Y�x�3�l�?��>Ғ�p��oS���L�鴜q	@f>4E�u�e��N]ȭ�J��NG����r�@ s���_Y!}w����xҸ�9K�+I ���Ơ��̒���y�q9OF�@,�E�}��_���ZT�j4��뙛��;	�hqT��w$[��떓tP+Έ�§�����>�;q<$|�L��@<�LZOꕸ���|���6r��a�eYr	�B�{L���*i=�[B�F�y9���s*�*�J�#"&�uUҩ�T�r"�p���4�KZ5��k��{�=��P+qj�lő�>#a��ѫ �c�
x���8�ȗ��,G��3�����XNg	 �@�	�	�k�x#򿀎�x �-�_� �l�(b�z��a���7DN �D,� �����~�&l�l�V��g�@���!�>��}e�6e~��	Dp�ȿ� ���Y����X��/�*�3�V����"��٣f����@7>B�;��r<Cs����\F�!f1�3�t5�(�'��g? ���8XU�? x(�8��k����9� ?!ry��� ���&�ό���5Dd�>"k  ��d��qs WO "7�����IeI��`/a���`��8z�d�BDvq.N�X�9�(��K . r�9�H' R+u�Y'�iVr~l)��,�3q�GN����|��, NMK�;�0�8�77O B"g@�7����#��r���G�>�e
�"Ź�p ��C��-`x��"d�= r�هQ�l�&��Q�+r�7	�1"8U������L�'!�@�(̒4�*x���$��8� �Ċ��g��7��{��"Ĝ@�!�	�6G	 #�b���V@r��D&\�v�����s5ظœ��������1��7j�W,�3@�ir���ܕ� '!�"�.�Y�Y�8��6!��� `�>����
��G��ZRR�w	 3�+)��!\BH�s@X���Ԃ� ��N �@�n�����>��ɨCl��@�l� @]|��Q*  ��P@g����K���nM�����@x�/H �?!�+@�xc�/B&��t�9� ��a�"��B�_�'"��@d�Y��%��e�tm��EL><���Ac�'!��Y��^
�g��ċ3����xB���$� ���Ԡ晝�#$�!�r8��=(��g�8kgVZ��O��%�J�����
H�]@��R��D�Do=����!q�qf}E5�}fgW�P����3�) q�"��]���z��n&�>Y@/��
�,cU��ߛ���!(j��u�0@��"��xT�����O��E��N\a&n )��=D��6B�7��k@��!s��]|����й��07�n�[Bź/��;�, q� �{y���#m n Ry���j/�/!m�y)�:�߸H���wj#z'�AH�M@����<�!n�r�]@�"�gr�aWA� 	KF��%u��VTN2�!����7T\��5�B�:��F-:��d�������zlxC��J$�"΃�=���|<;4 ��@п?O�D2s���!$i��a�ßZ��;�d
����s\����ܡ��HP8B�v��������A� ��{�JD��J�3��"�����x#�z	!1��Sܪ������8�)�:���* �4������ ��{�D6a��
HHB�8C��j4�!ƚHl]2���r����rȬ� ���/�8@"� �S�7�D8ﰇۓ���P@�G<%j�"�̠���DH�W#��8Q[��,�nPB�QC4�<�&v�B7P�\ x~����E���q)�~��,'A�̕�;Q[��h�/{�xK�""��H3 ���wWQ[5��<3F�v ^��3" �M|� �.sDx�7Ddx��* ���^I�V-E>}� `��]@L)D�mC�����u6i�C.Cx	LW�pf7`kQ[�F��(k����_����!z`�=&,��*�����7=�
���`�X�kr���i+
1|?���XGX����? �� B�2΢�*�d��B��D|ApG�"������)���j+��y,e\��&@����� V"�X���#ه����A<����)� @%��t�ـ�[ g ����s�r�UcQI��o�� ᬫ�� �c�y����*�k�UkQJ�;��m���x%��Nn�j�DG4�d�+9�g����G%E�AkE�u��ڪ��%p�kg����œҴzŀk�Ք&38��N6:�R�QL��:"�.j���g\�8R�F�����Tdh2���m�"[���)�3����y��� ��#���������7T)��!���_T�4H<�ICu"ѳw;��~J6K����������zR6��O�K���jg��G8�Rox�g�s��_ۨ[�8�k7c���U_�)!a��|87~¨'7K�򡦓a�J\����~���8�>A	�������-�����@�*٨/�>�r8�O���k:�$�kI\ϖӹ�m|�&��c��1�(g&-��ڨSΌ§��͔w:V޷M���	�m��dZM��ﱙh=��꾁T?6�,`Z��~�G鳆�������q���*o��v��֛%[W�l,z�)�wQӷ�>�W� f�+��R��/K�o�,u�������R�)��7Z1�o�f��DU�~�u��M�L�����[V�3[���,�g�)x�@Y��BCy�PU��bCy�HU��RKy�x��g��h��G�d�Aa�%~�@���Yi� d��uU��̀�۩�{���!cMX>�'o	�,	�G��Zx9�=S;�����uU���q�.�g�% vz�P�l�:��ںW*��3��r��|xF��c\Ι�K�e_�J�:z6n6Ty�#~�f�}�["�a���%b���ֿS���:\Ws���F[��m��~Ws��R���ߩ��!O�%bS��H�l����	�l��b.Þ���K���p6�����_�k/�5}�V��p.�w�w��㰧�R�U���P���P����ͧb�S�|lx�2}g9���S���?�k��?j�NZO�ùL�5�c7G<5����Qk�JC�g�# �l�ł�G}i3M�'�_�9Ǔq9k�r�9�ʯ��O��fԗ�ޮ4e�%��	@9٭鐫�fo�5{�j��
j�FK�g�C	@Qш����V��ף��;��h���V����ޣ�H ���WTX#v{d��f��Z`!���#� (�����/~�TZ��� iI�݆*@��By����T��Tw?�h#��By�� �bQ�H� �^;����������{-�?ԽR�î�OŦbВ>Re>�W�JPHV��|<S�>Ҳ��zQNEm�ݷ����;�lﱋW����8X��a�)��������埏Տ�F܀���v%�>4Y�MI뻂��wk����T~ۑ�]3��k'��W,��2��j�����?���C���{�%z�~��rN����{�iF<9�uU~�u�D�L�H 
�L��T�J|��j^M�]�5�þ��·��k��1����C���:��}����'���l>�K.��gj#���'�n)�w�[�%�fV|�m!�m.Þ��c#��m��)�����3l�z�����Q��;�M��	�|~����c�mӈc�9�z&n֊���nsd����)�6G4{K��j:n��m�;�]w9�S��nX<�?��������JC�"�J��yd�GS�+e�E�F�ydJC��~����)z����G�;���VY�㖢��C+���D��H�u�>s5E�]�(�9���SA�NU(�NUP4�
��Ӊ���i�b�3U3$������ښ������������
-��F����4\1��R�σ���m�������3=��k�r�$����,�g�dH��LI��4<p��&�xR��㉚��}�쭀�^U��`Y"%�'J�F�C@4z��5Ϭ45�LM��v���Ĵ��l�b�~U"��L�z�]34����.>������YZ�1|?�>T��'o�leSR��F�J�ђ֓2��q����q�����V��퍭��r<�25h��5�D+��t]�h��&swA��-��	�1�٧\
t�ivZ�ߑ���"���n�~��k����F}IK��G*��},q��k6Ӡ��;ZL�	;�=L���R}��g�J�m�[�I
%R3���#��i�9���jQK����i���f쑒B�>Q�F�憖�WFk�Z��ɰ�eԗhU�-M�����ts��k�y�HC�����C�`��vj�l����ZE���`��e�QHo܁}�X#�d�Ғ�wB�ZF|��E���-}րV��e2j��X#�<4-�R�iI�]�B+�?P���q�g�/�,e�i���H�eAK�jB��J�'�ԃ"֮����C�d�d&n1���@��<�|cD��h���Ж3N�i=��~�C��BK����G��M뙒匣�.^�t��U�~v:T��c����U1JrOG�ռ��g�,9Z��H�V��B�l;��D���:G��gZ����cGj�D��Oi�W�j���B���U?2ژ��3�j��G&-l��.^�Ք���N��]�#��A��f_y� u���ңN	�[%� p��е��MĨ/�����F���r<��ތ�9z������b#=�'|2��.^o������|,�m�_��p6�9z"��XW�^K�J�U1Z��w,��1H{�eQ���|�Ȧb���v��m�'T�7E�{�񜲽'�<�f���Ǩ'�%#j�h���<���_�Ք�����m�'�S�g#�����o��~���,9-�5Ez�,t�	 ��LmϘxv�b%���v�U6Ӵ���K/���)�����}�?��{ه3=i�7��A�_��m\�����c�uk}�vj��~<�s�X+�݆���T�*a��:j��L�zŇ�oZʱ�t�(�S�#hq�=1��n>��w�v=���կ��
83Q�
�B% e��Q[)������
�!��5�(�G?:�qP����i>����6l�����)Tl��5�k����Q��f�Q4�ۃ(`�;����S{d�oI��H���Ya�q���&~�����H�/��F��e��ZT��/�e)�h*<�e.tf<�����pf$S���.�wt�/ʒ��Ӕ���%s��T�I 诰�������R��o[E	�,4��E�9�(�|:j���0�J�֬F��|<S�w������S�w[�R��i!�ֶ��xFޚ�����h����S��JZOY�K����mx�vf��~<��z]�4W ?��F(��d]�I=t�v��l�;V޷�Ǭ�%i=�}����y:����N3M�.��̈́���w����H��,�s���}�f#t�㐫��v9��Uq�Q�]�?�5U�t��vU,g|*j�\�m��F�}�}o9�S��O�����̈́��LS�É���qm�)1!�o��eZM�k��Xq�ֿSu}�0꫹D��^C��uOq�A�����\"F}�gm�տS�u�>f쯦�;����,o�h�pf���C�ki��%j���?�GL>�ߏ���|<���&��8���a�$뭲��0��Å��R6�O�{�*�%YO�݀�w�	��Ǧ�o>������G���?�+�����{��p,%�ܡ� l>�+��o��e\��k�߱캫�V�z,3�~��y���U1��W��O�X����W*�����黫q5��^�*
Q�֜�:pf�h_� :��9-ɛ� Z����2�K� л�<@��K�L#[	8|%�S����h��WΌ%�ܭ*����3�1.罆�u�J�������΀�����m�K��$m���^w�����V�6�v��Ֆ�m�,n��-q��V��V[z�ypN��N�0��G�i	�pf2�޲��yd�e�e%��h/# )8xJ���:��1�&�\�
�|�+?�9��~U�B��ٮ�0^1��	�/1|?�-�W�**����~O"&N��� .90��sR(�n��8X�Ȣ��^%�R�����2q9�<d�WP��2!��x�Y��T���ﰇ�4U��,����
�J^�n% ���O�9%�`%w5}s�?5��DR�Y87� &cw��e%�`��Z�Y�b~�f���n^�v3��g�f��W%%��#U	����|"�|��3Z�;�8��"s�����K�F��}e�7�ey�guRf��ЧJ��=�	��򆐯o�����:�*��\�Ѧ*��im9����xZHk�/6U]�Q�Y����$v� ��ڰ���&K;�M�P�"�Ϊ��|cĖ�c�v)�'^��wZ�8FKZ����K�9o���� 0��l���"g�Nfq�є��$�b
���kd�S����?9�ns%�$ 5��3����):�PI 8�6ǘ�K���^���
S��W5e�m����[��=S�ע�B���g�RL�0]/l#�r
�3.�d5�*o���_�����j^a5�1�7XpV;�'=�$ �,ȺD�i�}� k��G��盛��;�RC��=7�G�U�����/5���@�����K x����IK�NA�Y����Ƚ�3�"��� 03쩜�I+Y��aO������3�:��6}�ĭ�\"*�ۈ�}B�K�m{�:x�T��6Ό������q��S��%�'m���h�a�d����19�~88��j���Z�ΐ�5l;"s�~���'�9��*J����߅���y��[�ŗ�D���y����vt�!Ԕ�4����ݚvP���j���l}ţE&l�is�g�PW^9f�,% �OE�;�V�v�[<��O�c(�W�q��-T�/��u+� �d"h+����KDN?%�~�U�J��д���Hά��\�A擃]��.x���;�Y�^Ke�u�.L��D������'�vUts�}��[����ƭ�ɫ�X����$G�Y�AO$�uU�YC��MX>�˴�*n�~{�P��b�e�������l��'r���N6�1�;ϲ�OkE%��=�
�zgGXE�O�g)���ZN����>�O��h3�J�	���G����'5� HdA�V�r�N����r�N��-IN�r:���c��YF�]S�� �͉a_Y_1s/�6^2�W�+�j�.��l�,�=�ֲ����ɡ��@*kE�o���m��0��A�🼹W޷�V�c[)��3�8;�:�?�P�	{�d�Pt��K�]��o5����wײۮ��iM�H}�4����2r�S��+&�~Od���q,�?$m���W]B'ߤ�T�h���/�z�'D��ђ��yl�Ύ0+��6UR���Ч���c�3[N������ɒ��-�s�3w�q:n�?a�V�X_]!��PVbG�1���i3[ ��w�Z����C�'������q*�r�>\��m�'�a"�V��!�J�����8;�Nl�k̎;���(^�U�M�e�s:��n���x�O�������?|��-��Ք���Nŗ}�c���ha*��'�%��KU�"b��Vɖ%���O��C�M�P�LU�M�mW��χ���|8g쮩�[�z2.g��3f񎜾��K���?���A�_�x���co��Ӹ���S��������ӱ�|(���]�cS�LM���l�=�xr:n�%�*��#���?�Z,�m�c|ݘ�;=� �%a0F�2��ΐ����< `�ን�M��?a6f}�3���W�������q+��:���l�˗Fzf����V�n�,cﱳ�RB���%�S瘎�y$�)�-���lw�%��P�"�Ο��|��-��qLj$�z�.�a�Á��H�1��ms��c�L�y#�,\��$�MUQ�͎���4m��S{�N���h�;���)�5����,4�MUEi���x��c���u~�����O�ƌ��JKo��}���"#����/k�ɂ�m������1��M�,L��)�ZG�f���˲N�Yq��O����ppv��ю�3�5�k�����b}�ɂ���ugQ�T�RC�=ұ��JC�j֭���.J����t�;<����]�ᜑ�ۡ�4*_�t���M��m��!>P�Qg�ۼ�-J�2�Te�>���-�]E�[Ve9Z�ɺ�������d�#�= �`�q�#�-Yn�\SL�l�bC%�Se���
ޜ�֬��uE*��&?i�I�w��
��K��*�m��-����N�;%���@�8�]�8�<-�k� #�]>F�Z�yۀ���wy	t�6�"I��"	t�1��t�D����k�p�@,�],�n{ëH�ܘ׻ܘ��Tr*@��׻NqJN�UUz{��ʬ��m)̋$}�,I�ٖJ ���A���i�� ��+���i���r��$������v��:����!Q׮:�
��a��07�,7`3-u� .9�w:v���ϸ}�	��?�������߁�Ĝ������'S-u�����9 �	;��O$�ǁ����W�� {H	����v�A�>�*��8	�c0t��E�H Nb��<K�>�r��$�����p�{]��a�.�I ��1&O�'O0.�g�� ���I���o�6�I�ah/K	�O_c�ʕ{�ɕ{��O_K He��E8�%q����B� ~�{���%QO:K"�U���K �*�q��NG��c�S��R"�%��Ns���sM�� �j��ep�ʼ^��<��g����$���pΝy}ȃ�*E6 N��k|4���8��Z��Z�.��ӧ���]M�e�G���!���c$���x�;�k).n$ �<�z�A��N׭?�%��Xx����bg-{DW�@~N�etֲ��'����=��勓;�WQ�l$ 9y(ܡ�4��$�1gH<�=�5�$P����z�p�Ƽ�:�m$7�/�G�� ��;��}ЃE#骍?��������٣�p�O<h�M'xɃ���ÿv.:�@"�º����uc���8�O�gHtc�ie\8��� ��۲.���g�9�Y�9zmY�'��~���o?ͽ�^$锿n<it������*��G�3�ANs�Ƃ'gI�"��H>F��I���1����H:K�'n,���YCƫ�Lhܹ�C�*R ��F2&�@:�Eu�1��E���@>�-yH=�q ["P�1i��i��Z��}���ukYJ �"?��?~�I��@7S-}J��E(�Z*PO���^�y��U�K GQ�}�L)Ot�3E��dQI��;�+߹CT�u�L���SG����H���@�����m^Eʒ��U!(<�ua���H��z?{�'���׿�dN.�Z*�%;=�Ԭ0����u$�]���~��.,�s��/��]��=P�#�t�y�S��)]A     [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSC   -   "   =   �     ������ڶ   �������������Ҷ�   �������¶���   �������Ӷ���   �������������Ҷ�   �����������ض���   �����ض�   ��������������ض   ����ƶ��   ��������������Ķ   �����������������ض�   ������������������ض   ������������Ӷ��   �����Ӷ�   ����������������������Ķ   ��������������Ķ   ��������������������������ض   ���������������������Ķ�   ����Ķ��   ����ض��   �������Ӷ���   �������Ҷ���   �������Ķ���   ��������Ҷ��   ��������������¶   ����������������������ζ   �����϶�   ������Ӷ   �����¶�   ������¶   �����ض�   ����������ڶ   ���¶���   ��������Ķ��   ���϶���   �������Ҷ���   ��������������������ض��   �����������¶���   �������������Ӷ�   ������������¶��   ��������������¶   �������Ŷ���   ����׶��   ���������Ҷ�   ����¶��   -   VBoxContainer/GridContainer/LineEdit_Username      -   VBoxContainer/GridContainer/LineEdit_Password      8   VBoxContainer/CenterContainer/HBoxContainer/Button_Login   ;   VBoxContainer/CenterContainer/HBoxContainer/Button_Register       Popup      ,   Popup/VBoxContainer/HBoxContainer/LeftButton   -   Popup/VBoxContainer/HBoxContainer/RightButton      (   Popup/VBoxContainer/HBoxContainer/Sprite   8   Popup/VBoxContainer/HBoxContainer/Sprite/AnimationPlayer   $   Popup/VBoxContainer/HBoxContainer/OK      Timer             	   walk_down         walk_up    
   walk_right     	   walk_left                      pressed       _login     	   _register         _select_left      _select_right         _confirm_registration         login         register                     q     0      ?      /                                        $      /      :      E   	   P   
   [      f      q      |      }      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �         !     "     #     $      %   &  &   '  '   /  (   >  )   D  *   E  +   M  ,   W  -   ^  .   b  /   f  0   g  1   o  2   y  3   }  4   ~  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   3YY5;�  V�  �  PQY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�	  �  P�  QY5;�
  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�  QY5;�  V�  �  P�	  QY5;�  V�  �  P�
  QYYB�  P�  R�  QYB�  P�  R�  R�  QYY;�  �  Y;�  L�  R�  R�  R�  MY;�  �  YY0�  PQV�  �  T�  �  �  �  T�  �  �  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �
  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  QYY0�  PQX=V�  �  P�  R�  T�   R�  T�   QYY0�!  PQX=V�  �  T�  �  �  �  T�"  P�  L�  MQ�  �  T�#  �  �  Y0�$  PQX=V�  �  P�  R�  T�   R�  T�   R�  Q�  �  T�#  �  YY0�%  PQX=V�  �  P�  �  Q�  �  &�  �  V�  �  �  �  �&  PQYY0�'  PQX=V�  �  P�  �  Q�  �  �&  PQ�  Y0�&  PQX=V�  �  T�(  P�  P�  P�  R�  �  �  QR�  P�  R�   QQQ�  Y0�)  P�*  QV�  &�  T�+  PQV�  �  P�  �  Q�!  �  �  T�"  P�  L�  MQ�  �  T�,  PQY`        GDSC   G   6   �   �     ���Ӷ���   ������������¶��   �����¶�   ����Ķ��   �����Ķ�   ������ζ   ��������������¶   ����   �����Ҷ�   �������ζ���   ����Ӷ��   ������ж   ������Ŷ   ������Ķ   ������������ض��   �������Ӷ���   �����϶�   ������¶   ��������Ҷ��   ����������������Ķ��   ��������   ƶ��   �����ض�   ����������Ӷ   �嶶   ����¶��   �������䶶��   ���ﶶ��   ����������׶   �������Ŷ���   �������������Ŷ�   �������Ҷ���   ������Ӷ   ����Ķ��   ����������Ӷ   ���������Ӷ�   ����ݶ��   ����Ӷ��   �����������Ҷ���   ��������   �������Ҷ���   ��������Ӷ��   �������Ķ���   ж��   ��������ն��   ������������Ķ��   �����Ӷ�   ׶��   �������Ӷ���   ���¶���   �������������������ض���   �������Ӷ���   �������Ҷ���   ����������¶   ����������������������ض   ��������Ҷ��   ��������¶��   ���¶���   ������������������¶   ��ζ   ��϶   �����������������������Ҷ���   ��������������������������Ҷ   ��������ض��   �������Ӷ���   ���¶���   �������������������׶���   ���׶���   ��������������Ŷ   ����������������������Ŷ   ��������������������Ķ��      res://websockets_client.gd        res://packet.gd       res://Actor.tscn      res://Player.tscn         res://Chatbox.tscn            Login      	   connected         _handle_client_connected      disconnected      _handle_client_disconnected       error         _handle_network_error         data      _handle_network_data      3.27.41.130    �        login         _handle_login_button      register      _handle_register_button       OK        Deny      Username or password incorrect        Registration successful       Can't register     
   ModelDelta               Chat             says: "      "      
   Disconnect         has disconnected.     �   
	Runs a function with signature 
	`_update_x(model_id: int, model_delta: Dictionary)` where `x` is the name 
	of a model (e.g. `_update_actor`).
	       Received model data: %s       id        _update_   
   model_type        movement_input        _send_player_target       LOGIN         REGISTER      Register      PLAY      message_sent   	   send_chat         Target        Client connected to server!       Disconnected %s       cleanly       unexpectedly      Received server data:         There was an error                                             $      ,   	   -   
   6      9      <      A      I      N      O      X      Y      a      l      w      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1     2     3   %  4   1  5   2  6   3  7   :  8   B  9   Q  :   X  ;   [  <   b  =   c  >   f  ?   r  @   s  A   {  B   �  C   �  D   �  E   �  F   �  G   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W     X     Y     Z     [   !  \   $  ]   1  ^   8  _   =  `   >  a   M  b   V  c   h  d   o  e   p  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y     z     {     |   $  }   +  ~   ,     4  �   9  �   :  �   E  �   T  �   \  �   ]  �   h  �   o  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   3YYY:�  ?PQY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QYY;�  �  T�  PQY;�  Y;�	  Y;�
  V�  Y;�  V�  NOY;�  �  YY5;�  �  P�  QYY0�  PQX=V�  �  T�  P�  RR�  Q�  �  T�  P�	  RR�
  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  P�  Q�  �  T�  P�  R�  QY�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  Y0�  P�  QV�  /�  T�  V�  �  V�  �  PQ�  �  V�  �  T�  P�  QYY0�  P�  QV�  /�  T�  V�  �  V�  �  T�  P�  Q�  �  V�  �  T�  P�  Q�  Y0�  P�  QV�  /�  T�  V�  �  V�  ;�  V�  �  T�  L�  M�  �  P�  QY�  �  V�  ;�  V�  �  T�  L�  M�  ;�   V�  �  T�  L�  M�  �  �  &�  �  V�  ;�!  �  L�  M�  �	  T�"  P�!  T�#  �  �   �  Q�  �!  T�$  P�   Q�  (V�  �	  T�"  P�   Q�  �  �   V�  ;�  V�  �  T�  L�  M�  �  ;�!  �  L�  M�  �	  T�"  P�!  T�#  �!  Q�  T�  T�%  P�  Q�  �&  P�!  QYY0�  P�  V�  QV�  �"  �  �?  P�#  �'  T�?  P�  QQ�  ;�(  V�  �  L�$  M�  ;�)  V�  �%  �  L�&  MT�*  PQ�  ;�+  V�  �8  PR�)  Q�  �+  T�,  P�(  R�  QYY0�-  P�(  V�  R�  V�  QV�  &�(  �  V�  �  L�(  MT�.  P�  Q�  (V�  ;�/  �  &�  V�  �  �  T�0  PQT�1  P�  Q�  �  T�  P�'  RR�(  Q�  �  �/  �  �  (V�  �/  �  T�0  PQT�1  P�  Q�  �  L�(  M�/  �  �  P�/  QYY0�2  P�3  V�  R�4  V�  QX=V�  �
  �8  PR�)  Q�  ;�  V�  �  T�  P�  RL�3  R�4  MQ�  �  T�5  P�  QYY0�6  P�3  V�  R�4  V�  R�7  V�  QX=V�  �
  �8  PR�*  Q�  ;�  V�  �  T�  P�+  RL�3  R�4  R�7  MQ�  �  T�5  P�  QYY0�  PQV�  �
  �8  PR�,  QY�  �  �&  P�  QY�  �  �	  �  T�0  PQ�  �	  T�  P�-  RR�.  Q�  �  P�	  QYYY0�8  P�  V�  R�9  V�  QX=V�  ;�  V�  �  T�  P�  RL�  R�9  MQ�  �  T�5  P�  QYY0�:  P�;  V�  R�<  V�  QX=V�  ;�  V�  �  T�  P�/  RL�;  R�<  MQ�  �  T�5  P�  QYY0�=  PQX=V�  �?  P�0  Q�  Y0�>  P�?  V�  QX=V�  �  T�  P�1  L�2  &�?  (�3  MQ�  �@  PQT�A  PQYY0�B  P�C  V�  QX=V�  �?  P�4  R�C  Q�  ;�D  V�  �  T�E  P�C  Q�  ;�  V�  �  T�  P�D  L�  MR�D  L�  MQ�  �  �
  T�,  P�  Q�  Y0�F  PQX=V�  �  T�  P�5  QY`      GDSC             9      ���Ӷ���   ���׶���   ���¶���   �����������׶���   �����Ӷ�   ����������׶   ��϶                                                    	   '   
   -      7      3YY;�  V�  NOYY0�  P�  V�  QV�  �  P�  Q�  .YY0�  P�  V�  QV�  )�  �  V�  �  L�  M�  L�  MY`       GDSC             �      �����ض�   �������Ŷ���   ����¶��   ������ض   ��������Ŷ��   �������Ѷ���   ��������������¶   ߶��   ���׶���   ��������   ����������������������Ŷ   �������Ķ���   �������¶���   ����Ӷ��   �����¶�   ��϶   ���Ŷ���   ����Ӷ��   ����ζ��   �����������Ŷ���   �����¶�      a         p%d              p                                                                #   	   $   
   ,      7      C      O      [      ^      _      k      p      x      �      �      �      �      �      �      �      �      �      �      �      �       3�  YY;V�  Y;�  V�  YY0�  P�  V�  R�  V�  QV�  �  �  �  �  YY0�  PQX�  V�  ;�  V�  NVO�  )�  �K  P�X  P�  QQV�  �  L�  �  M�  L�  M�  ;�  V�  �	  T�?  P�  Q�  .�  YY70�
  P�  V�  QX�  V�  ;�  V�  �  ;�  V�  LM�  ;�  V�  �	  T�  P�  QT�  �  �  )�  �  T�  PQV�  ;�  �  L�  M�  &�  V�  �  �  �  '�  L�  M�  V�  ;�  V�  �  T�  P�  R�  QL�  M�  �  T�  P�  R�  Q�  �  .L�  R�  MYY`     GDSC            >      �������������¶�   ����ζ��   ����϶��   �����϶�   ��������Ķ��   �����¶�   ����¶��   �����������������Ҷ�   �����¶�   ���϶���   ������������������������ض��   ����������ڶ   ζ��   ϶��      res://actor.gd              click         movement_input                                                      	   '   
   /      <      3YYBP�  R�  QYY0�  PQV�  �  �  YY0�  P�  QV�  &�  T�  P�  QV�  �  �	  T�
  PQ�  �  P�  R�  T�  R�  T�  QY`             -----BEGIN CERTIFICATE-----
MIIFIzCCAwugAwIBAgIUCZjFjsJXMsuhGGQnARzJnfOS9HMwDQYJKoZIhvcNAQEL
BQAwQDEXMBUGA1UEAwwOR29kb3RQeXRob25NTU8xGDAWBgNVBAoMD1RyaXN0YW5C
YXRjaGxlcjELMAkGA1UEBhMCQVUwIBcNMjIxMTIwMDAwMDAwWhgPMjA3MjExMjAw
MDAwMDBaMEAxFzAVBgNVBAMMDkdvZG90UHl0aG9uTU1PMRgwFgYDVQQKDA9Ucmlz
dGFuQmF0Y2hsZXIxCzAJBgNVBAYTAkFVMIICIjANBgkqhkiG9w0BAQEFAAOCAg8A
MIICCgKCAgEAwvvRc/GiVaSFVU2Ex0EG0I4ViHMTJHSpNJIv/hNtXuo2ZvF/Mo3a
11pWz63CSJssauJbSDI4yLlKej04GXhtYZmE26IasOEu7JRj1lT2nepWcCEBu5qh
XOzt1HySN/CvOeqiq3jxY+R9wrk4K9Husi60kiF1iGNt6tsksMCg0omTMt8ZWz5H
ua+o6+JywPd16bzHKrd5NReo9v1duwGizN1bKVm0o6uWVN+aYDVwmnsojquXNYqQ
kpx1mURHG48lCmQXen9UDdrpX19WpqbuSv9Hal4g5oLWbSNsUroQieRwAV5RHSam
mkWxwKNCqbucrU+MybO8X8Vla5JzHTKxRu5oavELqzd/RH3sO/n7eZjmRwezQ6/P
Q/oKlAPMh0rotgBG+Z5kZLxY6qXrka4fRgk1Kw0Wwt5QPzCZgFYPDPEN8gUmQK64
LWGzW71JIWT34oRdB3X8WN0ZsR1GseWiG3VlxRW9y7YSvRCSSdw2UW/Zz19pjVVh
Al5BdPxDreL4NToyFtWD6Z/epWJSCzflm4VuWAlAEXSwHYyVjbCa53RuihOy1S8h
271EqtoaETxI5EvY+ntTkY6dsTkHikqwIO0tOdtNMJXFI+73MiBSRuoDW+NQWNmf
FIxKeRL3sZEMutcuo5l2ky7AoNZuCC9Lf19+UgBp86EuwIVO9SuKG+UCAwEAAaMT
MBEwDwYDVR0TBAgwBgEB/wIBADANBgkqhkiG9w0BAQsFAAOCAgEALsmHSpERdqkq
PDJ1zJmT1KHRlM0b1em/t2TIhPniMbscGVxqXau4qdTS1xWN2AoSx+krPOyOLACu
+qWfxpELrpTByTw/JzIA3dehP57pq25J0/1JJrX2Jqhl2SW4sNprxId8zekp75Zq
5jNxMPrxwucrVpwtD63DC48+u336cv0iwAR/hXQ0KTaHEpuouVK6x0H3IQAHZ2/G
Irfha8sniSElxzrts+eQBisJmM36n9kPn9bvHFJOxZVo00/InBYCnp5q5PZqFyDQ
bZ/f/rIkjhC7K7fbiEd7d4dKZz43P6gQIKRlEwoKv5f8Me91TfpTbON23rhAS6x5
qyqhBv15TBye7/fOE703nLV62I+wXd2CGJqUM9uiJpbadHIVas1RABKjKL0/6Eoc
w+nGJqDpDgw94pddBmQCqAI7wFaHsQXDatR0fO7xge4V0wtJsiBUn1rrH5rt9aPd
iThLNuzyycyERukIgDpmXYFmgywSWU66z0EwwOGy8fM3HYWbjCJyCKaCpLr0jgqn
FRQbbf07dhqSwilk8FxM6O2QvnMmcCs1JmDBgiiejXfsBs5iuGtPTfnXvnRqk1ec
CAw7E7+HiUI5bsNY6WbyaLz7ADqIPIbDWRM5ENijrG0F9d256p9/hbhreXkYdmda
9yQ4zVKCFPuOwru+iBqexlK/Agsay14=
-----END CERTIFICATE-----
              GDST�               G  WEBPRIFF G  WEBPVP8L�F  /��G�ɶm��z�m;H)�O5%[�6��۶����S�ڱ(���&�E�ƶ�*������)@��w7A���@�����-�����=ߒK"- ����Q�9 ��Ϥ�_���`��rte��>�7�4��d�D��K+| $��^�zK�yBP�т(�eY�yj(���NST _(h]Kf%���.�eY27��PT3~��M���П��G H��K%�@��j�E�
@�,��ǀ��:�����}��aS����)��_2�1����޷ z�|���k ����!��SQ�Mt@��>mK5$���t ��x��G ���&K%���vHt���j@	������Ub� �~+l���{�O��=f���p}^��,@���� ��W���.�wf�d���$m�?"l{j�]�v��_%6.�x�m�6�M8��C�?)��[����$��~E���{���>�d;��%�
�Js�2$K��g��͍�m;�O�Fݧ��En	ġ�u���X��ξ?�LFG��,>~�0��;�m�ֶ��Tp���(�V����������ζMoۜB����e�O'VAw0��{�� �����|��@�.ж�X����;�?3-#�/�m$I�,��'kz����+���m��6�-� UfV�ȇՉ	AaH���@����W|�h�~
>"G�	� �bt�P�3��oTm������y�������C�m�j��R�hN���,����m% ͕������O5�'M鉫��$@Y��D2��U�� 1���/�y�9���<��%I��f�H=�I�@��?�Y�Ŏ���`��<�x<�@���)�����;�=�;��-Vm�V=��?���ep\"ʃ �<�7,nZ��Nͫ���� ���yp�����/Z�W��qϚ�:��A��@��l��?n[����gͫ�x:yq=H�5<_��ի�b���%y��x�x�5�tLp�S�9/G��7������=yߩy�!����4����",	�$?��ǝb�K'x���z�9�Ȉ=�[z���v���y����.E}�4���9�uPX��:��%/�$�h�x+O�N�<{"<S�~[�*�l�����V�Ӡ� �j Y�5��TWK�P"�S�%�^���	�b��۹i�X/L��+�Y�� xK�����pB��Ry�*�9�)��gզ�
`����0l�˨�yHl噺 /#��S�`[[��@� [[Ӑ\
e�<�r� p�N��a�K
o��N���y�
�D�}����u��i�ٴqĿF�4��s>���N�+��=�Q�k䱥�L�M2d58|��A�����
q	���r��{0E��7x/��6E�K�U�r(C�C*c<�gzi���@$vp�}���W˜������yHoo^��"bb�ʰ�*�'�X���n�	I��nh�.��Fo��j��{@s乲���;���ۋA�(����b<{ [��l@�A�MB����c��R�����^N��ў��͛9b�j`A����g/SX���DO��;'��
����y��3�	���"<L"�@b�]$��ټO�*�2"�AH8�N�O#�ķ\��#��*�0ϊ�x/��W�H��V�fK;ݭ`gv ������l	��+z�<!B��Gw���H���N8|��7�>�����6Fx��*i/Bx7o��^e�u�ol���H�3��B�=ڬ�D��T�f!A�e����iv��^��>w�p��s��^N��Cz���>]��3Q�p�dv��I�s�s��x��\�"�2ϊ��s���bb����>~l�����[��G��ؤ���&5��┼��}+�`=����m�qRy��"<6����� �l�u��X�[��:N*���P�5�Ӝw���~����p�xqu<��G��E����=O����&��#a�#�z�s'�(z�ޱ��^�zs�Jܜ��u�^�ʨ��t	a��r��{ �j��2�q_��y.�����_�L���q�0���I�Q��q��ݠ��VY/��ϻ?A�#� �GCoo� H�a 77�璯�y8w��B�v�wW��f=��'����Q-�|�2�hi��6%�0��u�	�)R� �=�8�x�w�i��KU�}k��ցJ>W�`�ҲJ�|��1����nꂠR9��
���O�f�w�g)�˻��E��ҿ#ݖ��x�^������ױ�iT^�lЁ�)���;4G����0�]���A����n�Hs2�85l�~p�_%��'�ݐn���/���y����Jjn]m�Ã��w�7�h�3�=�P�\n��� ��q�+9Nc��[]�������w��G0ϥ�����<�.I��2ǔ�8ڗx�d��zX�����<��	�w�)="�֏�g�l�Nو��u7w��4�Sz�y��{�ݚ����	O�G������4:U���
}Rh{�oC��n�xV<鲐����%l+�����y��"����Z�mϚ�	 �E6�ۙt�u7�z7�aa���mϊǩh�p�<�O��A���͍�H�H�n�<Z��_�/�Y�����gѣG3���e5Ou7K��KB�Iл�W�j��QW�R^m!ϊ���&�v�n�d�BWj0fl޶.��Oo��~L�'��Ֆ�����x��p7\������^��=&!�P(��w�&�h���r�C�#�G��Ֆ�y$+���"��n��ċ�2��/�~���x!ϊǫ�<Z5���gѣt���yΨ����e9����yϼ�nw~��󩧞}j���-���+�Ǟwˮ�q"��1�q$ <Z�Y�z�I��**O�0�G�#����7���qh{���]��nQ5�A穵�n�Ƒ����=+^O>b�V���d�k�Ƒ����=zV��z��ǡA��r��,4�FNûO��=ΉP.D(2Rں^�ѳ���V��a���ѳ����H���@,�����{$ ��e�vkj��#��Ch�jmFϼWЛ=���q-`	B��aأgޫ�-摫h��S�����X.7��0�# �#xF{7�^�<;B��^�<;!�&�nwv�3�s�٨U�B$�L���1���<�^u�;����1V��<�^u�;�L�I��s��>x"���2�[�I�8�l�3�b�b��wέu��9c��[����;m�a���}:cr���1�l��w@�8�զ�
``�*6Cx�=��W��C{3o�g`ރ�yռ=���]�n��R��:���m��&�7�?,ar �%ש�j���d�$Nܨ���'_�F���8�&��m���I'z�&�� ��K{�����x��:�����A!��!�H��S>����:l �1�:� rx'�A?�/{2<�<LxL-x���R^b���ao��aރ�	���G���R^zX��� ��x��m�yzJ�fc�^a���8���_x�����:B��v
��7��B�Ka��Kn�<�P�G�<��A�ρb����qm����$t؀pu%%
^��#=nݒL��C{G����{0����������+!֦e\�$��2_a����Z_RN�!�"�:���W�`�a�qo��5\�V"��Á\Aq��<�I�#�Y�U'��LR���#���͓t7I��Lͣ��)x��&i\ރ�yT<�{�tN�_K��~p�8���N8|��7�I|6�=��c��{�<�;x��漇C��}��rϼ��������d:�tr3�۷m�q~��,n%������^E���N�i�&��i�޼i��s�L�22
�D^�ƸZ) #��@�շ�Dìsm@H�	0~������:���sz�s�!QQ��Y��܁�6��@�&7���o��s����!W0�^�+���]���n6K`?�n�V�8'�2Ο��b�����xX�U6���)���vT�8J��^']w�Y��&���ڙ��R$���.9D��Ew�!�,����
��ɪ�H�����Q��}R[f��D�$CV���a!�88�"Nz�㜰w���c�!�8�/���Bh�S�;�w;�!�!�1T�Yj���{�/��8_43=Ήz7zW��S�%�}Xy7|Wb�8N	�;��w-��N�d+ c�/��|��?z��FD��r{�~`q�Uh�: ��E?�x~�0<��g؜"J�u�8����e�4N�p��>poS����V�)z7x�n�$�H<��ʻ���0�b\�����I�ia�9�m�fY&�uc����n��	�S)�soD)� Jѹ����eއhT^��@]��9��h��iR�#�K0�Y��n5l�~x�_� �p�6O��#��{(�a9��P�,�^E�y��F�3|������զ9\�y��}y ���.	�	=�`4��/>�����a��ǈ�+�=x��;"c�-7x[Ƚ��ݫ��{�O�=�aՓx2�qh��v��:�ò�=r�����<2,�Ǳ�ᰬ�h�{���<"�b��c&���LfZ�٨UI�Bd�$P�����@=B�G�w�9�~ݩ��s��}`����Z�~���<��I�n&���.�ݞ��=#��f�`O�c�	�-��L[�ku�%=�^>/�����[7t�t���f��o۬��O�_W�����]:���E<�H�Nl���8�G��w�5m������,�͉`�L���Qw�wa��t�6O}ޓL3��
{�Ȕ�`�c�=��"��WaO�
��Y��ݾ�4ۻ}a��n�]���셟ӓ�?g��9��x�I"��GT�H���H!�"�=[�:l��%�G���̳��$=�y�J^�<���L�C�g�ʼO��xL��N�րI�9��靠�<Z!�Fy�>�y�HKzd�h���q�x���"C΃�n�]��Z�������D\���I���n�~,�Y�`���g�C#ݖ��xu�Ww�k_�_h+��B�2�����c졛�Xwˮ�q"���������
vs��QԼ�ܧ�����v�N�ݢjnŇF��c�����l�#	�ca\_���5bBWW__]m������G��5�x�%�@�Ǉ�F�W�:�_�A]�w�M>4+v�	~...2�YyD&�?��k�?���ή0�[��ø�V?���W����Y��ӗ�ݹ{�%�5yr��e$�)'q�/�C���I�h���E��̢y�<�Gkss0�կ~�������~�+:��ʶ�7������>�ظ6��~�C�O��g�,yݧ�A܏=>to陮�)�NوŌ1b$�4!m�(9k�%��>�qf��@������s}c���	*fS��t��OD�,y�I|��{����cϳ�PU�,�6�� d�r���0�6����,��\��8����g?SlU�1/��:�l��[��,�{ּb��ý�'���ꟈBۣ|[$�w<���X�rꄎ�����4r��
�����9�y��D�QV<��W͛<�]"����������{���0˝��?��n��=�����L{�+���wx1�@��(zEo#�w"�q�0��{��h��{�U�y9pɇ6Xa���v+�m�����P]��'ᝊ���y�
��
��(ogҽX
����'H�4����zvh0HJ����Wc�٢���+3������9�����z2rQ!*�95/�8��7�c໥7�}Y)�s�VX<����AV��)��I� ;CŖ�f@����P�z]��a�)hG�x E��;���4s�1,\f���x�H�M��u8������.�uT�d<?�*��|��ׂsƍ�KE������{ %O�8����M���/�@��bY6������ƺZձu1�J�����֕�_n�c�1? �J�S/k����W����;��wkI�x3N2�n�.I����5�&��8Ri��+��,
�~@�W<�"= /�,x�3[��\p����SJ�2�ފH��d��A;�S;P������l3+�i�H&X��s�r�=�1M��l�y/@zw��M;���j$�p 7��俋E��׶!R
�)�󀔗B{�u��:N;�f��J�������G�G�"_��=��G³Z9J�Y��������Ç\ß��4�����<�(����F��h�ִR񊺈�nD�4��$���ѦҙgH��!��#�7W4��7ò��,x��X�xYh�<*���<�]�ɆS7�Fki�k��/f��xN��y�\ 𮽷tBO�7��z'�����da
��-�=��3��������K{�T4��0Av���A��3��L�E�y>��&�أм�
��� �|�R�@*^��nd�z��O�[C ��q&dv���锆�c�S�䛯OQލBgL.�=;�u�n%�q&|�䓈��&������F��7�]mȻas�k���I�� qw��r���C��=NI�8�Ms�&iA��@Vh-iY�\Լ���R09 ʒ�T}��:��=�q�=N2��U�7W�G�w+Tv��wq8u�/�:�����q��[ٸ���9�˛�SЎT�p���^�MG�w���5�r��8_�a�\r��l�-�(�yWRfȍC��C��K�ݼyn��2���͘ &��x�n�w�9��qo#"	����}��c2N��@i!���i�����l6���:n�;��w�*���&�Ȗ��I��Ib�$�p��nz��p�t362!t�j΃73�D�9C�?�'r����Ӕ��LԼ	1K��kS�,O*{�uz�^�M}KP�����CRЇ#��^�
���˙� �o2%��XwK�L0�'��踷D���ԀDЅ9(����Q���B,���E�n�5���0' �G5���j���H�(I�M%�v�/Zt9C9.������c�3�C��~.��O~�s�������z¤��]�����K(��u�ig���\O�,Vu��4���F�ć����p3�>�|O�{�ie1��$���N���Ve5����avem�˜���y9 0�+A�0�ip� ��k��сO}8��n��X֑ub����",7�ow���"����M����q���Z/�����[�%�J���ԇ�w�ʉ>�s���L?诿�3w��K{`�q����T2*o���}v��Ttvf>�+�~
��(�R��ǕԊM�5���@v!�i&�W������Ii��I�G,Vݭ����d��L�b/,{����?h|�����?;��xpiJ|()��|��'��|O�brM�E9J'�ݢ���{��W����T��Ԡ�&epA�.��*���g��"�/2Я�`ޢ<B��+�~�S"Qݭ��9�m����9Y�qcO����O6��=V���Mނr�w�wۉ�2����y�z�I�=�-�� �)5��-�u66�ۇ2��Vf_�R��݂���Ƈ]�E~\<Y�V��~ �I���[��q0.w�Ї��(�L)��� S�#��}����ݜލ#N�F��w��U7.�H[�0X'�|~Їe'>�>� �Yk�~[V�.D
��^����noZ�}ɽ�9vp�v�$K��~���mJ|H���j��Y�C)�$�G&v�S�?��N<W@&�|��|;��nKN3��q �`�{���*D .r����֋���NN�ɎG��Ey��,�����"����O��##o�t�{%���o�}4"L�S��%t��z�썲B9\3�cC+��Xc�=L�Oa����Im�>�> F�A0^���'�����3�Tȃ���ė��B2�l�����1���Mw��bE�i0 `AH����ܶu���]�Tb>௦rD���T!L�768(q�!�n��ċ���-���TZ�`W�},@;�d �`��VRλ�Y䃆+P��E�-`����n7�^�#ٻ�̙�w+�`'Z��Z��-��Rw����y�ng>K|�����V �w�@m0d�{�kn�*�l��)jK6`�'�����*�}��TT)J�����a����p�7鈡�-�y���c�Gx��bL4ɨ��3R�vJ�L�.�U	��� �* R��pqy��<.ƃ�sO�V� ����P.Ȼḏ�Q�|��s��C������cO@�o˙)���=������ \F���)	���#���l��������k�4��>�΃�.ތ' f��ָ�l(湅ж�H�/��Ά)����j��.�ʩ��p�� L�ǭ:���$�0נѷ!�攡���խ6�h�;7]��X�˩õ�-�����}I�p�֭[Z��� k�)�e�J/�2q����|�*���'f����4&�H���l�m� g�L�6>��F�Cf��B�YQbqi����@}X�o�
C�.J��A����ļP�	T��z�~�0�e�	�<̛�����s@/�y!�fXf"�w�b���� �2������P'�S�5��KK�/@�kE+�G��W�!X��K
���g:� 2�t"._޾�}t$خw���[���s��������}�r���s�F��O����D�[�^#3��Ȳ�e��Gǆ�@ؑ�c�U�z@bȴHx̮�^��.�*�Jb���W���]g�k8����[Zpp�/�}����j>�_,��c��x��bn>�����q����cV�� �z#��>�pM ����_K���8�ĨF��6푡( ���Oށ��B�v�*��X;�?fǚ�:̅ρa�}վ��������3���vo?�ȗr��'Z\hq��иA0ݓ@:� ;�(�;�ݭ�ѱ�mu�|�u|����F��4�A]�D�� �k��/�s�|�ד�G|3����\��B�p3h �cR��!,�q�k���a��S�ϼ��	������5c�����K�2�</�8p��c׈w�L�܉��Bx`���_,-`��
�`!R�c��;rM�w�����B+4����B+ t���p��L�E~|v�X����݌z�'pR����0Q� �v�"t�|��������OҰT1�@�}�������ڤ�w�t.��bãG�u ����Gd�B]�(���7�[K!"qa�R��JN�D�Z��)9��6kqQ�cʋn�A;��b�ۈ-H`.�u�f�߇�k��X����y.�;1(�G֡F�|����p_���(�Ӹ�H�Ͱ2��&�A���ȼ�	��E�/��h�ޓ�����������
�Äu<$#���#�QB�sz��n�V���)��
Xp�2�b9�ؕ� tG���%|��M&6�������}���_ؗ��4&��?x��:�*��9�[�!�(:844��\RЄO8>p��������#��ÿ0&�:��E�FćKQ���:Ć5R��?b�����[�'e��e��.�=�>uPP�H�auD���}[D:�m���vA�bU�JR�9�ȣS+ѯ�ʃ*E	^xR�G���dL� �.
�M���Z��;q�ՕrW��UYl��V�x\b�K���;��e�j��}��L	�]F#*��^dc��p����].�{w����as�&bC��^�ðYk}�ZR�Jy�>Z���ɦ�xp�]X#�J��_Ǚ1w�;�%2�������WB[������z�@��L�񋯥%B.���(���m)����1I�^����t�T�P�A:z��D�´�b^�{>�H+B�n ���f�XhQK��by�)�1�H�����Esn���R^P9q�^/��^[�<?%TB��U �a�͹�Cy� z��� $d^Ԇ52��m �k9��zy�F�6�4�^�����H�d�Ln�f3�d2��J�N�V���2����2�E�e
���g�u��ekD�w�ߍL��'p�Ky�Ag���!]��by������]ݭ+�Ǵ�^/�Mb�;�:�f��+<�E%z��n���^�.{,��:ۘ]�N(
��J̤��U�c�K��-!�"-�yn�:N)n�C���A�R}�烰������҇0O5���N���Hz�=�����`Y��5@�Ӷu(�Һs��/��;w��;��D��M�k
�e���i�(�4�^G�����Ǒw�;1�Pt�
>Tg�I�{�DS�X46��L�<{�,�=#�c�m� ��,xաȯ�,��u��q��h����^�董(�u��<Rȣ�^r��Ǒ��Aܑ�GTw�����;$�/�à?�����F�T�
h�[wEڔZ��W��P��^d^�3����x�fsY,��Y�$v�AR�@�"c�I�| ;Q*���UE���w�ʊ�`g:U�S�٘�c)x��5F��o�|T`����?��M�w��8�HԻ�8��#�q���
;>,[G
sAv֢���{z!E��$�o�hcf��]~NW�Y`s��l3��2�z78L��R���C��(�=�7gR���� v�>��@�BJ�M�($j�o�W��gJd=5������l��6�A���:T��T�j��̇A�Ù,(Cl������;��#7����ɲwa� �0�a >8��(��66܄��#s��F��#ȋWF"Dx.<G�G4GUSg���RW @\�Z}�8�J��j"����A���u7̂�Ǯ�wm%㈠����?��ş�Ee�͂:;�bK��&�N���gk �kׄH8t}����*�ZR� �Q	�iޭ}k�~Cl���AM�@� �Q�w�m�hݮ���<��K#�����8�n-�<�@~ܔG�@��~�	�-@ݭ � _�3 �`�!0�a��/Do��}Di�7T�Ŧq,���=ҶH�t��_
����/�C�o��nql=�<��F��\�oϡ�(`j�Z&�Ȅ$�<2'}{�O?`Q�nHǍ����,�D~	P�4��>�ffhg��Ȗ���'���H��5E�y��;�Ũ��� �w�?�����s�3�b}\���z,��GK0��y��,2�" ����(�o�
���@�������ʉ>��f����b���@����4i��$����L-Wg�$� ���q~���� ئ�޾E�N\w+���>����ȑ���ܽs]��O�j2k���sL�O�D��o��a�Z�z�;�J�؊Q��i�n��<�`r�@�� f�o��`"�nTv�z7~[��n���y�w��;�w����İ�`�G�c�}�a�a�b���K��-Z�aU�� �Yk�~��0��[���+��������۞M����;Q�ؼ�ۄ����y�������K��W�Ū9��&��E�|�#;���?{g�+���+��:����s `��nwp�'�ۣ-w��ua OJ���VJ��ӵ&�n�p���E�'������7���\A�K�W��v{1����6�08���[)��?g��;����/J��bEJ�>yq��k�ՙ0"p�&ַ<�� ?/�k읙�Bl{�msS,$s��ys���38�ڧz�8�,s�n�l>H\���d�9��[��;��#� ���
a��������1�w/���w:P��1���ǯ�/Aʯ���40.�w�|�[ׇ�������W��;̋�[�45�����U"�L�[�uM�:��f����}���O���,g:���|�؅���Dg������V �w� Q�v�M@��.`�7m�ɛ����ϟ����N=�/�.�+���V̀gA���tR���{���Ç1�?b���~�1Ls���A��J:ȝ+�K,d|�}��g�ԫ�L��s���}chgyq���5�"6����˻�N���A�������@*�..O��JW�H��ل$�������X�/���M����ÕsA�tn���@PgC�/t�p���D����b'��`�\���&PkI`�M�`2Ql h�d7Xq�I�Q�������/7�ZG𺋢�������;,�@DZ��&3)A/&���ݺ�	�a]���N�-���	�����p���CH��t:���`�?z��&���:�[�TJ�G�T�G�G���6:좄��Օ��f�$F�L�K�~�z���<�慢�@�?z�ǀ�O����L0�c�G��]�Đ� �O>��O�O<�/Dk)�e6l�I�q,�8�
����G��6�[(/x��	 L't�戳)/	i]p�
y���ի�<�\��� �F���͔�8���@bȴHx̴�v�@��K>�~u�̾�n��g�3W���q L19[���+��"����Gc\4�R�㜝 |�WZ��?79���������(�n̑s�9r�qԡ�6�X�h�qzet�t�o"�Ƭż�yL .�|P�'�vH����ϟ���f���{n�dݍ��i2u!�A�y��a0l7w��Ù�����]�)��@�iq�5!er"JN�^Ǚ %>2\*˞�4������$wb������#���/��8;��ܝ�m6����<������s� X��a|��(�����"%��@3�Sw��['Px��mO�2�G�$���u���;��'�UL�(;X:��"���.��h�I����G�YP^4���{�F�&p��6;�#����$;t,��a7t���@}�8��Tl��S��TQ+��4)�O�s8��lj� CB"�C��NpV�ɒ@�����:������EZ�)k}��\]�Nq��i8���c��;;ؗ��4&��?x�
�HN����p8����
X	+qH�{����1턜�~�V�~�G��w��[�'�~ ��i��n؀{v���/E@G��Ϭ���ry��� ��t�kϹ�B�x��k��ַ����}O�O:���#�������{*���	�����^��).�i���}u�	�F�4����D�4jÑ����i/��1GsQ�1�p��90>x�p3���ڰ�,��<ϩ�v�Nu$Ocl0#�{�.�n�i/�\q�`;|��7�:�<O3���,�/��h�k���-��_	m5	�a~���`F�'j����w��c�x������x h�D,���ȧ�� ��cJa;R$F¢�VR7��ȍ	�L-��y7Z/[�^��<�&TB��U �a�ͳ�3!>���4��|��eqq�11������WRB�m�2�#�cdƸ���Wͻ5��^��h�L!c�/A��cg֘���N�X�\���)7a��fW�>I�c<ԇ�,Hռ[S��i/�^���;�y��8������ D�G�xt;�&�-Z��Y-j�� �j}Ly���%�C�Ef�;�:�l�U�`�	�p��n�;�y��w�3q�T�|��W��w�Xk�W�ˀ%��B�W�^gcG~l6Q�3St�ץ�Ύ�0����˄�,�u7������!��1��),-���8��<<�G=�����-��4h-_������Na�	Ǿ��a�B���"���:߇�:λ�J��#��.s���8e���e|;�J*؉���t��PgcB���������q�71o05��Fu6�m�$� �[�c���oG��;�a�w�
�Ӌ� �G�7�@��]~NW�Y<�x�2�	s�7�ͫ���S��������60,��j9�y�3+�����
�fA�!Q�So3'k:��,��߽y��8��qP/��������ڽ&�6���Y4��n�sj���2E��&����2w]w<����P�P��U�����n����JX9�#�v�ހ�;�:�����+Bθ��N$�@MYXR}�Ʈ\�Wǫ�#�ΕΗͺ�Dd
�����1�
,� ��q|��G�z'�����7�m(��u�	�:K�"L�l����0�� 1��Y ����w��'���nR����kG(�ޜc��'eЇԭ���bQ�dj���n|���5�M��&a2��m,LݭU�9&�wr��(d������8�謗f:������=���B.���#޴+�Ӽ�l KW#�fޭ \7�/�5��W[��[��fC�u����>裀������0l87f��0u�C�@�)	mkI@�Ȳ%l���qa!�	��e�rPҞ�c�u7֬EP�h[䰈A(������fe�������{�fQ�n�'1�Kz-�����D)���d���f��^���z7�Ѓ?1ջ�fg^�`d�b�[a���!��>���ī�1J֓�n�����nZ�ng�\�f�1��th���M��;��
a2�ՁyN���D��y�sB���eW{7��]&a��$���Rݻ�����<��(�cO�Dl�3��?��k2��� �93=yj��َ�������ȑfqཽ�j�CG>[�m1�?V�Q�@5������J�7��0P�ΰG1��@���q(�= �<y�6u_���rSsOP�N�G�R�{�:���N��[����f6LS��U��D�BG ����vx8ާ{b���&��m��ta�6G";˔� p�h�a���Nd��w+^"�̎(��� (Ь)zڳg��8<8<���n/��#G�w�+�ݜR^�Ёt�J�U��������y�B�x��q<��Sˉ���~���➒���16��=�C�W���q���G&����T�#�\��!��;�\�MRZ��!�)��yp����=��iY��x�v��V������m�����b]i���ž��sֈ�N�V��{d+	{2�3�����c����y8S8�y�"G��I���=S���+�Ot����Sib����D�o��ș���M�"�V�Dz�hOboL���d)�I��:�2��b�����eqGh�Ԁ�v|m@�s N��d��@0?��㈻p��OE�tzB�'�
�D��'��6h��u�����WU&l�ئ�3�����r��xh�Pه��Ҹ} ����G��l�d�H�ǳ$�J�B�d+{29O`_a������硉4�	k�C�?m�&��"�=KwrҞ�@hOU��$�j� �I����j~2�#z&��U��7����%�yn_�k����0V�b��X������ur���}����O���OK� ���#�b6��dI�wJ��O��d��G픧F{�yGq���������.|���q���Lt��܆���_99�u��;��12rf3�ǔY���k�w��Y[�n>�[[Ә"��;��r�����j��o'��_]�juU��p����DJ)�#��?�>-�#F�:�hdl;A�8w�xjj�t�i��I~�?�����
�iAԁ�����I�L2��6�b�r�9���e3����yL ��eB��N�#�~7�i�dF����X�a����C� ���a_�����g�S�'�� z�E�G��U�m��`�p&��.sL�O�^K� R������ � � ��6zձ��������>�m��8��l�ٲ�I �T�i�@b��;qr�9�(}����#�z�&���J�`|��;1N�y���ېNo��]^�.ơ�(��AN0/e�<��h���q[����ӿ���u���L��3�F'(��4���3V�7�n����[L����MB��eo���ãء��|�+网T�4�>
;}��wN��Hb�8�rf���9�������s˓��˜/\��LG�I|
���m��ڇ����&�/]C����]�H�c7�s2��6c���V��[omnp@��;
1���A��3����Z��{�\#�Fg��P$�>0�h����س��^)1��}>T/�AY���]$��_���O��U2����IKcL ?��X��G��*�>��2�=���o�Q�"R2�����\�M5FE6�>1>G�\W^Z��tPx`r�E����q�^:��?��N�V�8�>3ʄ�Qa�!`�ܲ�N��Q|&���\�FW�����!��(�����{�*����8T��x�nNT�(αѐ��K�@%��y�'?���.��<1>�z���N��N�J�R�u��� ����(,后�����Y�	��68#�s��W0�/�~Z��̙���\`3��I���%�n"+��(	�W̙�q�(r(ҵT�0�@\^G�aI�D�|z�{�¹O�y���P _.w�2�}��b�[�)aJ��Pu7�R�y��q�,�u�. ��J��_ y䤅�ew��}bN��ɫ�����u�����k���c4B������f�O�O�-ʃB|@.����KV>ܑ����=E^�n�8;�'�Q:���qqF����O��t�u4�����k��e9J��h�u��©����1�@��W�8��^(U�-�ܰ0>	���
3��`wa|����t�yx��M�{B��-��"�8�61�E�VG���a��� w�¡[��G�' @ya��O�Po�j����	 |"N���� &��c���Q��	��Ð�`>��( �'3O\��h32X!.�.wF���HTd�^��P�O������Qd,\Y�IӔ	GK��ϱΥ$&S�\�A��F�px������P3|rb�3+���`4L�Z�j���Ҁ��h�O�����}��Qd,��F�2�Mc9.��n귗*8�����k��FK���U�nǔ�ԡ�6wg⎳ȵQY.��
�r���~,�ϕ�S�TՇ��`����X����J�ۨw[�}�X���9�q�l_�8�c[�Wu�ҫ1ɍHYr�Q>��-��5�Y�$2��\)�z��~�vM�+���u����<m@�'][~^��7��A?����' ����S���m�>��	���`�Cpφ#vD�ɹ5�򯎣0�%7rQ>��$T����@�����#�(ws��}�ׁy���T�M��+���c�:�J��[쬜{��(;�#��Rda�:O���tA=�x��p���r��WU ��i>���u����\����W�p�u70��0Sf�AiQ_��3ﶨP�VV�5�?iQ.0c����bC�|�_����N"�s~~u7��W2�%k�0T�"]+�"�B��!�0���ȢLq�|�U�MuFEEE�,ڢ%��aQQx�N��x� ���M�ˋu�ɜ�9נ�&��F����T��T���Q��k�C��e}BLg`�H><d�3�f9�S�~�Dr���`�y�u�B���8���dz7��c E���2�F�O��z*ԙ4�XL���d�������Z�A�/�j�}�����I�Qw+n�F����ޭЋN���_��Q�2Ace�)ǧ�2EU�3�����Rc�k�-��`��D���I6t�MVU���5��M�h�ލ�B��=4�&4��>����NA���Uw0��t6v}��;����p|��Qj?�����,��n"��9�z7�D��Vƒ��}FH�:�A]D!j�;�	������Yw�_���ۻ}�iܻ��v�b�6� 277�6	đ?�͇p��*%w"�u�N]l�D��j%�Ϋ����9J��gk]B�#�O�*�R(':��9�����	`;Pf�( ��X� W�:-���Lc�n��Vw;�@U	�l�����N�Z�|��[pq,�}�_���3����x��5��W���E�Bi��+�Ve%�4�gh���}c�=�H�0���z�[��@U{��̡Q �:3g�Z�b�Jd,T�<TTP�(҂�6�nϑ�V��X����iۢ�>X.�$���~݉�����3r��Ђ���OXo����;^�(H-         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tilemap_packed.png"
dest_files=[ "res://.import/tilemap_packed.png-7b301e6705a57389d2cd02d385b33920.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              GDSC   (      9   J     ���Ӷ���   �����¶�   ��������Ҷ��   ���׶���   �����������Ҷ���   ����Ķ��   ������¶   ��������������¶   ����   �����������¶���   �����϶�   ������¶   ���������ڶ�   ����������������������Ӷ   ����������������Ķ��   �������Ӷ���   ���¶���   ������������ڶ��   ��Ķ   �������������ڶ�   ����������Ŷ   ����������ڶ   ����������¶   �����¶�   �����������Ѷ���   �������Ѷ���   ������Ҷ   ��������ض��   ���������Ҷ�   ����ٶ��   �������׶���   �������Ķ���   ���������¶�   ������������������Ў����   �������Ŷ���   ����׶��   ���ڶ���   �����Ѷ�   ���������¶�   �����Ў�      res://packet.gd       res://server.crt      connection_closed         _closed       connection_error      connection_established     
   _connected        data_received         _on_data             wss://%s:%d       Unable to connect         error         Closed, clean:        disconnected             Connected with protocol:       	   connected               Got data from server:         data      Sent string                                                     	      
         #      +      ,      2      =      H      S      ^      _      e      k      l      {      |      }      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   	  0     1     2     3     4   %  5   &  6   1  7   A  8   H  9   3YY:�  ?PQYYB�  YB�  YB�  YB�  YYY;�  �  T�  PQY;�	  �L  P�  QYY0�
  PQV�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  �  T�  �	  �  �  T�  �	  YY0�  P�  V�  R�  V�  QX=V�  �  �  ;�  �
  L�  R�  M�  ;�  �  T�  P�  Q�  &�  V�  �?  P�  Q�  �  P�	  Q�  �  P�  Q�  Y0�  P�  V�  QX=V�  �  �  P�  T�  PQQYY0�  P�  �	  QV�  �?  P�  R�  Q�  �  P�	  Q�  �  P�  R�  QYY0�  P�  �  QV�  �?  P�  R�  Q�  �  P�  QYY0�  PQV�  ;�  V�  �  T�  P�  QT�   PQT�!  PQ�  �?  P�  R�  Q�  �  P�  R�  QYY0�"  P�#  QV�  �  T�$  PQYY0�  P�%  V�  QX=V�  �  T�  P�  QT�&  P�%  T�'  PQQ�  �?  P�  R�%  QY`[remap]

path="res://actor.gdc"
[remap]

path="res://chatbox.gdc"
              [remap]

path="res://login_screen.gdc"
         [remap]

path="res://main.gdc"
 [remap]

path="res://model.gdc"
[remap]

path="res://packet.gdc"
               [remap]

path="res://player.gdc"
               [remap]

path="res://websockets_client.gdc"
    �PNG

   IHDR         �x��    IDATx콇{G�5���w��{w��{�{�w��u�8G0��1�6�l�I�`r��䜳$� ��$@YB	A����n{�a43U�3]�}�y�G3���S���Sŕ:9�qR��.#�/�~6V^�h���w����g�?o�?��/�{���橞��< �b ��@�	�h��퀆@K�)~Lݼ�PeU5�v�A�ìP�Q�ihh�b�p��af˦=�|a
<g *�����e����T�/���ڝl��bA:x��0�j�<Y��@���<a :�ݗm�dИi����P�)�� 1@Fa ���VA����6 �gJd�e�w3:����� 1@��O 킆���4 �r�ߗ��rw��G�"�b����A�LLF 
���N�b� 1�$L4F 
��`a 1O�b��L2����PJ�� g��L�b��= t3�f �n�-���O���=y�b� �h �Э�r�}�X>1!��M7ܵf�0o�b ��&BS�Rj �/�@��'�b� �` �ʔp��e�����(����s��K�0 ��f�"%� �ؼO��� �ŏ �b�H �Lhg�SR ��p��/1@� 1��d����c�R�pz����a��@�1�{�I� I1 ����?�K~�\�����=������O���?�������Oo�?�1@� � � m�F@+��h�o��庞���ˤ� �@����YO���>������B����� 1@8������H~�|_�������A�� G��z�K��?�^ȥ����_g��	��$Lb� �� Z�9h!��3�T���{_GM�c 7���4O�����M�n�$IwM���M*0�HQ� *�N%G �&�.�O�����{�T,�A!�b�HxM �JE��jw"�6 蜐T��W�>:i$Z܏AK� 1��U苖���lo7�2 ��L������&n?b� <����	$q88���I� �������G�+p7�&��Z1@�b ���>I�,ۙ,H� `��d��1�Ή�6�,�1@�c ���{������ �$kn�7!��yEĀw0���dT���:)�d���o��;D {�,+�1@��L��<�� �Y5) �U��M���B�0H�@b�1ψb���;4Ͱ���*)a�}��q��������޽� 1@���o1���& Z�hJ� |0b��7�	�\��\Yf,3b� �� *�N� hu�)!�t�nGo�5���@d^� 1�m�ft�% ��H�k �k������c M�����c�� 1�,�l	�fC�㥸������P���� �b���t�w�u �;^�i ��:v3��	~�u�t��Ob� ���#��Ahx�� ��r�c c	T� �eɲ$�b�y@+�j���J] 'k����y�0�� 1@�N���K�T����)˕�J�@r0����Z� �j�X	�  ���JĀ?1 �tj��Z� �j�X���'8Y�,Wb� ��h���jx� d�)q䂿{���28��_�/1@��R'L �=2=a ��Xf�bϼ�!Q�x��|>�11@�b ����{�u��3 ����{~f�B�q ��i �b� �0 M��
 m�Ƈ����i�/�{qy_
�.�Y��d~ĀW1�	���vM 4><=f ��f�\�A�� �}�� 1`*�X0�~5 �W������g ���w����ɏ �b�a��<�ӖFC��V�� ��q�։�4���tϦ�g��I^ǀ#Vo�o��j �X����`^0�?1L�b��y�����x��0{- ϼ�Y�n�1��/$1@�� f�;$�^_<n *���6��}�1@�@�1��k�����	�ش�m���ԻA:p�91@���n?�/0l�l{��l���M��%���X�,ob�I�����76G�aֿ�}��2 �{�/ɟ� �b�H~����4��z�g{�:��{|�BOA��?醙'�b��N� ': b��� ���C� 1���꧶*혷���`�I{'z�ş�b� �b ���6 ��ۂ��m��>ׇ���Bw�m��� 1`��v��w��|['���f��A�� �b���; ��ۻ���e ~�c [ �@� 1@��^;- ��n�~4��I��OX�),t:{�;{�1˘ �a �k� @��ٝ ���('��b� ��0`w$ ����{~f�Ep�s��`^� 1@$�h�� h��yc���������W � 1@�@
1 ��c ����ԣ���`y�D�
���%�b� ��@hi�zj�7����i�Y��&��H� 1��;- ��nvN�cUn���� 1@Ā3���4 )|gC�;z�#� ��!����q��`+1@Ā1`	�����N���1@Ā��[�� � ��;�����#�6�2�TU+�ͭr�N�\��.;��ʘY���'�����W��I�6ʑ���~;�W�3��p�}��Y�/�qJ�}a	���AEb���~�g��_��ɳ���}I4��~D������?�y�h�w��d埗Y�w
��}c�+C]᷎��I��= {1��5=$Bi��J�ͶD�+�~e�u�/惝{F+��Nj�}W��<+3Vn�! ��ZB���`�2pT��aSd��M�/��6��Ѭ.���lk`�a���]惝Z��
�F�!�)W�g?��+��q4 4 ��D�/�Gʰ�Ⱥ=ir��Ǝ&);d�bߗň��)剝�a�v�	��<��w���D����c�,!��� � ��"o�$?.��A�����庼;|�o���?Iӵnd���@f�y��z����T��1��?�HY�
�u @ �������Ȋm����JWD)�E�!����>x6SZv��:.C&-���9·y�E��71���ni h C~/�A~����M?-�-�MѢ'�c����+<��������ȓ�6�˟��]�SPT�啮�[�� � ���FM_j�7U�"�c߽FD���䕄���x����+�^)[K�u�4 4 �$����(�7��W꽢;��甥�}S.x/&`��"��`�]᷎����y��ߕ0^mh�g���|���,^Ol��z�HYB������x��ߕ8b�<�QW��2�_W�`��l��
�n|�+��q4 4 ��k�u��ȡ�z��眼17SNW\S�1]���4ϖ�Ϡ��W��9!�v�΂�jqgXf��f� ̀�~MK�u�4 4 ��g>ˍ�bLI;Ii�Mٙ_#�w��+�2��i��7xM���zyX��?�Ud����._m,��'*�LU�<�|����8X���f89�3B�1�+��q4 4 � -Lǻz�Q�t�n����)o�U�2f�Y�>#�	��0�}�^�D/���<��w��u��.���˒�r9q�Y�ou��6�Q`5�����\ ���ni h �&�O�͓=i���5���vٚwU��\��@E
��8GK��8,Pw��(Z�%��e��r3��,�K��P'��oG@`$I���:����D~�����[%#6h�R�pm˻��H^�;�y�_���Pv(C7�/��)<wpM�%�[  c���|#?��&������g�^��'*䳵O������^��.mw�+?�W���C� o��ʩ�(K�)�֭L��8;���t��
�u ����v��	��/��W�J� E
:��$/���<�̧d��2FY���H�������9�ň�K����\wK@�*a��CY�)�⒚�$���_~2%�)fW��V~fӇ��C^D�O*�F��B�ӹ�j��{ms���[�� ��A����~==�����r��ug\�pQ�q��ֳo;��Zy�+筇���	y�7n|&��T�9���	Ɩg���﩯�G�%�[  W腏�J�=�w�
�!{{
kC����X�,��W��=�gW�,�|����7��<��Gn���������v�.[����+��q4 �6��@����KI�֎%�B�L�{^^���<n�J�k~��X+LlX�7]�Y���Ƅ�`X����N���1��ݯ�G��%�[ ����WӖ'�K��ސyG/I�E�ƊJ����Ԥ������r�$���?���x���0�o`
�ƒ�V~rk�КZ&��oG@�r�ٟ�7-nWěU�,?�4�&KԆ���ҤV �~�������߀5`�Ʉ�0Udx_�K�u�4 4 )%��?��@L4��[T��T�H��v�k���RZvф�A�M���̉揩�a*b`Љ���hy���`��FW���h h RJ:X��n�t�Z�-sg�^2Ĩ߲\�ɁLhX��rqb�<s2�ҍs����4z檔Ƣ�����76���ni h RJ:�E'ݽ�P���,��9���5ٕ:�"=>���'��|�u�x��g��g`Vu��M�]+��r�g��<�~�8 ������'�����C���K�>����@n�@�T�ѯ&.�<�Y`W%��w�7U�:���ni h Rj T���ڤ��^8!{���U���}�X��o}����*��^('��UI��x���i�1�+��q4 4 )%���N�q�wB$���ܴ�R�Ԧ�?�y�����!H���g�3�?��?�*	�N��L���K�u�4 4 )%���j�ަ�/�`@�ћ �/}F������Rѵ_�ų�Y�#��UI��x���i
�1�+��q4 4 )%���rU8Q�	N�1���Z�ѯ�y4e�S���x�H������JBl��;?S��a�r�- @JIg�N�e�%ą�ʔ������KzY���ì�)m�L~�h��$�F<���4��~�8 �����z��r�'��>!M��z�Ch0&���.���`�%L���WSe���e�����e���2y�&��j�,ܰO��-Ӗo�	7ȘY�e�O�d����,�tï}>1t.��֩��Y�L�D����*	�N��L���K�u�4 4 )%��J�~�j����4]���������g���ـ]��؈G���� ��oG@�R�A�S%(��x�1���w<P�*#��3�Y�I?�$�F8��3�>,!��� � ��t�����/4R< �+OT�d�����,��UI��x���i
�1�+��q4 4 )%��s֪p����XygA�R^��3�!�H��7`W%!6�ɝ�)��0`	��� ���u�UR�����jG2��M��A��nh�]��؈G���� ��oG@�R��|�BN��ƶ@��e+�I;���1h��]���'w~���À%�[ ���΀�f�p��]�h�h�ȯQ�3v�=M�#��UI��x���i
�1�+��q4 4 )%��_MS�Di�}/�B�w���J���qϑ����]���'w~���À%�[ ���ΛC&�p�t<���@8��)S�d�wƽM�=/��������c@W���h h RJ:/�^�C�>�spV��&$����'��ͭp�]=GP�fUb#����b���ni h RJ:O��ʋ����
�3��Y9�R} �1("�9�YՄ؈G���� ��oG@�R���#TyQz.vorKh�ɋ�w:��k����u9]qMr�[$�b�9� ��dwA�`��M��嗜*Y�])OV˶3WeWA�8['G�7&��.k�ӕ�B��9q�x	�h�o����jBl��;?S��a�r�- @�I����J�؟Mʿ�jAu�\k�'�jo�D}Mv�`��a��Sb� l���k�X�^pO�� �~���*	1���;A$t��:�� ���Т6A
k��.�^��HkM�A@LD�;����À%�[ ��O��+����X��F����UI�ʫS��ą��o@t��:�� �ē�^�e���4 4 ����=�0��W��8���/����r�- @ʉg�1����2����U���{����)�GrR��ą��ot��:�� �ĳr�%r�]P���{��t�m>���kٖ�)�C
����,!��� � ��x��ܮd r�9��i����kR��6*a|겭)��x����7��oG@�r�=s�9�5�b � x
��A%��yE��o���+#K�u�4 4 )'����U�F�q羧ȟ���֮���W��V�8W����d��+��q4 4 )7 o|�� ���PT� ��=�w<P2 �}>1�q�A�9Skd,!��� � ��x�_�QJ䈝�,�a+ _x�g�+�1A�L�x�!�u��:�����|^�p�!��o� �n�̪JB,�A���70���ni h \!��֛*)?�9G� O``�/g����zÕ�`�^���s]᷎��p�|.V�(��tN�Vo�*��Y���Ҋ��Ġ�b���PXB����p�|�J�H��yC�hR����������)��O?乮�[�� � �B>��s2  ���'����c��Ġ0��`	�����Y���Ir2  �������|�aWb0�����~�8 ��;æ&�	���Z��������J��9�W���k���b@O��+#�a���ɾz>����ZB���0� �3K�@��+�Q����}9�[$3Vn��_M�l�Z�S��܍���|��}۬T��'�'���~[��_���7�]�[п����!���_�H�Q?{�9���k�
�u��@ue�ʺ���A�<@��0_�JԖG}�E��Y�Flp�nt��h�e�9'�������M*i�,�<c���%�[ ���<�xylߖ�d�/{�/�GD�3R��:��}����y4 ��x��x���wĐ)by�p�H7]�0��"��Ŀu��:��%p�Mm����&/�d\}2n����������'�*1��Y�v����Y\�_�����1.��9]��T}��w;�{>�>�=YB���p� �y�Up��,�,):{�.Q�귫�
�~��2 � ��A��;��c<�g4���O4H�w�p�ө�F�ϗ���{=]᷎�H��ihq:v;_ک��v��s�k�M�#9��ݏS�+��WfgM�����o���N������8-/|<��D/~pK2S��+�<�יr�%�[��s��6��
ƝGs��?�,�F�\%uM�ßb=~�XKFn*����)�_~RNU8o�+kd؏KR��pI���gS�l������~�8� թo�8DG�d���:���>v���,���[�Jn�ٺ0��i��?�����c��IJp���a_zR�͎��v�%�[� ;����Ɩ�Iy���An�'n�s`&�ދs<U�@{S�SQn��9!�
��z, ��#��4)��.�*-׻�jj�Ɯ!������+��q4 I6 p��$�9m�#����5r���hyr�����YL�gs�/10fk���z#���C�b�F}6a��:{Q�^�>Щ�2Q���'K�u�4 I4 �6�w:&9ߡ�|y{؏�F���j�x K��}I���a��j}X�~Y�y'��}�����e��L'oǱs}7{��s9%�&�GW���h �d �,�l+�˚�����B�uvv��G����i��Oc�sVY�`�E�["��W^�<��d�l��~���Wn��;�������I#~Z��L&���f	�� 	�����].�ߔ�3Ҥ��lY�^.Mzs�'r����_�����mL�	��B���	��Ā��O?4�QC&/�(HVg���a�2p��4x���崸z�|��oG����w:�ic����':�aHѺ�*in��>o��ϗK�/�F�Q�W�;\�w����Y��W�%�5`��}Qc���'Jکb4҆[    IDAT�xU��g���z�m��V���i^�Tޣ%�[ �{_M���V]�����ug�� ��l;sUt>ҾF�#�ظ?#�!	��Z���+��l�l�n��\�b�W~�J�$p8�+,���q��jCsJ�6	�;S?�
�u�C�~�m�}?nGb=��X �J�/�\����P&-�(eU��_���Z�}��X�����ր+��2a�.����<\NJ��8;	k#���׏S�9�e	���!p��;��9G.&@�A6v�Yɽ��lc�$����|���������
Z;&'p8H�L�uv:"�B\�p]᷎�p� ,�|��emv�r���=礴�^'[����o������	擿�	��2-�k�9v�γ���:��h	����;w��f�Hֱ/�ʐ�G/I�u��6�$�`4�1��-����[˷��E%�u_D������8QfvgGtjR�d�t2ϯ+��q4 6 z����܌�M�Rx0�=?3�s黕8�Oׄ^V��|J�)��=��-��o���u�8gؔ@�XB����4 �~���V\�Ů^iu�IG����݅�u�K�AkZ��w���	F�~Gq$� b1���$�,К .�M�����X�+��q4 ��pv�.f���]�.�MZP��7[���Z?�}H����.�������1?��b���z��48ܑ�2�u���4 O�K�U�4 `��úX�;�ʈ�)	���]p����3`Cnuʟ'���پ�0�����d$���H5���F�4m��@� ���/��?�.FC�M�_��ಂ���Eu��?��;�ʔ��]{빸��x���)/�bЩnp�ܨ�=z$X�0��L<w4QW��@� |��[���#�	�w��m��:����!~F��	��=8#���D,�I�S��#uSeM��4�@� ���/@������%3�9�`�X`�����-KMUB����ݽ|G,�
0�����	��XSO�=Eu��h 4 �r�t1)�jo��s���*˒b؎S�M#ޏ{"Ƽ����I�!u��d��S��Jp�nZ�Cm��d�s*Ϋ"����H� �^�K���~O>]�g�ˎ�v��]�tg~����\�۞�0�����X	��릗+8ܩ��${*��kDu��h ����,����{ �,2xaz�lˋ>����
�I�zn�%Z,/g��-!��^�op�n�ih	D ���/@�o���2]����	~�H�Ip���!�D���8+8�O��1k%�2bڋ��O	�~ ��[����w4 1�
����z2��I+���;8����<�a��W&�]İ��\������k�"������ �q�.�$��<��w�ڼN��će�2q
�Rp�N�w_����[M�U���b ���7�C�����i$?�ȏ�!����!N��$���Ϸ�����}�}i ��-3up:f܎b�7��p(:� 1`���ɯC����w4 `융��5ٕ���b�H���i��kP�h�� ��WO��&���0��i����Z1@�*������F�>�{_��h���@�8�����?��Tߥ��oD��x�a \��`o�i����i �i �.ߚ��G�������eB�v�L]��7&@��m_�7�Ȼçȭ�ۑ����|��_����l�s1�� \�w{_'�M�U��xs��.HH�#w�{sɁ�Ͳ!���� �|'��s��}�}o &.���	�����'
˘0v����p�׏&�*�� �4��o������f���C����� �"���*bm�@��Gs��G����� 
˙�t�@�p�׎&�*�� ���*R��;���9�A�&9��xClXNf��Y'A�
�[ǫ�}�}i ��7Z._�W����G2xM�HĀa 7��U� ����۹n4QW�.�`��tU���_q�2�ް�gm���˅����:	�`G��:VE��80d�b|Hq��?ş ��1 ��I���\���D]�@����p)�T���zs!���w���k��K��p�N�6@#t�؍�T�>ھ�2 ˶���l>}��O�'�b�# g�$h�B�{�h���]`�;æ��An�} ���`�{$�Y3�6��`y��p6�['A+t9�ǩ�}�}c �o=�������O�'�b�c w�$hE��\�z�D]�@�����\mP#�S�̠�XлQ��5Y�%�� 8\5A+������T�>ھ�0 C\�����}�� � � 1�Q��u��)Ki �9���R�vt�5m�6e,���GI��Q3k�,w�\��f��E)�����T��@�R�c�?�;��|g�Ā� ���G��F@4MV�.� �J�T�^��X@��/1@>� 8]%A3RYIս���G�7@�����'��tM��c����*�- O��h�!�;]���t� p��9��eF�Й�} |d tGZ}�-l	 �b�� ��$��@kC�e��!���f�{4�#k��5Cb x ��&hE*[��\+�E^��@�@OZ�Q��WfV��� 1�1��u�(��XU���?0 ���
  �U@�j�-�̉�b@���K�hZ����(�մ�:�PJ�n��{�����K�,;��]��u��i+<S��xs�ra�	�@��xM M 1@�c \����R֓T6�G��j�?r�@�  ��T�6����|��Ϛ'1�m�6��6�ȋ���t����JL����k�@^�5�� b� � 8Z'����s������~\�eNv;��� o�X�c��Ān����|O�?�F � ���x�on�2�O�0�\�ob@���f�myg��xM]�n	��n�2 Ye�l4�	��Mg����` ���f���Y�g�� ˰��G'�U 	�a�X�p�M���� �[C�֛m������V �Ā�@�?�X5uvvʇcf� tմ���VM��۩˷��'�?_8��Yb>Āt��o:�y�g�- �qI;U�e�����b@�4xņ�>��:���J��;�h ��)�h	���=�g��qOO�͖"� � b� R�p�n2i�/ğ- �  3g�ݥ����vy{~�?E��ڛ�ko,C��.���\��˞4߈?�� �[tAWr�\=  1@I� �V'U\������x��3�@����l�|�H_�� ����jx�C�ǀ�{����}%�l�od��oگe pШͅ�$�@��O��#��0 n�M���	m0�����j?� ta2�J���wS��9A@@ĀC ���/���k�x;q?]	{��� ta 0APS�-�� �}�����!��Ā�{��������w�@ �;v�Z-��/��w���I<�6��p�R�4w�nߊ?@�v�y����4|}>M M 1@� ��CY�]�7Q��f���l�c"���)8Y�xg�cF:�_3�Y�r����g���p��{���F���8_���G�uQ���?f��՜%��  b� 1 ��M#~Z�{�H�@FO]��` <��%�b�Y��Y�%�� 8S7aw�J�_~O������
@�D�>~R��ź344� 1@�� �R7��:�g��x;�����[��R�T��&��������y�[�b�3��� 8\��ꚮ�k�O��귫���=[ MV��M���h h �b���H�4j��@�?[ �ۉV �c��}��/70��~7k�6k�Ā� 7���N�i \2 �x�k�I4 �I��O��]��>��O�x�I��r]�� �I>�1�.t �k{؏4 
�����ز���%U@b$���,�|���Xf�(s�\�	�Jd��|yoQ6_��5�Q�([����(�
̎�Y��΂,���T��c ���&��� ��s�_^��<�4 O�O������J�n&��[���Yt�\�o��(����s?��L(�?r�A��:���l]��~�&/��j��wu_� ���{��y��l�ih �������%9!�*kNX�ݱ��U�g\�A�O�`i���U�ei�e9S՚(�/��94QXߥ��ܫc^�� �WJuD?� ����C�|m�5��Y���\�-+3+�E�ǐ�2���D�����������t9�5Z��~�� ��t�� ��!�n���d�1.�q���$7��w�R�zG&�98#@@@�f[4�攷�F����pKFo)
�:!�A8�כ�B}�Z�"������@�ʢ����X�Y�g�����V^��A#���5'=f���c�y#k�+�U   ��2:�_��a���p��^b�+�~>~�ֳRw��q���!�����    t`�Zڐ[M�a��1'�r��W_/-N@@�Q2�]X�92�n�T�5��CvĄ���jJ�17Ө�)��uQ1   ����gI��)�%�T��x�nh�6SD���C1xM���0��?�KjnHυ������C�y�R���x$�������Y�(��_����ug������0v���w|eh h h <d �P�d�k���ր�0����|�h��[BK@�y`�~4 4 4 !_��M�%yL'l:Y���Z)�*�م�����O   � V:s3=|��f��g��x ���ͧ�$���d���w����J@@`8�~��t,r췻w�JvV�,]�T��f��������e����ۯ����׫���̛7_�=&׮9Wӛ��XT/�3~g�c������|Y�v���a�|��@y��7�o�������K��������Ȓ%K%++Kn�N�4�^�'����pp�jr{�;vLƌ��WB�D?�b��ڹK�߷7�;��k�{�f��LA��)==C��~�<��sڸ��=z��[�y<�9��W   ���ɛ�w����|�"��~/v�!+W��{��E�xi��I5�d����s�13ޏ[�l������h��nOٶu[�Kk������ � � j >^yJ��bx��)�h�ǎ�l$������X�� ���u��������t�����b���$7'7&�t�tM�'M+  �� ��Y���<n��I%�H#0q�DA�Մ��3�\�.�ɺ�����i)��U�w�l��|M�yi h h ';R�����d�ȯSJ����A)//�K��;eE�d|�νB�UUUUu�S���Tn��ܸ��Z^��J@@`��ni��C��d���\��1����P��4���?�	:��>�J��}�N���#��-))��^}�UL���_jk�[O�����ʔ���00��%2��sss�|з��Dk���}^���b������� �vˡ�z�8D&L+�Nsxw�l�N��7�V�_RrN�Y��[�;����q1�\��該���0� `�Q'&J����F�E��TU%�$��=E��Т9X��ϧ�=��g�u7�555���o��O~"N��xmX   �A�EَN�x����AJ�8v{���qo�~���:O=��-j-:�R+.~7^	��v�4�3eH@@`�pj�_�{��������bq�c��)����^ny��u���VK����5	?��Y�����M�~�X;zi�`   �@�ŦXܒ�ouuu��S�M�0%'sO&�<׽ѹ�`�s�o��	Ht�_vv��x��_�.W�\M��v�)o�D��\� � � d 0��4yҏƓ-����$�����ݬ����	?K�;N�_j���Y���Ȁx�&LL��b�hzˍu4 4 4 ���,�s��EO��Z�����x���LÊ��_�թ�][Dm�6Qӳ{�nOa�ܹs���+�� � � b f80��)S=E��>�4!��mp?�
z����Rd�	��͉����{
��&MN�b�3�7�
���0� @����v�{L�v�mqqq��6yxf,LV�p��XP|5�pU�;��ߧ�Y����h   C@"�Kh����I��;w^��
��a�| Nt��*L�P��������?y�E�2�v���t>�lX�_'� � � b t�&����}�I��{������/�1�6\x�z��l��s�7�|fLќHz��7<���ߌI��b�.��~���0� �173&�$�#�۷j0^�b�b�4js��b�Lp����ϜH�, �5Z������1���,�2����  �`���q	%�XY�"//n�;��B�a��p�2�s�O��{ܻכ�����\~9.&c��ź3F�5<nh h h 0 �n;�K������i�|���ϸ:��HB�X�_�_�iL=r4.&c퀅������4 4 4 ����Ⓒ��_���d;q¤�ϸ���HB�ؚ��c��'�jX�fm\L���z�(���D@@`���0z�[����С�bqi�7S���2��Ґ/�z�*�UD�/,L@@`���wvҏ��1�oW�����>>�ۇ�^L�D��DE���h�G�6 �ۛx®#�74 4 4  Lj'�?��d����>��M�A4 ��9^�7�x������� ��.�2���<�S���f�`kz%���J�b^�p�����o�ϊ�m���q�����}^�=ob�� ��T��>���1�I��^����kx�@ݠ��o �Ϗ Ai'͛7��d;l��oꊀA4 �X	p��Q�����K�b2��Bk�g  ϵ(�� `�Pݴa�FO�m"��J�A4 (�;�Ƅ�ԩ�<�ɝ;v�|�X?�5�2���2���0� �����LO���U�c>�ɄTϰz}hj���������s�4 6[z��*Y��|�r��� K����zO����} L^]-� ��^]	��r��-�p����h \�	]��w���W��Z{#z��˳&�����: -7A5 �F����,|Xj,w�� |���s@@�4w�T��6���$�O?���㕧��� B;��j �-;��0��U���v��Eq�-�v��c�@�� � ��X�{�%������S�$��7�|.�+���-� �^�n̲ۺu�'1y��\���c^�5��/4 4 �h�Pv?�?�6�A$�~�����9��9Tbv�� ��E��|��7oz����gP�cIZ9�˕�x����� �ׯ} `iV�EH�6m���4%�d+w�3�P�l ��?���3=��]�v�
���}����U�� ��- �  @/5��>~�葼��۞!���ʘ�������N`F-!y��4���3f���x�hA��*�ۍƪUn֖���0r�";i��}� \�/,6��D� <�� (�%��z��ɘ�/I�N�?ʎ���0��l��sUL�ѣ�M����#<������ר�n �.ɍ[�ء��Fc��1�&�]���~�x��[��� � � DEx������W[늈�}CC�����n���slͻ�Y�U�t���x�:C��Ǘ_zE�>C�L���+� � � h �EWbO����[vv����y��x����9'h joz"^���P�n߾�HLƛ�2�Õ���D9E   C����s�[��{�n�7�	V�T�b�?��m�Z�l�Q�ܱc�.�[i��z�o   C d��+ڤd�m�6#w��y�-�ܞ���D*(#��W�.k�Y�֏0�&��hk�u�Ѷ��x�UU4CB@@`�@�V4�E�������*�X�"������dJ�/����:k֬u�h���\�-/LO�d����0� ��P`��B����{�R;S�3O?+*C��"b��z�3�� �k�����=    IDAT	����#����Sj�z�m�J�N��7z��1E@@`�@�.ϸ�_ɝ;wd��i)!ܯG}#W�$�
�+k��(>� <n �'��%����Z3�۔`r���o��Do|Uf����D@@��`M+�7L)��N�Γd���A�~r��������t�C��0{�?�A�4 O��sӎ��z�-�9*��}�#0`�G������p�RST,DÇ��� � � tA��3�S�:�N�>-�?��1|��IW5=x�)��:�YB�x�  v�8%w�?T��;v\��#��Ʌ�p2��+�2<��p^�����@�bf���9�g�sݺyK8 �&MN�����)�}7V�o�.uu������bO�)@t ���zV��jǎ�2�����7�J��ؽ�|��H�����''R�������Y�'\�}����@���[�m	�$¶�6�PzANd��=��Ȗ�[���O���b�v�Z�!�c��۽-�(�� �g��"���H@���JIII��"0���<$yyg��.�~��N���;2h�w[�h ��>ڲ�\���^cE$�Cz5a��Ԥh b �v����*\%��Y^�덙)�	}W߱@�� � �n ��^�{9]+�yy촕�֖ ���j_Qrk����/9U�Ļ��Nmi h �
�c� "���"A���������.�nMZ֟��Z ]�M��H|���el'��qW��vַ⏲����@ ���.�j�5wvAj�e��$ӣ����9�-�̳���H���������4f}G@@�`�7[��b���뤩�?O��u~�.I/OZnȭ�u�M�go�k�3���-4r��8��L4 4 4 >2 V�/8V&��=p��·5��2aݓ_������GW�S)kL �KnU��0��v�(�������B@@�C�@��k�+��*a�=���&�H�����U���Lz~γ�g�8GvԤԸ��u:��2��D�i��i h h |j ��|�p�Z.%��@M��P��w�
���Ϩ�;��n�w��<��̯̺�tB3��SՂE�¯��4 4 4 0 ����L��{�s��t�5A-(�t��}9{��`�){����������T�Y�<P�F���=�dk�U)�r]n޹�p6_k�'y��B�w��by{~�5��h h h �"�$�IN>[�'�w���ce�w�x��8�<D�����;H���-�j���Վ��ƻN�g~��%_&�9zw�C��/v��gk�䍹���8�F@@'H�N�|��'�A^�4馥�)Z�ǔa������2�	�����_��xi�����A)W�='    @�0�wi�,<^&��rS[���A�PS��k�ه/J�E���$��������?���
�;8<�Z�8��E��  �����J�Xi �#�˄p4 4 �3 E*h �d�Vb���  ���Kjӆ����k{,b�<� � x� ��U����'�G�,�I�1@@�9p��
  ��b�&h h <g J+�f[�+ ֬R]����9/`���s�be[ l:/��"J$4 4 �3 eU�4 4 l�%�����(�RG`3�Y�Jn͊����h h <g *��� � ��G61@@�9PY��"+p
 ��8Fb�H%h h <g ���`����dx-�1`&T@��˞Ӌ?��.���S=�οnvƱ�n.�]�o��`�1@�Ā��4�AИX�hW�i l:��� �����52��%�P5 ��=�8�7 �n$uM�h h X�#��P5 ���.{�x �@}s+���Oe-��b��0��BE � 8۩B�6�\��`� lb@� �U�� � �k ���P6 W����e�0lkrf��X.,���� s��V���?_��
���������Ni�yWJ�nJ�&�UP#+3+����2zK�|�괼=?�F�F� <�p8\N����u�<p8P7U�6� ����k7n��7��v>��[r���d�5���ZY�Y!3^�1[�d������Z�e-��� ������I�&p�
���!�~�ѫ>[ \nh�ٖl�'|��G����C.5ܒ���[X+k�*e֡��ݶ�2xM��\�-������Z���o̷D0 N 7�#��p8\N��cLI��-4 lp��ƭvS�A�>��wHY�-9y�E�����J�}��|��X>[�'�e���i!O�C�5�a�2b��G�#��� p�F`�֘��?[ \n��~ۋ���=��ߓ��69UqM�˺�*�s䒌�Y"_�;#�eKw���}J1��C�!��I�&b���E��95�ޠ`��- m���9�~���IES��U^�C%��>�J��$�w����ZC�}��n"����B,!�[�1���_��F��<lp���o6���@�:HNy���(;�5%ɝ�D���b�)~\��N� w[ �tЍ����@�&�;
cP1���S�	���x��Zc���lp������@���@������4|oN��-��K�88�W���4 lp���}6���KM$ b`�qY�]�B�?�n�=  w����:p��C�? 10��\n2g.�Xv�T��֤��<|��+��N��,�
S��IG��Η��������M	G���Ç�4 lp�����XU-���^�!���cABL��#�&4N���%��c֑'A��1�$�v��T6�M��U�1�m� ���h �k�}e�	�p�I��P��/ͩ�So^n		��|���){�� ��Q,�������(H�1�ׄ�~nޕ���~�Q���*K��e�s2bC�|�4W^���ky�U[ ���@�`����8#]�.͕��4�<TcBG��r��v�A��	��?Z�k�����X����	��"�+���z>Ā�ҍ���t_Q]���C�X�Sc>��3�%�ֳ�ۂU;� ��t���D@/��H�aA�ދsd�/�2aW�,:^&�NU�f;U�"n������~XE,)���u��F����E^����=b��N@Lѕ�r��Q6��"K���}���.M�W4�'q!1p�J��~�u�w��[ \nP]��9f�G0��\�ޱV�����v�1D�|�Nr�8ؖw5D�|fRˁ�tE$3a��䇅�N���jYp�L&�>'#7�G+Nɛ�2��Cp�Jj��F�N��vT]�-C�-^����͹�2p��P?�������B$r�l�䔷Hi�M��qW��Wy���ⱞ5Y[��V���<KVy�t^Āj�{�S�nܕ�7%��9�d/�{�R��o��|����R�H4�aDTRc�u  w V�RIXs;р��~�2.�dCh�̀Lt�|�r�� 䙗�{��ՄXӽ��ǽ� K)+j[h h �5 uM�J��;z��P��f�����u���PScR�䙗�X�^�i֡���,o���ji h �5 W�U0��K&��KU���LN�ۍ$��P�w/�<s*�M>b@5����Ϥ{o餒ʪ�h h �5 �5�*�������jc�R>`�w}Id��ڱI9}|���a��{���	��=���Ü(*���  w \�J�x�)_�'�ԧ4Ō�^"(�{���Lz9�e�uf�ԧSh���J:{����]PZ�6���է})z��C'��	LG`M?f��s:��cDygz�ڹ?`_'����Y�?_N@�()�V��/֝�%�a�Y�C����ߗk��P��wF��Xӏ�Ub�$N&�f�}�Vm����2  w@����0K��A��kc�PՄ�~ɼ'�Ͻ���+"�_Zi����˩&����뫾�F�ݼ���f���+A��S�� B����ߒ��V��n��"b	��0/��f��/9U*a����D�}�T�z�wذ0nTI4 4 ��c�E*��v�w��s�j�"!�Fo-�-��ؚn���<�y����d��R�8���;K���UӅz�Ώ nTI�^���w��\�� v�Q��/��"g,c���4�u�߶��Y'}���H�vg�צ�V�0����*��6^`|U��mv��4 .��;��`V�ܱ�P�����sV3�F�I�EEH��o��jF��7��O��}�t�ԿS$�v���-�n_��e0w�n���:d�c�������φ3��&?7{�]W�#��Y�Ϫ�,�*��-�U��mv��4 .�I�6�`V��g��j#"�qN��-I+W�v>{��o	�ת	y��s���j�%�ʷ�nTI�^����� �l F��B��]��� ��Ѥ���ַ��ښj�k1��1�kU���5^`_5a9n/���=�U��mv��4 .�A?�W��_��
x�4f���p���1�+�k�k�+}�:-"�C/���=�̍0u_�o�ܨ���n��קp� ���T�JuK�o��ͅJy���L�������/���B��yܻ�A�v�Y���Q%�{�`��O�xi�8�J��{���k��@ƕ��s\����2����'F�Z}T�y�S�6�`_5��F��u[�ݾ>���/}F�`Vtv���@���y#�\���f��U����#y}�	���9'�a��-B^�.�:�쫦|8D��;p�J��-�n_��e  ��Q[�ۯ+b�v��������Շ �^��K���j�C^���/��}��W�����;�h� �Pm�%���t�������S�e\�Y�.����@`��_�#�1z�엦�<S��oV9f����@"/�㽶}s^��֎	���R$w��Y�/�0쫤��<����Tҩ�i h �]	�j�Y���
v���y^Ө��ʼ��R�\��ʷ����SX0gI�e���\���A-k��:�}�3�k��W��l֘,ʄ��h݂��匠#�O�Je��K�:�R��]��.o,`T��.�7�ʝ{cA[�7���Y��p��#4 4 f�!�)��{}��+��z�*e��Ψ]5�uHES�V�J��&�[X+�s�d��2��@���Q,#6��U��E9��t���4'������ȑ��j������P�j�c��C�+�V�y04�TŵP�T��G�4�V-�*��'�>���k�x��_N]F@`�x��������,���ʙ��n޹~v���`�#��P�[q�"�|��i��X2�fK��O�^c��w��%H#7���Q��Y�{Qv�u��[��ǽ�e��2Y�]���RP}]�n�Z�В��TR��Y"u�E�>�{  3 ^T�6*�_'|Qm�S�4�w�{�SouHyc����ţ�[vҷ5<� �o�jB^"O�NB�}g��U�����:���QW�)�����N�t�ؓvJ���`�Y����2��;C�,����n�E��[~Ćj��Hv �9���WlS�m�x)Jӱ�|�)��2Χ;W����n$��o����X~\I��T���Y�U ��l0���s��Â"���c8�z��y7��/4�g�?N=Jc������- f� ���Qr�ZG#?��F}�Wr�ZN����[�S�"�ȁ�+O�#�@���[߯i h �2 h�)�P��e��~G0,�o$���R��p��.�]�z��R�`r�R�-���TIg/VR��Z��
 ,3��"nm�nJ5�>|�w���
�Z[��;te t�}��������}������� d ^�|�<T�
�\�?��b�4��s�y��1 ��)���]�)/�SI�Vp�[<�K`� @g�`:�/f��r wu�:S��ar �BU8 H# ,��L�������|�ٖwշK!��T��Dv�h 3 _O_����<�1�y��_�e'M��O}�RYt�\�)lwA��c��V)ojͥ����s�}i cayCn0:�X �.�naX�}� b1��@���7���:��
nuSlM�6�a����+u�Ü���w�*$�qn��c���;KB+.?Q!�O]�����S�,�&����I�#�5�]��|��0�^��<%7Ԗ�v0˕OL[���{� ����&0
�v5Etx�3�N5�S��&����D`� V�8����
wA%�d<7Vo���eXGo)�)��+~MV����Ǣ/y������7���{jC8�����~7�2�Y��lT�e�2G�X � 6�� ��`� `XJ�y����Ig�Lp��Bk�i 4 �DH�K��lH"��H2���4ygA�|��_�Z-p���4��l<Y-��5�R���zC�Zn˵�y�����ݟ}?T�f�����{V��l��(��e�2BY��Pvx׌�D��lQ�*��}��Gp��2��TSE����0�  ��T�,��'
�b<s�%9�X�ns�L�sN���Z���\���B"�v�Q�g\��7��? ��?:�b9^��nuVe(/��ȷOW���ψ�G~�]u�#��M�5��4 ��ɋ7)���G���~ 4>��5D����SM�R�E��{�0� <��4�\Wź�u�@���e˲M:3��C��n���צ0�  4S�oU6 8 �c'P܇�K^� 8M'�CM`���` p�.V�KZ}�&`����{$Nca \NSM�N����� n >��P���3/5� � Ā�1 .�I�N�����0�   [e��_��p��X5�ƚ$1�/��t8�mq���i <` ^<^Z��R��k����2�@Q�(�<�Q��.p�jW�3� �n�#� @2c��8��\�� I�� |�3�9�.��t[X�r} �  ���e�x� ��	$<��ez\����p�4 2 �~\�e p�O��{� �k�̚!1`a$��4AX�r4 2  ��c����)dY�	$�� ��M�F��)�I�1�܀o���N7F�U������&Y��)�������������FS��+�A�1 `���@y��QhU3�w��eŲ
��:�+6�?D��� x� ��]�[;XZoߓ��jtSh��Hcca���]����^�q�v�4 5  ���|���r�6�&� \���k�<4MT�t?4 6 /�^*k���|�M׃ߪp�� 1<l>}E���}�@/	�i�J�a 0��ȫieK �'x��2w����j�?�?����&��� ��p�>[����@z-�fk ���b %ȫ�o�ف����� � �,�Ȗ	���l)JI���~�e�2p�.Ȗ��;��
\G����|���������
,�(��&��@b�pCɗ���lq8��8#�04 >1 (��?�(*jl^�]�x�Q��5Y�%������m���ʚ�E�b���!��@ ���x))��l;�khX$��Xy��6���m{}���w4 >3 (�����R�մ�#��ym�	��Z��0��!� w�?�?m��E�*B�M���=C@�C��x��o%��̊!���6�ag1M k�� 1�0���	.�������� ������R�1:~WA��5/3aHeM��b͖0�p�)��B�ú/~o�� ��  @��g����_b3<��[�e��s4�	�� 7�#�H�g΅��"o_�c�!�� 
��{���'�:��s�-��^9qk�f�:Y�� ��TW��b	s�� �  X�󭡲/�S1�BC{H��/���&��Nܩ�WQ���x�H`a�Z�e�����z�$�F�M��@�0��G�;��MOqK@0$ɜ��X�j�W����{�2�B^��!�n��xm�$�q�:bީ.'Q�S#�����$�lx&����A?���B�b8t���wd��2yqF:k��&[tx~��b��w2���E&rd� ��������й*��d֡44Ā0�XFL;��=q���?� �  5}�4�\w:����L�WJ��O��2  IDAT��~-<�e��E;��5���;���4 4 �@|s�d�ʷ�`G4�(�r]&�*�� <��*b6	�	!~v�� � <��wMF܇�y�r����z@S]�6�z?�,�h���b��G�{ �'��I�YL�+"��pK/�wp2!�����}��ߘ{B�����~+��08%� �;w @����o��������X�`mo޹/;�\�/֝a���bb ���l:uEZ�:�pt|� ��K(��
}W�O@38{��Y��9N�'�)o�:) ��m�j�c����������pGW����04 4 	鄅��1y�-���2.�{��z��,qNVy���.3^��$u�b[p��o���+ �������e����xO�綎���V��\Ȧa��&O�dW:>yOWAn G��n�9��P��S�J񥪮x�����d]N�|�6�B�!ɪY��P�[�+���SR۷\ N���#쉖 �V���w���M������)�^i���ʤ��\��b`�q�0[f�(�I�-�1�8 \���p?�L ���}���\1;I�&���T^��E�X7�6��2yev�L�sN��6ʝ{��sҾ��k���t�Ѷ��f�}3@@�H�e�r�oߓ�u2v{1k�l�5��E�r����u
eU�2m�6�Kp  ��3� �5޼��9rQ>Yu��b��&�mF���,8V&����V����2x�?i�F�Ϸ���}��l�Y����6�մ�	՘��/��Krh�B`4�/?)s�\�c��R�cW�gΕ��9k)�>� �	f�#`1huK��*���;��y�F�k�f�Y�,Ȓ){�ˡ�z�Y5!e�r����@@
�m3`��W�M�_�]������#�/���D��M�}.�����_q����w;d��2�s��Ń� �9m��ʗ��N�y��c}�S�[B���zV�d+[I4_� ;�&���-����X�Cz|2.�<�v���"4 4 ��_L
-r���4^|�~�.6�Bch�a�����EMQL����}�	`�\+n����j�#;����	\�}���# P4 4 F��������<�w�A]��'�,�WT+�\
MW�g1;zQ�u�e�)�Q�� ����ey1���4�   �����B���^��N}�<|$Mmr�b�lȭMR4d�ys.;���Ǡ�Pv�h
e�2E٢�����j�����q�s����� ��Ѥ0d�bٓvJZoz��K���|�M9T\/�3.���%��<�Dp�UF��P(����w��������2e�fy��1F�8���F�- 4��_�����-�Dx��9�y���;�����.X�}��j�DF���&Aod�%��C�%�y�%q���s�%����[��&�~w���  ϑŠ����Gċ�	tE'�IX�VZ�}®�zsQh�D����,��x<�3��Y��X�yq�
7}3��T�mi h <g ��ȟe��r��Ů82��w��3����P����I+m�=��!�\�Y��G�d����'�.��w�7[��ˍ�ź32h�i�p�I�$Wz.�
�|yV��0=-��1��a�cp,΁s�87��k�o���{�=������L�� E��΁v>� � x� ��M�?.�,�r���w�M���s����S�ùΩ�4 4 �1 �A�L�1��L��>.�*��t�i�Y��x����?�������I�h �+i�
d�?�|9u���qT�ϗ{f�?����(8YV�8"�%�Ł�"&��^�1�j���ח��Жn9(��/�ݎ{O�2�a$!0�Un�Y�a��@���(�P@y�m� ���O�3Kf��%'�J����K�&AwxJ�r X��+�Y�wJ߯���~k(c��kh D#���v�W��?-�E�ˑ�B��krIBxY/�@�����uv˕��w���K���N���wftj���P���!.�l���%��Ln�2gYW/����f�m����g��+�����=yD�GL1@4 ,4S����������ą�WXԨ���.©����֐��| S�.��O���R�ș��  ��0�hHУ��������f��{��hn���UKs��T���E4�\�����t?��~����x��'/�i �@ �Ds�{��;��A?Ȁ�f˘Y�C-�gHکb)��*�7��R����[�ߒ�+�@�Y���L\�1�\���C�n*&x_�jYc^$7/h h h ���3\���;yw��P�	X��7��	��]�����뾜���Ç��z#�j�6e�˦'d�����-�͌U�&�wG��+��#�����~�� N�2��e���#C-}F�����2}�vY��@hu{�B��H��M;��'�Jf�y9y��`b�h�XY#W��0�\\�qKn��	͛���)�����a��k7���E*k�RU��+�5�C�1�-Z6gȾ�ӡ��[f
^�`��e[��5�B���q�|�͌�,x'�p#��pM  ֔�b� �� z�-���Fb� bc���Ο �b ��`���v���1@����-vN�L�3�L�b� LÀ��w�S�������MOl� �b� R�h� ���?o�u�?��=��n����VD�@�1 ��c �������I���`  b� �b ����1 ��n/�n�$x�Sz
�N;�N�y�<'��0 ��c ���^�h������� � � 1@)� �׎��w{����N����SX覹P�kF� 1@��^; ����)m��w/|@@@� 1@��^; ��m����N�o��a�����Sﴙ��sb�0�^; ���X�['���1�+1@Ā�1`G�q,��[M}�m�� 4?���&��0�������n""�a�]��{�#�I�ཐ��b��/���m h>R� �
�����5 �� 1@)��o�{ߖ���j �������>ᏯsM :n�:n�-˖ L���)��ף�.���s4˶��@���@Ā�1`w �����e j[l�߽ЏM?)h��3��l$nb� bc Z���j]� >���K['��3�	��]p6� �b@�%��yϖV?������P'@|��'{3�5 ��lG�� 1N4��8�I�n�A[���b���!�b��ŀ��k�|� T����z���� �Q��p<��A� 1@<�h�����V��h��~}�/�7����{ v$�b� � �ծ�Ƈ����c9�/�V�'��,� �b@N�����������?a���@�:�#v�b�xN�����	���� �+`!>^���1@Ā
�X��m�LO���*G �*VyH�ˠ �b� ǀ�y�!��m�LO �0l�GL W	|� 	l�1@�@���ZngM����܂s�\�7O��@{�&
�G�!�b��u�{��#ZM��� �8x��!�p,��R�|BD� 1��h��Z�u,���ԥH��w�⸉߿8@���\��\Y~,?b� �1 ʹ��Z�U�� ����8v���'4t�� 1@�@@+튾u<4<V�i ��:v#�����޹�Fu`��1�Z�>�C�h][-yH��&�Ū4�V0xA"JA�REZP"�l|��R���Q!PQ[G����,����9��߼���3������̎��A�㖓�eʎ����%�wi��N���F��Ѝ���q���Uq~� �������+��V��,45 ��eC�$z��u����F�0 I�-�9iv�G�3M�n<7s�Y�4���&-$� � ��@�MN5V��Jh� (���a�	T�C�@�B�0 0�..G�`K�[-�[��:5 ��P�m(����-�w�ѯ�~iu��e�O��q�Xmz��ǐ*���I� � �ǀN�Ӧ�Z����4��ЖPĕɣ���8'��2_c��0
�:���Y� mn7�m ���Y���S�l�u��@y(��|�2�@-}�[�����dis��m�\�|�K&����ڂ�;�	` `��,��S�[�����$!�Ѓ�L}�-3�A9�"V4i�����,Z�ͼ���z��=�'��8�wʟ	�l��
�������1��셫��c?~���tR���� (���I�& �X��7� 
�� WF�0�=譶����7x���đ��_7wl ��^39�҈��A�螆D�I]� �iSt�_iĻ�+�u,���"Z\v�A|�������1�um�(
���` �b@$-���K�ޅ_:�����wj ٻ붦R U3п�X��s	�s�>�O�sD��4U�V�2.�߹P�=o�-���Ұ�Y�q�����;�`� � ��4��7�%zM}AJ#����W���i��������_�;��Xi$:jQS3}���eT�ڤ��A��5��` m��i�4B'�I3��q�)���Ѯ:z�bß���Ջ����&{P� �4���:�L9� �@s��*��N?{3 J��o�`0!0 0 0��i���� (�7~�͔+T~���7wǔe0�Li���� (O�=7���`` ` `��Jif!`3 N=4�N~``������k�@�u���L�6p��`":&��?�Dic�!u`3xn�Y6�#����J���¬Bf@�����w�LWV<�<���:��` |1 �f25 6�?��ŌM�0
���i�4/!�F ���m/l� d�@���jn��MF���eC���0���<
���\ ��_��3�g/�u[�=%�
4�ӂ����fI��ay�6 ��d5u 0 �(���u�0 ��?�?2._�N|ox�l��H����=F?�s����q�*��B���}0��\��90}֌�2ˇv�
���#�\(����H[�13?�����ZL�=P/��������}s�Ǜ�Z�*n�'�J��L���'F0 0ХH$��	�4BZ��{i�4DZjx	-]EhŻ6�    IEND�B`�        ECFG      application/config/name         Client     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     global/release          
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         network/ssl/certificates         res://server.crt)   physics/common/enable_pause_aware_picking                    