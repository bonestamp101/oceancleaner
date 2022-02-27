GDPC                                                                                @   res://.import/basura.png-f60eebf6173f73641824d9082e6978a3.stex  �H      â      ���v���rqa[��g��@   res://.import/bubble.png-7158fdafbd9a4cab431a459608665d16.stex  ��      �	      yԊ`��yv�L��b�@   res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex  0�      �      JUN�Ve�;�.���i�@   res://.import/depth.png-0cf5506da3124ea9e52f54fcaa991832.stex   �     �      �!"nOɌ�9��D   res://.import/jellyfish.png-22f2dc03735b03f596147266df641ab9.stex   �'     �>      ��.t�E�%*�n�/@   res://.import/pause.png-8b1acaafb8b39f8fbd6111e77f6697a5.stex   0i     �      &[�[��Wz�d}�;\�@   res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex  @z     �j      �T�\��s��E��j@   res://.import/score.png-9370e369e60e174fed6d82daf8f2df3f.stex   `�           D��Ӏ��YL�`	@   res://.import/seabg1.png-b81598b868488b02614f2cce7a4c906b.stex  �     .)      c���+�0��Y�3�@   res://.import/seabg2.png-b760de5761b8380f966d2d9cb8a7a708.stex  �(     d1      �l8������h@   res://Scenes/Base.tscn  `	      �      ������9�r�P_�   res://Scenes/Basura.tscn       g      Y t|��֭��t���   res://Scenes/Player.tscn�      <      �Z��-��~����Q   res://Scenes/jellyfish.tscn �/      s      )�Lw��t�Fo�(�\   res://Scripts/Base.gd.remap �]     '       ���$(A����R����   res://Scripts/Base.gdc  P2      �      ��A_��.;��XYA�    res://Scripts/Player.gd.remap   �]     )       <y;�9Y;�k��S�   res://Scripts/Player.gdc09      G      3�3ػ�!y|˵ ]^    res://Sprites/basura.png.import P�      �      �n�P߿�;�7�`��    res://Sprites/bubble.png.import ��      �      ��DԆ�O�U_�����    res://Sprites/circle.png.import 	     �      �G�E)w�_�@�"�0��    res://Sprites/depth.png.import  @%     �      ���l��'ii_\����$   res://Sprites/jellyfish.png.import  �f     �      ���݀��q$k�D
��    res://Sprites/pause.png.import  �w     �      	((�s�+�d]u;    res://Sprites/player.png.import ��     �      ��IXz�� ��J^2��    res://Sprites/score.png.import  ��     �      ۻ��6S���#�ݹ�    res://Sprites/seabg1.png.import @&     �      u�m�k�r_�л
Iy~    res://Sprites/seabg2.png.import @Z     �      ]d+�~<^P�hX�   res://default_env.tres  �\     �       um�`�N��<*ỳ�8   res://project.binary�]     E
      �ˡ򻆙5p������            [gd_scene load_steps=7 format=2]

[ext_resource path="res://Scenes/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Base.gd" type="Script" id=2]

[sub_resource type="Gradient" id=9]
offsets = PoolRealArray( 0, 0.293706 )
colors = PoolColorArray( 0.340088, 0.654366, 0.777344, 1, 0.340452, 0.314026, 0.574219, 1 )

[sub_resource type="GradientTexture" id=10]
gradient = SubResource( 9 )

[sub_resource type="Gradient" id=7]
offsets = PoolRealArray( 0.013986, 0.0559441 )
colors = PoolColorArray( 0, 0.00982666, 0.0898438, 1, 0.242188, 0.911194, 1, 1 )

[sub_resource type="GradientTexture" id=8]
gradient = SubResource( 7 )

[node name="Base" type="Node2D"]
script = ExtResource( 2 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 923.004, 2521.46 )

[node name="Sky" type="Polygon2D" parent="."]
position = Vector2( -9490.6, 1289.39 )
rotation = -1.57079
scale = Vector2( 119.233, 345.665 )
z_index = -1
texture = SubResource( 10 )
polygon = PoolVector2Array( 101.417, 2.18347, 101.668, 55.4057, 10.6263, 55.4057, 10.552, 23.8158, 10.5011, 2.18347 )

[node name="Timer" type="Timer" parent="."]
autostart = true

[node name="SeaColor" type="Polygon2D" parent="."]
position = Vector2( -9761.49, 12468.4 )
rotation = -1.57079
scale = Vector2( 122.499, 355.134 )
z_index = 3
color = Color( 1, 1, 1, 0.482353 )
texture = SubResource( 8 )
polygon = PoolVector2Array( 101.417, 2.18347, 101.668, 55.4057, 10.6263, 55.4057, 10.5011, 2.18347 )

[node name="Timer2" type="Timer" parent="."]
wait_time = 3.0
autostart = true

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="timeout" from="Timer2" to="." method="_on_Timer2_timeout"]
  [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/basura.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 105.374

[sub_resource type="Animation" id=2]
resource_name = "float"
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 2
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0.1, 0.5, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 0, 0 ), Vector2( 0, -13.853 ), Vector2( 0, 0 ) ]
}

[node name="Basura" type="Node2D"]

[node name="BasuraSprite" type="Sprite" parent="."]
position = Vector2( 0, -3.65909 )
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )
hframes = 2
vframes = 2

[node name="Area2D" type="Area2D" parent="BasuraSprite" groups=[
"Basura",
]]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BasuraSprite/Area2D"]
shape = SubResource( 1 )

[node name="Float" type="AnimationPlayer" parent="BasuraSprite"]
anims/float = SubResource( 2 )

[node name="ColorTween" type="Tween" parent="BasuraSprite"]
         [gd_scene load_steps=17 format=2]

[ext_resource path="res://Sprites/player.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Player.gd" type="Script" id=2]
[ext_resource path="res://Sprites/score.png" type="Texture" id=3]
[ext_resource path="res://Sprites/pause.png" type="Texture" id=4]
[ext_resource path="res://Sprites/depth.png" type="Texture" id=5]
[ext_resource path="res://Sprites/bubble.png" type="Texture" id=6]
[ext_resource path="res://Sprites/circle.png" type="Texture" id=7]

[sub_resource type="AtlasTexture" id=1]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 503.571, 253.099 )

[sub_resource type="Curve" id=7]
_data = [ Vector2( 0, 0.0681818 ), 0.0, 0.0, 0, 0, Vector2( 0.994186, 0.25 ), 0.254545, 0.0, 0, 0 ]

[sub_resource type="Curve" id=11]
min_value = -200.0
max_value = 200.0
_data = [ Vector2( 0, 1 ), 0.0, 0.0, 0, 0, Vector2( 1, -200 ), -432.495, 0.0, 0, 0 ]

[sub_resource type="Curve" id=12]
_data = [ Vector2( 0, 0.268182 ), 0.0, 0.0, 0, 0, Vector2( 0.436047, 0.768182 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="Gradient" id=13]
offsets = PoolRealArray( 0, 0.208054, 0.38255, 0.536913, 1 )
colors = PoolColorArray( 0.90303, 1, 0.394531, 1, 1, 0.339844, 0, 1, 0.951172, 0.140203, 0.0445862, 1, 0.107422, 0.0751409, 0.0713348, 1, 0.105882, 0.0745098, 0.0705882, 0 )

[sub_resource type="RectangleShape2D" id=8]
extents = Vector2( 44.6562, 16.6453 )

[sub_resource type="AtlasTexture" id=9]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 136.201, 259.775, 263.913, 254.39 )

[sub_resource type="StyleBoxFlat" id=10]
content_margin_left = 1.0
bg_color = Color( 0.133333, 0.698039, 0.239216, 1 )
corner_radius_top_left = 10
corner_radius_top_right = 10
corner_radius_bottom_right = 10
corner_radius_bottom_left = 10

[sub_resource type="StyleBoxFlat" id=6]
bg_color = Color( 0.0470588, 0.0980392, 0.27451, 1 )
corner_radius_top_left = 10
corner_radius_top_right = 10
corner_radius_bottom_right = 10
corner_radius_bottom_left = 10
expand_margin_left = 5.0
expand_margin_right = 5.0
expand_margin_top = 5.0
expand_margin_bottom = 5.0

[node name="Player" type="RigidBody2D" groups=[
"Player",
]]
script = ExtResource( 2 )

[node name="PlayerBase" type="Sprite" parent="."]
position = Vector2( -2.62638, -5.26456 )
rotation = -0.163236
scale = Vector2( 0.2, 0.2 )
texture = SubResource( 1 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="PlayerBase"]
visible = false
position = Vector2( -206.915, 39.7411 )
amount = 10
lifetime = 2.0
local_coords = false
texture = ExtResource( 6 )
direction = Vector2( -1, 0 )
spread = 74.03
gravity = Vector2( 0, -25 )
initial_velocity = 71.57
initial_velocity_random = 0.87
scale_amount_curve = SubResource( 7 )

[node name="Explosion" type="CPUParticles2D" parent="PlayerBase"]
emitting = false
amount = 50
lifetime = 3.0
one_shot = true
explosiveness = 1.0
texture = ExtResource( 7 )
spread = 180.0
gravity = Vector2( 0, 0 )
initial_velocity = 247.32
initial_velocity_random = 0.6
linear_accel_curve = SubResource( 11 )
scale_amount = 0.73
scale_amount_curve = SubResource( 12 )
color_ramp = SubResource( 13 )
hue_variation = 0.11
hue_variation_random = 0.5

[node name="Area2D" type="Area2D" parent="."]
position = Vector2( -2.62637, -5.26456 )
rotation = -0.163236

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( -0.437722, 0.604318 )
rotation = 0.155907
shape = SubResource( 8 )

[node name="PlayerWheel" type="Sprite" parent="."]
position = Vector2( -9.77774, -2.35104 )
rotation = -0.163236
scale = Vector2( 0.15, 0.15 )
texture = SubResource( 9 )

[node name="Camera2D" type="Camera2D" parent="."]
z_index = 4
current = true
smoothing_speed = 10.0

[node name="score" type="TextureRect" parent="Camera2D"]
margin_left = 315.456
margin_top = -201.805
margin_right = 488.456
margin_bottom = -143.805
texture = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="scorelabel" type="Label" parent="Camera2D/score"]
margin_left = 79.5132
margin_top = 22.0727
margin_right = 136.513
margin_bottom = 36.0727
rect_scale = Vector2( 1.64701, 1.64701 )
text = "100Kg"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Depth" type="TextureRect" parent="Camera2D"]
margin_left = -486.95
margin_top = -251.716
margin_right = -333.95
margin_bottom = 261.284
texture = ExtResource( 5 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="DepthMeter" type="Polygon2D" parent="Camera2D/Depth"]
position = Vector2( 20.4167, 12.5898 )
color = Color( 0.929412, 0.8, 0.219608, 1 )
offset = Vector2( -19.65, -37.729 )
polygon = PoolVector2Array( 19.7608, 28.3512, -7.59094, 37.8649, 19.1662, 47.6758, 45.0314, 38.1622 )

[node name="HP" type="ProgressBar" parent="Camera2D"]
margin_left = 446.982
margin_top = 21.7818
margin_right = 596.982
margin_bottom = 45.7818
rect_rotation = -89.9999
custom_styles/fg = SubResource( 10 )
custom_styles/bg = SubResource( 6 )
value = 50.0
percent_visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Time" type="Label" parent="Camera2D"]
margin_left = -39.6428
margin_top = -290.713
margin_right = 0.357239
margin_bottom = -276.713
rect_scale = Vector2( 2.02745, 2.02745 )
text = "10:00"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PauseGray" type="Polygon2D" parent="."]
position = Vector2( 0, -1.41422 )
z_index = 7
color = Color( 0, 0, 0, 0 )
polygon = PoolVector2Array( -1283.86, -759.481, 1234.94, -759.481, 1249.03, 694.392, -1283.86, 699.719 )

[node name="ExitButton" type="Button" parent="PauseGray"]
pause_mode = 2
visible = false
margin_left = -86.924
margin_top = 5.63583
margin_right = 88.076
margin_bottom = 31.6358
text = "EXIT"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="pause" type="TextureButton" parent="PauseGray"]
pause_mode = 2
margin_left = 411.529
margin_top = -280.804
margin_right = 485.529
margin_bottom = -208.804
texture_normal = ExtResource( 4 )
texture_pressed = ExtResource( 4 )
texture_hover = ExtResource( 4 )
texture_focused = ExtResource( 4 )

[node name="ResetButton" type="Button" parent="PauseGray"]
pause_mode = 2
visible = false
margin_left = -87.0358
margin_top = -31.5398
margin_right = 87.9642
margin_bottom = -5.53979
text = "RESET"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GameOver" type="Label" parent="PauseGray"]
visible = false
margin_left = -152.529
margin_top = -123.489
margin_right = 87.4712
margin_bottom = 9.51093
rect_scale = Vector2( 1.26926, 1.26926 )
text = "GAME OVER!
Has conseguido recoger X piezas de basura en Z tiempo"
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="area_shape_entered" from="Area2D" to="." method="Area2D_entered"]
[connection signal="pressed" from="PauseGray/ExitButton" to="." method="_on_ExitButton_pressed"]
[connection signal="pressed" from="PauseGray/pause" to="." method="_on_pause_pressed"]
[connection signal="pressed" from="PauseGray/ResetButton" to="." method="_on_ResetButton_pressed"]
    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/jellyfish.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 84.1414

[node name="jellyfish" type="RigidBody2D"]
gravity_scale = 0.0

[node name="jellysprite" type="Sprite" parent="."]
modulate = Color( 0.380392, 0.941176, 0.247059, 1 )
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="jellysprite" groups=[
"enemy",
]]

[node name="CollisionShape2D" type="CollisionShape2D" parent="jellysprite/Area2D"]
shape = SubResource( 1 )

[node name="Tween" type="Tween" parent="jellysprite"]
             GDSC         !   c     ���ӄ�   �����׶�   ����϶��   �����Ķ�   �����϶�   ����Ҷ��   �����������ض���   ����������ƶ   ����������������¶��   ������߶   �������Ӷ���   ��������Ҷ��   ��������������ض   ϶��   ���������Ӷ�   ��������Ҷ��   ����Ӷ��   ��������Ӷ��   �������������������϶���   ����ض��   �����������䶶��   �����������   ����¶��   ��������Ą�������¶�   ����߶��   ����������������Ӷ��   ���������Ҷ�      res://Scenes/Basura.tscn      res://Scenes/jellyfish.tscn       Player           X                 �                   
   ColorTween        self_modulate               Tween      �                                                    %   	   .   
   2      3      9      B      G      g      q      w      �      �      �      �      �      �      �      �      �      �                A     L      a  !   3YY;�  �L  PQY;�  �L  P�  QY;�  YY0�  PQV�  )�  �  PQV�  &�  T�  P�  QV�  �  �  YY0�  PQV�  ;�	  �  T�
  PQ�  �  P�	  Q�  �	  T�  �  P�&  PQ�  R�&  PQ�  Q�  �  T�  �  P�  R�  Q�  &�	  T�  T�  	�  V�  �	  T�  PQ�  �	  T�  P�  QT�  �&  PQ�	  �  �	  T�  P�
  QT�  P�	  T�  P�  QR�  R�  P�  R�  R�  R�  QR�  P�  R�  R�  R�  QR�  R�  T�  R�  T�  Q�  �	  T�  P�
  QT�  PQ�  �%  PQYYY0�  PQV�  ;�  �  T�
  PQ�  �  P�  Q�  �  T�  �  P�&  PQ�  R�&  PQ�  Q�  �  T�  �  P�  R�  Q�  &�  T�  T�  	�  V�  �  T�  PQ�  �  T�  P�  QT�  P�  T�  P�  QR�  R�  P�  R�  R�  R�  QR�  P�  R�  R�  R�  QR�  R�  T�  R�  T�  Q�  �  T�  P�  QT�  PQ�  �  T�  PP�  T�  �  T�  QT�  PQ�  QY`              GDSC   B      a   �     ��������τ�   ����Ӷ��   �ƶ�   ���Ӷ���   �������¶���   ��������   ���Ҷ���   �����Ѷ�   ���������������Ŷ���   ����׶��   ��������������ض   ϶��   ������������Ӷ��   ���������Ӷ�   �����������ń�   �������Ѷ���   ����¶��   ������������������޶   ��������������϶   ������¶   ������������������������ض��   ����������ڶ   �����Ӷ�   ��������   ζ��   ���������Ҷ�   ��������������������Ӷ��   �����ׄ򶶶�   ���������ڶ�   ���¶���   �涶   ����Ӷ��   ���Ӷ���   ��������������Ŷ   ����޶��   ���������Ķ�   �������ض���   ������������Ӷ��   ��������ض��   ��������϶��   �������Ķ���   ������Ӷ   ���������ض�   ����������ض   ����Ķ��   ������Ŷ   ������Ŷ   ���ׄ��������Ҷ�   ������Ҷ   ���׶���   ���������Ӷ�   ����������Ӷ   ����������ƶ   ���������¶�   ���������Ӷ�   ����������������Ҷ��   �������Ӷ���   �����Ҷ�   ���������������������Ҷ�   ���¶���   ����������������������Ҷ   �����������Ӷ���   ���������������¶���   ����¶��   ��������������������޶��   ���������Ҷ�          d            
   mouse_down                              �     
           -�1 �?         "   GAME OVER!
Has conseguido recoger          piezas de basura en           tiempo       ?   <      	   %02d:%02d         Basura              enemy               res://Scenes/Base.tscn                                                      	       
   '      2      6      ?      @      J      R      W      [      d      e      j      t            �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '   	  (     )     *   !  +   &  ,   2  -   3  .   D  /   E  0   K  1   O  2   ]  3   f  4   j  5   t  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C     D     E     F     G      H   !  I   '  J   ,  K   ;  L   J  M   K  N   ]  O   m  P   p  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   3YY;�  Y;�  �  Y;�  Y;�  �  T�  Y;�  Y;�  YY0�  P�	  QV�  &�
  T�  �  V�  �  �  W�  �  T�  �  �  �  &�  T�  P�  QV�  �  �  �	  �  �  '�  V�  �  �  �  W�  �  T�  �  �  �  &�  V�  W�  T�  P�  PQQ�  W�  T�  P�  �	  Q�  �  &�  PQ	�
  �  V�  W�  T�  �  �  (V�  W�  T�  �  �  �  &P�  T�  P�  Q�
  T�  �  Q�  V�  W�  T�  P�  �	  Q�  �  T�  �5  P�  T�  R�  R�  Q�  �  T�  �5  P�  T�  R�  R�  Q�  �  P�  PQ�
  QT�  PQ�  �  �  P�  Q�  �  �  W�  �  �  T�  �>  P�  Q�  �  �	  �	  �  �  �5  P�  RR�  Q�  W�  �  T�  �  �  �  �	  �  &�  V�  W�  �   T�  �!  P�  Q�  �  W�  �"  �#  T�$  T�  �
  T�  �
  �  �  &�  
V�  �  �  �  W�  T�%  �  P�  R�  R�  Q�  W�  �&  T�  �  �  �  �  �  �  P�  PR�  QQ�  W�'  �(  T�  �  W�  �  �  T�  �  W�  �   T�  �  �  W�'  �(  T�)  �  �  W�'  �*  T�)  �  �  W�'  �+  T�)  �  �  W�'  T�,  �  PRRR�  Q�  Y0�!  P�  V�  QX�  V�  ;�-  V�  �  �  ;�.  V�  P�  R�  Q�  .�  L�-  R�.  MYY0�/  P�0  R�1  R�2  R�3  QV�  &�1  T�4  P�  Q�  V�  �1  T�5  PQT�6  PQ�  �  �  �  �  �  �  &�1  T�4  P�  Q�  V�  �  �  YY0�7  PQV�  &�  V�  W�'  �*  T�)  W�'  �*  T�)  �  W�'  �+  T�)  W�'  �+  T�)  �  �  &W�'  T�,  �  PRRR�  QV�  W�'  T�,  �  PRRRQ�  (V�  W�'  T�,  �  PRRR�  Q�  �8  PQT�9  �8  PQT�9  YY0�:  PQV�  �8  PQT�;  PQYY0�<  PQV�  �8  PQT�9  �  �  �8  PQT�=  P�  QYY0�>  P�?  QV�  &�?  4�@  V�  &�?  T�A  PQ�
  T�  �  V�  �  �  �  '�?  T�A  PQV�  �  �  Y`         GDST              ��  PNG �PNG

   IHDR         �x��   sRGB ���    IDATx��y|dWy��=w�MKi�}u���[�6`¾&@B��a2IH&�̛�$o2&	3&�0BY	���ݬ�6���6޺[�U-����z�?N��J*I�n�%���磏�Rխ+u���γ*�5� � l.���AA.>" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!" Aa"@A6!�Z߀`PJ��u��+rA��F��X{V��gY���B�K>/� �" ֘�0�-���+�>�A�؈ XCV����Z_4�!� lD �!�f�� \�r.a3*��!�	���7��A�xH�����*�\���XV-$@#���1 ^�{���Z��y� 8<
k~� -!#B@a� �5b����������L3 �� �$K�&6����`�g~�`�O6��Q�q Z���yA�� X# �� �cy=4p�������^	���[��&��~���qLbᛑϔ ºG��F (̉��@	�/z�oW_���)˶ �j+�\�ŉ�	;���i�0�6�_h������4;Pc<_�|�U�;�ϥ ��"9 �.�ɿ�z�O}`�@�N�r�6��h.��Ƙ��p�
�O��0�]���E/���*�J��jg��T�V�j����A��1a�S+�{�E)%"@a����L�C��`N����o�͹݋]�6Y�>z��bS�9��	L�p��0����k���������ڮ]�^7���ԉ�ک�Ow����uL8�����!�E>�� +��5�� �� �`���t��PGy ��je���b&P�
|���U��cN�
�/���[�4�����H��61:��yj,+2�$
~�Q�"aC���Hd��_$�~���{(cP; žb�O��C�[�"�
����<p-�_��=7�^��خ]��O�`i���A%hU���K�������7����k>�-5|8�"e����b4![�d=�=" ��*{���3O�I3� 7�����������q펺_��4�Y���}�y�5Ə���<}&��6X�������yY����X���gN!��ߋ�P|�Z�Dq1�R�0X{d�%��;]}����C�1��G1" ��]}A��X���N�l+7�w������_�Z��^�
�hQ�T$�x������Y������?�޼�YO� l�R3_��r�����ps�4�*|������߳�'d���E�����q�����7a��a����\�j��m�වY �@<���4�
�v|;��g�������4$[�F�ܷ���G�%Di�+��l�̂�ow_�Iܿz����GƽLb���C���ϐ1�~�K���7ߩ*�J�8q�0.���j��xo��7���d�y���Y������ �ǔ�Z�wJ� c��$O`�yg1-˟�����0���+����n~��Y����Ryg_x��	��P�s��5��ى|Iܜ�ݷ�/������Y2^��G{n�]�K~�[0C�֞�������	7��`>�7�2�鐬xAX�?܆i@v���/���#bL��$�I�a�@�t.}Ŕ+�:�����C��!�(��s<��9IC&ǣ����J�9��p�B�2�f�������iw/�u]6D�+���I.���_AD� ,I����ݼ�����"��|#(�����f#B�~7�)~�$ �{��" �'0� &G&��_�]����f��N���?�x������ᜇrN|������'�k�X���n߲��胣�
���Q��9"@N�p��7&Y����cE����An>x�����C��Z[ߺ�>N�>��mr.8��v�&��1����i^L��!`�p+� ��Vm�6�5Ե,P�-���Gӝ>�W�V\ ��4Q�6���n�wb�[�J���>0RȈ��_�$.����(�����0B`�𷌾�8ў]�u���U��eY8���y���eYh4i��Qa�6�]]twu��?��J�����JEM�=�N��Y㓓�Z��4M���y!�[�G"��L���A�q���C�Lg�PX��]���NWyG9=�����_��B�0�bw�Ĳ�V�¬S�_�����ٮ����S�/�_�=�	�03^���qP.A�/گ4�0��������-CC.�� ���������b!��4�-�4�^�S��)����El�nbkۖ-���5I��1A25=�so�%���_��WUF��0A�+1��0���b����Wpy� X_|��ø��s�R�J�zw��e[T����4��{n�]w|�m̿J�B���ڱ����=�13Μ�ua�s��y�ƿe����m�r����>��`��B�r�L���,k���|.G���m��������>�B����o���pݵ��������w���O��]��� fl����xI�Ve�[D@g�,�5b�x��o���d��i�T3{�c������GJ�0����V��W�Ũ��}��Oͨv������@iYa�v�A<��מ���|9�<��
��������W�L_͵jhp�R�4��o����J��DQđ����G��Ȩ��j���c�	h� ��?>Ja��F< k�ֺ�"�Ծ� 8A5T�c�/-�2��W,m}Ɩ�1�p��������&��t%�?4;���D�lq���E^&�9���Ln΋n�]�y�jxh�qV�п��o�����h�緼��sپ���ݻ8;5ű�'��W��<����o�n^Saʇo�xބ9(}SJ�v��x�F��"�����I���A�����l�[�;�wE��p<��I0Z߭r�o�Cf�� Kr;��C��|���nݲŶ����Y������<��/����D�R
�q�+����b���d�޽��O>���䛿���O�0�еE,������c� �&G&����S+]��D�hjbdb������t����v�(�B>���)��ofM��e/M�n�bg��V�y��YQ��PJ�.�CCt�J���{{سkg���#�7�7�4��L}'f���Ƅ	�^WD@{d����� �PUNW�4M�0I�d�?���j#[jػ�������E��d(SBa�� ��twu�+���2<8�]��f?mi��׾�-mnY�b�g\~���~��ޠ���ׄ�|ɋ����l3��#�k�KXd�C���,`�C�_�$���� �W��+uj�Q��H���~o�j���S=�O)2^:�v��0���rY5�U�7>����anM�\�ń@+?��e���kR����T?�WFsG?�;��@�����/�;�Vk�IJ�� ����ū����{ywJ�������{�%��������h��S�O�᪈���CdD@�,$�R�|����ϝ�
��?��Ȋ �i�.L7�0 �q�4^�4��N�Zk�F@�Z_��@�`��=���{�{E�e��dX_��������$��RV��)'N��ɧS�VI���7�W@{!�������{��jDT��������sD���c<b�:@�Hk�0�����4N�<zV�D�+w��؄psn������]����=�˝Y�������DV�<|{%�C.Q�vep'��cǏ��w�{O<�ؙ3�j5�("Mә���BD !0Wlb�-��������ze<'�����8c��C��e�K�^��1���j-�,i�Ҩ6�7$���w�(.�QQ'L���e�L^đ�~A���Eo۶g6�5�z���c<����w�<|�O>��S����djj�J�J�^'C�$����"��,���C_�<ˀov_�җ$s�~�7D��"HY��%ń~x@m�n7�S�r�;
�YO�Z� ?�pύ@m�>=qt<��?�Ҷ� lFX�.�<n��7�����j�>���A�$
}�Xڶ��8ʱm,���\^�ٽ+�s�v{hp�N�|���� h��}���߷�����s)G�v�_�������O[��A�~�%��!�AZ�1�?��q̓��o�~�N�t���B�^Zh�ѩF�g�s��pH���]O8A%hU$���P��|��
����N����r�7�{r��|248��n�U������rk9%��+���O��>MSFF���SO�$�GI>�Oۙ�� �x/s�oD �YH�����tg��qGj��w��\!���m����qϼ�󽎄�j1���ʱ�˞�a� ��{�|~��J�5�0�s����ehp�_�ٟ���T*-k�X�h�0HkM�^���f�2�<0Wh�k�"��^G��X`!)����0�)������-�e[�y�sg][kM���$���]ϝ��6-����A5�:|���`0
���{0m��^6+m����'h�w�J�%�]j1�K�p�E*���������}hXL,�:8�c��ē�;���w�{���O�u3g0�O��}d� $`#����|��Ꙛ*�Ij{��+���&)�k��u����T��AF3�a�� Zk�8!
#�$Ų-\����b����Ŀ����a;�g�1���|b)�� �H�'l�1)�-1p��i^�� ��G���U���R��YˢXl_t���[���z �m��F�  �&�9	���0��5x���������Fh���V�a#4I@ޅ�m��NM�!��(�ݻ ��&gO���5���/�# �r��Rj���JyE�\.o�a#I,N%�������궗����A>���Z3�R8$!>�����S��nZ3�" e���1�=	@�L�$LE��d�v�S�n�V'l��UV��&I� "�3�k�5�qϻ��tÎ�3y:!F�|i�+����4NK�|{��ey%�u�\��\.*{^�6�N��/}9�}�[V��`��4�`���N���y�s�}�T,��uF�G�Ea��l=0��\��T�-ԩ�QkP��	�q/�(��X����F�Am�F�Z#�Da�h��$N���H������,���ӿ �eM׷��e]�gYn��Z��\�7G�����u?�;q�F#XV/�vh�i���~6r��&��!��؂H`�](M���Wn�� mi��&W`!�(&�b���,k�B`�`HӔ41_�X�:��L��V��::������'A��i��J��cY��_Q��J�E�q�z+mr8u�4���Lr�{����tw�y�cLP'��4M	����cLMM���ȱc��o�=;�i4r�ݥ�Tl ���Z�o�g�2*��54�u�O�㓇N:I4sO#���D3�1��
����|7�s eϣ�]���y&I��]�"knA��?�}����k�uT����IZn��N��1y�� ���d� �h �|�6�d1�`��`{�h�+���\8W���WJ�bV�A��ؓg�ƿ�3A�� \x��z��JTͤ��r�S�O�������� ��?���$q�Ϟ�J��ǣj��$�$MR+C7�#�[��7��|� �=tQD �o�`��צiz���}�]��K�tK�V�1��OOX�����O�_�Թ
 ��f*���T�� ���0�]�K�Vx ��8a=I�Tk�ZU`����o�^�0-���;<��:&�XX �x9��mY�3���7����O[�z׻T�ZLE��z�ʻz�_�5J���lV��EYjƐ�9]q�e��o��cc�z��J@m%��OL̮����/��R^�9gz�i��֎6��*+
: ;�.{�9D �oR`+�j�B�`���ogll����}3���q��i�YV��@ߞ2J�TY*Q�r�@AЮq���:+F�k�5� �_1�ۿH� \�8��9sz�m;�4Ί�6/M-�"�T<�H��sNbZ��C��و X߄a� ��y~�7���+}��ۖr��Ԩ���Y<-A���˱V�;�s�?�����o�ɂ�MGSx ������N�vњ��2�x��<6�ɲ��G� �oR���g�Eߺu+��ۿ����������gT�{�9�ؘJ�D�qϽ�*���3�ﳘ�s��d�
¦FkM���ݤ�S�rC��X�ކ��u[�A��}�k��ȑ#�ƹ��X�E��P*ѩ���	&C���٦w@N����{�Z)�Z�c�2�MJ�&�3�Ը5�����H�A@CG� �h�6"�"`c���_7`tl��W���>��������^��g/���0�ũN�L�VKT��TՄ
l�.�Ҧ Ш��h��ښxz�Ꙛ��㘪��g�9���FkM�5�{��Ti�
�&H���qxx���U�W1#��1ms�1OU)s�;�cy^�Y#n���X7� ixnh�L�j
��F��w �AAq�KR����_�w-�S�"`�1��c觀��z(�$ӝ3���E�;,���(�őN���v6T���=����L���e�
¦GkM��Z�JeC� w�ڍ]b� �Xh�[/�� e��LN�b([�^�g�[tø�hl�a.@0�4L-f��Lc������,�t(�_����-��ֹ�	�1R�� �f�l���I t��� ˵<�]�Q�d}n�n����WtPi �_�)tt�ovl1�i,�I�� ؠd��n����{=,��NӳcpY��a,��/{��.2�wYH�F�Q��`D@�	}����c˳��c���E�/�\����m���?�1�s�'{� X�~������w�E���'?��p����z��Z� �H:(��Tgz4X����0X��1���$��w/���Rι�4fG}������Zk�G�k���NS���2�:�C�o/ƌn�0Y�[Z��̷��b3�qT�� I�l?8_R:s�7�n�U���lD �3:4���΀�t��u�Nu��p
��1�ti�xؕ(J�7Dk\�5���,	�#:0������ �����F�:;�=����8�ɰ�~���}��qAXUNb�64E@Zn�}����n��V�e���ÔD�`�~ 6����7o.��ȳ�aJ�Tݲ<��{=@�N�Nl��)��Uc+�=0��4���M�� hi�ƃ�)���-+�������3d�0������th�/Ǹ�_���7�"��%�e=12��jhCK4 ,˳��P6��w����iL�� _b��� �*�#t�	�ڑ�L��r�rK��}ێ=�ZB@kM��e�g���8��4�9$	�@�ҁ�w1e~�<���������_��^N�.����N���G��k�ȸTCf� oy3��"t
�u�� n$Q�D�͜�S̐����z� �{{�'�J��8.�s��M5O��G�5����,��W�ָ`\�����Ft`���7 ��q��$l�%?�upg#ߝ�I ��X��[���W�>5]���4~x�ky`� ���be��)؎e/.�D��t���;gp�)L�����H�_V�YI�/-�}�t���5�O}����7�6B ϲ�$G@�y�%�e"��q�Z�{�L� X:0�C�ۀ���7M���������Km�^0��v�R���@�ξ����j��4N���	���Y���� �(�*H�H���N�Lnv�p�)�_A�����d�^����    IDATi�=l�ݯ/�9�M}���J9%��9ێ\���i��/���RնLD \d�0�
8 �'��4;��1�ۮ�^�(��~�k{���L
���7]�֢ .�Q�����j8sSMA�0����
&����S�+���8�0����»�{W�ᶜ?uw��dBV�#�u�n����YE!���?׿�r� ��t`�[������^���j�'�5���t�l�q��w��*c�0�b�ho�x:�LԘ��w�����-��� \�`<q� ��:���ݯv
<;�O}iNh`<mW)��(��R�oY�J
���_v��E�E�C��n�zf���n��9wU����]��;�}y{�Tu�&Q��$u��6:�qK���≑���T#<�~���ӫq�� tD�����fh�ߝ�;�����$��t����8�2��Z�BH,�ϲ�R���뿓q���"�"Ё�x'��Ϲx��F��~m9�E����n����wm�.�<0�R?|��vOVJ�@�1�]�{��r��U#�_�g4If6��  �G�/�Ȋ�R*V���Z���� `�� ��j��&c��^�-���/��5D�Y	7]�[���=_D� ����ҕ�˝y��0
��4h��|���(X�9b��t0��xRe<�RJ��(4/�$����/��� XE:8�_�9��Nk�_��۞���5�~�?@i��_�t3_@�a����4Y���2,��t�Yl)�m����ه���ǣ�l%M���^v����j�m�����P�u/m�t�I�-+�Tl�* �U����M4�W��z��`� ��w�w��'�h�|�1�5�9A��k��vt[V�z�k
��q2>����4��S��h�):.՛S���J5�gUAU�Hs�w^�7" V�%�� �C�*�n�����ݹ�^��(��mL�3���w`� |�6U���ӡ����Q�5Yhy�*^�YŹ�����>��T��T{�im'K7=�hKO���*��B6�P��4�:+(��P[����@�
Ӂ��0�r6��psn��vO��p)�\h/���	��v� �ӡ���\wPE�:���U|���q[Ο�f�i,F ��� �Od�#��¬�ǥ@n���e��?�?�\)׽����G��|����t3i�:Y���4�`�|�	�ne�iz��n�;w�߶+�#�y���(�ӌ���ӽ��p��N?F^���D"�`'s �~�" .6p3���)��q�Z��ر*^����m�l�{p4�6�
�0� ��ae�1�^\�9��&s*�����W^��sn���k)lێ��I�N~�s���>�6�A�pݮM��+�ʣQ<5�$��ֹ���H��B����/�ѭn8D ��(u�>��L���k�ox�ߢk�T�z���������٠~���K�%����� �g���l�k���zū|���	'�9��/�8yeۜ��w���.�_(%�*=+��XT��MUZx%�aLWDa	D � K���f�����(��.	�ߢ{��oL7��N��q��_�t	����)"@ڳ����WaBlm�۲��k�������o}6I�����黾��c�W*X���#�s���-�o}Ԯ�L��s����V�J�%P��^K��>�i�;��w��&?B��O|�B�2@c\r?M��Ȭ Ah�{�v�c���sڶ~a��ʲ��O���?���n06ƱO�3�����g/�m_t>R��T��CS�ˀ�e�'��|��ztc��1�tǵ;ꗊۿ��t��q���o��$>���y��xa6�,^\��f�m�(��>/�{�.t]~9������}�aF>�1&��:�t�w�s�g�'����9@���O� Y��C��4��~��K����u康]���gf
���1�9��	��Qĸ�gN��(��/)�{�U������?D��`���x���}�^���l[]/��s�h�S62����Pn=п��/F�@�з�/`,c��n��e�:�%�"k�Y��4=��m[ߞ�% �qx�s���L�1�Շ�<�ĺ-�[I����ՃlK���Z��FB�y��"��:�. ����}��oCyGo�/z�n�
�|+��a����1�n ���ʶ���w�M(���>��#�\����(���J-z�t�?��4����ϬݝmD ����c�d��v�Ys<{�ڗn���q펆_�Z~xV��@��,�� /%�g��L_i�^�/���SO��2������X���6�I:��j���ɩ�V��ٿ�Q�w�ckswI\Yn�d��t����_�w�7퉷�_,�w�'9�
�m~�ҧ���aC�22^������{f\�e����P�ʗi�<��E���u��o�peY��}�.�=����釣��T�Q�$����G1����6%��|D ,�Ez7��v�G��M�A��
&��{�.�/�����JE��YYdo �H&����|-���*jM��8!78�S,�Ԗ��c����\�3o��jv�Ck���<���q�ӟ"m���}Q�z#�?]�:6߳�1sG>�x������Yg,��>��d:���qW�v�M�����\wyg_���;S� ,�� ��8`N����s*Yk�O?Mmt��g>���<�,���"�e{�Ϳ��_|��;�qL��	�ze�v�b�O�$�~���Ͻ�u��e�۶Sܽ�����C&t�J�Z���5�9�_u�.�g��܇�e!�ʰ�%���@���z��۴���t��G=��&����O��}	�z`���>LXq����b��m�����d��o���od��^���3u���S��Q��m���.���;_D�ͷ���NLp�ӟ"�e��\K��Qq��n���U8]�<������g�߾�������DSS4��z�i�}�ڑ�ĕʊ�m,��+='�v��H8�1��SK]C����!�,�"��Ȕ��E/��ֻ�,�K�|w������|�d+vw%&!�O���% ���C�3Z�����ܼ};���'�o�J������8u���#�GGL��\�Ҿ}t]v ���4��uF>���������?��-�3c���gp��z���6��^r���lA'	:N���p��Q�Y�:MI�5'Nr���r�S�d��o���!��������i��F��!��;d`a\��qk�=v\��Vڠ�}W��#�#���$�{fj�,�s)l9\\����l���U��s�W)���Gߍ7���+)��O~��R	e��4%�LS=|����-��2���S� Ž�������=�8�~���;(��O�FG����z�!������I81N�駱�y
;w�۲;��R��;����mEJ��R���Rk���=�x���#�#�Xd�a�ڇ[��,Gb��ӳ��9���9'@�aJ&?Ĝ�]���E�S-s�����~���К��N|�Ӝ����m�j�K%sJך��Yj�Fi�8A���)?�F�n����c���+|�=���;^@��(��Onx�i.��řo|���[_�2�Z��������ؽ��+����[(�p�\f�y�#�~l�hj
.`M_�y���A�����	������D �?6�"�vι���m�u��N���ڥ�}�gGm����,�&���a�q=&���]����0��KZ�4�>:{��C�l�������-��b���5t_qӏ=Fp��#��oA�	gx�����L~�A,ۦ��[(����w���]_��(8}��#G��)�݋S*�s�5���9L}t�ƩS���7�+,p��vݙ��^�ˁ� ��\r�� K��B/cJsf���Խ�'��г��{�tTC#�n¸:�<�����K��vg��8N�N@���*#�:���f�o}6�=��X�C89ɱ���_P}�iК¾���|3I����q�Ĭk�<ȶW�
���P��.�|�A�B�4y��'>����k=���Z�-/IG���|D �
x!�<����=b�����=��co�I�`*�
H⤰)X���e�iv�2m��Ny���[-X֊��cc���1��oе�2�۶�\��R����}��sc����o�]����&�Ǹ���+�)]v�-/y)�-[��N��!JY(�F9N� �"��}�y�+� �P����<3 鏐0��K��+�reӿ�?p|�k��(�b���,	t0n���t��K�%��VLI��X�z*N�����U�|�&�K�m{E��q����CL?�(N��r]�z}��^9^���/�8}�:t��ҁ�����뮧�s��&)�c��u����=��\C�L������}�B�j��ΪJ��a����\�c�!`����1�9f��z��H��u�ڕ�	xs2zE��K�"�`q�BOI���*�Oض~q>��ٛs~��T�oNk�ju�+L�_�Ĕo����0�� �]�P�M}t�3�F��&ƾ�UF>��ĕ*v>���W���>�4g��͎o�.�y�5t8��ӋF�Õjq��G���w�=~�$M�Ǆ�d�X �g;�6�\���U7�J�������W�x^�Q��[��Ub	��ĳ�f�W)�]7�,���iq:��Hk0�$��������go�=տB^�v�Q���w���k(��K�5�W*L�{/g�.S�<Bq�>z���hb��aSݻ�u�Oa�t�0q߽4N��u]�8v�"8ujV� ���]o�A�w^��\e��o��s�O��w���=�D�6a��+lbD ,������_O&�_��+c�I��X*�(�'=ي�]�ɩx��.1�0�����I.�U���9�� ۦ�8Q=I�Tk�E*2kB�$��GS��������k��{�.�Y!P=r����=v����+�ԏ#C�1no/Qe��e���{���ĶMR�3���͛-Pڻ�]?�Cĵ'>�)�������of�K^j���L?�8 ��!�7ޔ�t����yGGG�z��z�|�����eҏ9�����Vl��Y�%�B��3Ź���&�1�$P�<(L/�w`r� (������Y-�Rn���?g�a�$��������'k�ܝy?鵬�-��ʶ�rb Mi?N���?���R�t� {���|�hr���|�Y��<�q�q���䆷�B��t_y�W\��|�Ph6�`�c�Ŀ~vf��r]���=r�A}�7��BS�8���02e�cD ,���s����-�Γ��n�/�*	<�i|򭵽3AX99�+�6�c<`
�UJ'�\�y��幖E�q�F��W�""�9�$|�R���������\0d[S7�^!����=�S� �/z1N�D8>�����?4D�UW�˭(�!�:��?@i�>�F���gj�#�^{�~��(iq����'��4:7KLGS������ĩBb�*��QF@ǈ h�"m�K��O�xk����&�b�(�vl\�]�ո�p|��oW_��#'Z	L�03�	 	�%���;�+���\.���h����Wl���m;
��ɄMk&W�����S�6^�Uٷt�0q��T��-u��$���������z���<75�N}鋌�[�}�.��u#�^�
�7d��8��/�2���H3T�M�I���g1
��9[1�~=0�~K�5���Z��j}��U4^��h"��I����*L{ϱ5�)AX�X�;���d�[`��@.9�u^�u=�r=�"o�a#I��Yb`$I�wOU�?n��Wr�;r��w5�@�����[���i���ws������(�&�"��q�y�p|Ҕ���C�ͷ�����7h�<��۸J��r�\���F�Y�ϣ9��wGY��nܯ֚��j}���G �J�_�tP[S�b6�O��	������~�J�e���"�<�ǲ��e"��\k:��l��{����5�_��>ຫ��Ԛpl�S_���޲���i�:E��'"4��s�Vg�fb�B�ם�/&Ӝ��5�3%q�Ng��5�E����]}���L�e�gs#y6�����n�瀟��Mt����W���ŵ,���p>��~X�<����$���ӥ�����eV��](�vwMN�,ғ `,I��%�x �e �3�	�ɹ�?�=ܵf֨��WJmH#�5��E�����s��5�%A8/�XeL���y�h��i϶Wu�X����r]�|?v��`�	�w���H�V�t���ʲP�CE���֪N���I�޹ϑ����a����U�cA�rl{��pc)�8!�/˶�ec���u��(gW�՘jA�0t`��5���-㟳/n�ηmg0��ʞ�]�8�$|�R�~�̤;��k��LÀ�V����--�8�S��ٿ�#H�в�4�0�GY�\9�[r�F�A_�pS�������m�z  lǪg��^���b��~¥�������4�����o�X��庪��i+$p4I�_���㩵�'���cT&78���$�c�;�9r_�͉�`��w!���F� ��٘�R,WQ�/��g�0"MS��<�3�N�
Zk� "�ڻ�,k���@)��1����i���� �����9<,��o�lζ�>�Oǃ���f$I�ߙ���]w�v������NL0�ջ��:︃��0�>@��q*O<A}t�$Դ�g^6	|�b���� �9&�����²����$Nh�.�'��A۸�R
em��qs@P֭q9p�Zݏ t��?�1���|����{}#�yֻ�*�������E�h��=����)ӇQ��2v��9�o�]ox���¨�z���=
|���%�x g�,�p\[�r��o�4j����ث�n�F�1/�RjC{  l�jpn�� �L�KȄ@a��ZW��!����;��mg ��7�Z�&���J��L��ݙ���RAAY��HK�5kz��T�S*��:�=Vg=�0������������l�)��~�q�)��������y!����*`_��em{v.M�YK �bt��>�묘�Z�nYa�`�����/ ���xN��0	>��nXb�[�����	cPr�u��_��W2���bfd�
�L@].�m[ߙ��˪t2�P'	���##X��](�F1ONN��2O=�0�]��F��X�54�sxEW�I�+f��$IhTx9�w/��N�a#45�sK�,5�`Yֆ ���};��GO:���~�v��:a`a���/L5�L�ߢ�$�㰫��R�Z[�\�0m��h�h��?o�'�n��%�\p���ݥǨ�QDz�, �	��h��6��[���M����1�3)��mŴ2�۬�4M	�I��������֚$N��8�_�?s/�"�4��T��ݼ{3uL�vLk�Y�I֊%�ڳ0���Ɵ�\.�:��V�J�*EI�)���RA��KS�,s�)@����m�{a�O�-{궜�,kQÓQ<��z�#<	�3@8D ,LS��Z�ZY*]��^�GǸ���ض���\kM��3��q/�o1/�VF$qB�X����=��5���Eo���H���Xb�=�}2C/����D)�kYXZ�j�R
[)KA�|���n�)�Q �5�`4Iԇ*5�~�j'//�je˪�XVp�����f�swdO�)�����-,�����;�s��1t��)>���n�9�\ Z�&��J���ஔ�Uj�I�R
/��弋*��*��N<r�o>���.�f×a	�����5�g5Z��J)��KZ{X�5Q����g��\$�3�	/�$�����L���N^Q�Ul{�lY�h����d���`<��'\ " fE|�i���)1�9�7/��՞�X����V�C˓�z�E�Z��S��`�\������$ ��1�}_L3D�*��s�x#������X��$� �y��#0kI��LW�@s�ϒ��9,x�҈ X��������+8�g���p�>���N�E]L���b���^TC#m���zf�+�E����r`f�O�Y֪��_Oh�I��4�h��7�@�u����Z{�7f�0�rs»}�    IDAT����/,�u�����3�*MҎ[�m���4M-3\m���aL�� M�R��@{0�/N�EA�+���i�����j�Y/�f�@��4☨C�?�D�6�[����~�jN�}K����Ӻ�sD ,L <D&�4MҎ=&��b@�}���m�xx�T'4�� "h(W52�N3!�&�%x&O���j߶/y��2���ԓ� M���/�z�x��~���U|�s���o�i�0)�M2��'��XF�95����{Y��b��4%
�{�Z	��MK�d��/y�_��^Z-�a��0{O�X��e�J\����$4��t	Z묘��g�//to���d�����i.�ꙚJ��Z��an̿�0�K;㛥���E�zހ#�w�=�z� ���ڍj.9� i}S�"I�.������$�#IZ����TeC)����ʪ��&A��>��/ �O���`�I��+!L�th��&QBF����(&If' &q��ZY�Dp+��	K�p�;&g�Hk&�@MG�����hP�r�7���E2� 
�Lu@
|
3���=
�G��|�*�� k�-�d�>I�eO%LӔ��;�gO�Zk�Fж�J��)a0�L��4+`cb���|�fMz�5a���EI���3��4�1�������(�֏H�0&\8��.��/�������ԩ�֩&l�Dќ���u��4j3�h7�5Q-~P����n�@XL��3�^��ah��׽`��k�27��e�/�fWO;S�bz��C�}WN����|�>Of�D�L�J�t�-�84Ã�
�iJ�������8�^�ԃ)l��,x��+��?�͹9���8��	L��̩?Қ� ���H��4,�-绘1�v��MGQV��xY�ү0" :�4f��LI��S�6����&��*5��:�Z��������:ac����O����yZ����&������ fB� �	K|^���?�7L��΅N7n��릁M+�/LS�ql����D}&���
�	�${r��0D �a��><�z�z����u��ku�k����j�����ؔ�N���Z�F��XVn@��0l��k��<	J�����P֌>�#��b��5��u��:�h�a��i�����?\�:��EA�I���뇐������E�e�ȤU���;�89�2������'�� � �LDA.����(
� �D	x,� �^��	AI��CW]\�c��vEA@�$�3�L�]����t�T��5�k2��_�yA�tWUO�[������S�P�ɖ	�=^.���<~��l6;��D���B۱����O�({����� ������R��>�R>����v��4�O�ی�V�^�����}t���)2�����3�|zW�yv�;��|���x��a���	��H�i2�N����C���u����	�m�qMV�;��w|�SC�ҹ�%$,p,���B��Qwow,���ZH�n8��Ow s l�T�fZ���]�~dw'�3±ޘc�a֢�Ɖ8�w����l��[MM�Y:۔;�e[c��J-��P�`<��gu:�RGT�W�r�UȎ�5�� �5�C��cY{|r`0ƿ���j!b�n*�!���*������AC ��&�1�( �8��b�z��rӮ1�ٓ���l/�x�\��~�?ů����Ui>Ej�y� �k�*�`���3��f2�h�����=���q���T��o�	�({� �����"Ө��.f�S�8���;��Y]�<;l�Nx��>�KL�	@sG��k�N�@U�+J�a����!=N!w��c���Nز��p�X�ږ���mGB�]�Ct�gs|�U��8�]�d8`���w�pk�Rk���9,�cV��bn@B� �B:ՍU�MF��,c�x�m{�%I��ea0��3n�e�������Ĝ�f�q� � ��*z�]����)`H�����G�B�X�K�;�L1j���Z��*�ذe�c�kYV&j۶20@����v��@:�v<�؀6���`�H"���G oB���;�X_܊��ޢ�B7���Cf�Hs~=���X��?ȬE3����������vL��^�^�2U�!7�)�:�T��`>��="�G ���mY)ט�=��:%��/ 7R��+{ U�1�'����6�f�u�ˑ���}&��v>��X�d�ey�v��f\�D�}V�`<��f(S�(S��}H��#�.Odl��H�k�������ÖeZ�a��q܄���d�=�mYDl;�[����EJ'K7c���G@�(@�S���x%p.�
`!��<`��g���ȉ�\��! ̮�j�Bؓ����|�<��ϩ({���$�X��	X�l �r���V�<E9ƶ��gLS�:6�w��mU��� 52��_�ҕm�����"�X�@�x�����O[��~c�}��/�y����e<��{U�xY�����P�A�1<Q�-�2���'��y4��FD�BdơH����`����rh[��p�L���cYDcLzg2*����ۣ���1���q�1A! "6�~.��(��;��� ����G(4��+�_p^c��.!5���#�4a���U�=�$�A<�{?Ș,��A���"��%��\x��:���၈m�m����K���~@���������C�$��$�������w!���c9�AH�B��<?`f/�-��x����A��8�349H9�ك��,�%���	7^���VN�����!���t,��f2A���]��s�_5�{ ��\��x] ������&�^���Y�����s}�هu�IJ{����4�1�.䆡(<ņm7�i$�h�]�L�R���,r9C~x lY�\Aֶ��٬1m�9qȲF ����<c"I��f2�L���3������7T �!�_�=,�E�b
ر��53�y���gX��5�E0��\4�X�����"�n4=�2�׷��	�@��� ߇���&�LJ}�'y����_��(9I@AAA���_V8F32ƴN���H��rרS��#�h?0��m#n�o ������$�~�b�����G�ey�m����>A1a<c���3N��~����"��l*u>��*��$A�,��<$i��}�A4��E$�=��K��A���B���"�@�d�IΝ�����^:{_�����2�ޘ7��_�8������{H��j�ʣ�H��J2	1A����G���w��\�՗Z�Y�t��'�o��sϗE���C����>
�-p<9���D@b0��|zW������$��tAl�C�a�a�����G�� �R�I��d������D�ZU1��)]�g�Q�oH���J�tM�[T LA�,h?�5�e�/���f�����`�xa0���&���C�:Qr<2ai�m�!�('V�ܱz��#1�_���W�8�'t���� ��TX�-�������A����p��b�?�������{B�89
X��."��(Θ����"�le��pՋ�ﭢ��@���* �(q3�F$��0���&ӱ����;��}�ϋ�Ƃn�2��F&_�狀V�;�F�`&�~g�:�е�Q0E��xd����.�pS����0�3ar� ��loq������_���2q���5<uP0���hm�� 2�x6���َ���`�X���Lߦ~�h�����o�wUQeϡ`�S�r���N�D�osG�7k�,�v�l�F=����l�7V����2����s���(��wPp P��n>�V�*dRX�^߾g���zk��b}��I\d8�瑉��J'�������EEQ�}�
�����$�� U����܏��?M�n]�F[Q�@E��y�Hׯ��@�*�	f�V��#	;��D�;��(.* @& ldf��������A� !%x;�����i�S��(���� 8@�DY�����F�b�h��b�A���(�tA�ξ���(��A�4ao��(��L/T L3���(��D�4g��@���(� ��(�R���_�(��(�tC��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J�@QEQ� ��(�R�� PEQ�:D��(���!* EQ�Q�(��(u�
 EQE�CT (��(J���(��L,���cc���(>��AEQ�=͞0��P��gP�(������/Fm��@QE�4�����k�P�(��L��0��t���= �����eQ6yT (��(53	�o#�P��幟n��2& "<D���P�j�&�
 EQ�*4�b�_��,�p�_�=�w�j��j/V{61T (��(��� ��s�󀣁��0��Rx�����^�6�vT (��(%���o���q�G+��tvu��/��uB!ϲl๮�����l����x��V��k��@QEG�ƿ	8�8I�+�`����;���d[g̈Ϟ� ���f6657�.�=������������oo}~��+� �#�}`�҅�m��
 EQ������X�d�����ɥ�9�;G�9�斶��\��?�o}���M=�`X�R)P�m�Q�(�����G���O ' ��<�]��7�՝=�Ы�9��������<�d&�h<I<���<�!���FZq��<���n��1  ������R����+�
 EQ�����	�8�@b_gW�w��o����R�.=���A<cH����0��u�Crlڛ���1�H(ĳ��y��}SQn@)�"�����ΕF��(�R��������H����]�>���/i�tcYףd�]�#���s�,f47�pN�C����p����=�Ʌ������j�V
Q�(�R��`�O>��@�����{�͟O}�)���1ƐLg��7�P<Q�A�,��f�3of;�m3<00��)\$��W����jנ��@Q���b���r��/%��_ؽ$}í�/YZ���z#���I����p��йshmj��,���F����HO�?;+Om�* EQ�*ƿ�I���?���m�_zy�܋�n5657V;G&�kh�ޡa��7���z�U#/>�l��xa�aɫo��!��-M2w6!G�eD@�I܄T�D힠@Q��b�[�UH̿����ۼ���'jq�d�Y��00�+�5kW�0E��yn��C�C�͢ysi�
"�����j� ��(uF����{ ������>��_�-=��ֲ��ɺl��g`4V`p��,b�� -f�m��`N{+�t\�3Ͽ�~�=�y�{6K����w���@Q���b���k�?�r��%�O�~W�s��Y�>�籽�������k.'���g�)�\�Fʈ��h��:ʇ ����c`�Ա=�I����QP��KEQ��@�߀���������v?��{�cñ}�#��A�Ƞ��!�{`�������/�d��ҙ�77F#��_u�=tvu�'��?��VJ�@Q��b��HK�O��'v/�|�_����ઙ�>Y�e������p����|x�\�~��Y�z�p=C<UXA��|��k�[E"�xD\tP�	�8�v� PE���P��:d��<��ήn��w�[�c�A5c���T��y߈xq�����ǀ��k �l�֮^�cH	�H(�]�يD@x��(hY�� PE������	�����v?��;G�,�������3��]wE�h�ϟoã%a��F� l���cHf2a۶���o���'�����,��
 EQ����H���3���ߺ.V��o)��̸���~����!�o��n�[w�n2�򲮛�eY���fla��`��"���XXϨ PE��X�Um��|������j��0�Rc����\�	`R�W��Ì��t:c%�C�P�\}��A��t�,��:E��(�4���EH���89-�7>q�1��T�_L&�2���]����]$���v�U�|� ������/mN� �2 $�x�=J ��(ӈ��<$��-j���Z;��b$� ���eS�o_���?;&pH�� ����X<�zc^�`)`1+׬��ہ�&p�i�
 EQ�i@.����0�+>r}�ĳϋV|g�1���}w�������l���a'���pX�ul߾#�jh�Ԝ�B+
(�;Q��
u����K�oj\���Ɉ�7�?��o˜|����\�#�ΐH�Ig�����`�6�0M��pǶ��z^A�_��� ���\7>��� �V�ڲ��z�Yع  Ǒk��>`�0 �Q���T0���M��ROL`M:��HC��Ȕ?@&���WzƘp"��wh��x�t6�1��,9�ȶi�F���J[sN.?��t�H  �� 6Ɣ�L�� x#ҭ+�����,�a�g�x�W�* �qLec_�w�r�2��9��XJ �����~�_��ihljM$��;@"��ҵ�W�[6�8�����1�HO�����������(����3�wہ$9�e��˜���\˴As �<5�E���m"?�	8��i����/�>,��{�=6s��֑D��v�O��o��ؖM=�;��姲��+�~�g�e�>2��c����I�����*z�2H% ��֤�׮^tK��(P�P��aco#Y����P�!��!��e��vxp5��G��,���Ĺo��445�Œ)6��#��������y�к������%;C̛�NG[K~`ςE��< ;w��S!Pì����&y`0��U"l�*���PPg���G��Av���H����e�ޟ��ͣ�P���	�x-R��M��������n�v�ѭ�1�$�����Tf���&�׮oY-��=�"��GFij����D�q��]_Y�g�|���Ŀ�;�����W�ll$�\�ch4^K��C��'x�i�
�:a7n>!d� 7�������n�Q��*~p�˹x.��P�{���q�6D�������B���_?�Mo1-�3Z=�c(�`KoA�~�q�1${?�;~����<v�������h�t|4���	4�|���q����l ch�q��{���9Xڦ�]��el#2
�)�Y���,�7���8@+�4t�*���CvQ���/G
x�����V�
X��!Ho�E��-�f;��Y�����q�ήns���H���ק�q���10ck� ��l��]wE�Ȩ��_�܁����h����5����m,�W�    IDAT�m[d]�g��l���
���w/��w� ������߹?wi�54��^�7-?��_����\��z�_�`�2	�o!��c�S�9�/Gv���ﱀ������l�2Y��z�l��J,�2��LjEy���� �MM�Å=;n���x�)�fA�{)S�֠��_���=8�UJ��W�-��/��Y��ن_:�3�[z���qݕ��=oO ?@\��0�g�(�\������2����(!��eG}߿���G�m�y,$txp�M���.J�ڐ1�� ���+��i��x�`���
��Z��z6���i�Y�'#F��Q�8a`�m�Ķ�X;=��C���ˍ��y�tt�?\rif�o���C��䬀�y<��|���y���� �N3���#�-�SN�O$
��t�e�'�~��#	F����;�L����tdw{��߭��ήnw�����=����݇��<���Q���	�A��7������$������yf��p�܎| c�=���/���"�`����� O B�C���H>���72�?���L<�	UZ�E���}b�ǡ��* �0������Ƒ@�V�i��9)ⴐ��0��n8L$�$�-
�]�N��MPf,g5�l���� ����q]������0'�p7|��<���u�_��z;�&$�8�~���M��xb�W��R���ۜq��&�ؘ�3�s����lmljn,~��ο��������t�]eN9��?���aa���շܝ��P����-�*�y�ơ����-���}NQ�H\~4��"��6�� �]���[��2�S�s]���� %���^�!�iB��&b�߀(�C�pXdۜv8-☐Cw8D���H��}`VǤ�������u�{��dx���̿��yfе�g>�~�ej�����]���/r�ZZ�M���p8�R��m�6�H�khlt]�lF�̙~�8�b�b�����ݵWd7o���g����Q�����������="뮻2y�-w5 d]�x2=N ,�Z�~Ѫ�,=���7>uC��1��O4�Q�ĝ]���5w��Dm��B�p�Y�b@�4��B������|��g�C��!�IQ:,�uǌ~�l�6��&' �۸���!�A�`o/����SOq�+^�1& BH�BQ!F���ήno��+'�}��K�k!ЮwwȺ.;�I�v����~���4R'_	�2�����l�y�a�uW�����1�d�|�ߣO>�韾s��������@˯�+P)0�ήno��wg��|���z��W��*���R\�Nƿx�.$c�8Ķ�����7D$��t�҄B�c"ap 6m�W�8��`hx8�Jt�h$�������t:�2��.e�ӂd�����E�9����.Cl���m�=Ib�4�	Y"9�7���������e����x����="kW�pW�z�3��m��׽C���������'>:u�Y���E"������N>-2�Y-��D� ؈��B���H����+�� ���2$���܍��ŝ��rV:9�Z���L�mA0��Ã;;	�B�s;�m�L&S�Z��0����X��> �2�����{�GoH�t���x�^a$���<�]{E6��7� �L��Ȏ��v�F�\BΎl��㬽�
��߼ǅ9���cHg�$RҙY��j�h;����i�F��C�}-��d7��c��`�m�� ���ƛ��Ú7��+�� ����������m�q���I�6�����+��<ؾMrʶ�.���>��C�o�=�$��qR��C��AA�xj��(�x���9o�8�3�{�d:�1����v���H��d،��%�R�F�ֻ��\/*x��y���O��<3,XؖEȱinh`fk3�aK�����OgW�Ʌ��H�ϐ�G�/HU�k�1t R��7!���K� �l��җ�|��ӣۮ��##��0�����_`�̙@�ݍ���+�w�{���A�-�DeB������K�V�Io�!�u��Ү>6n�A��l��G���TZ�cU���А�v���S�H���T1�Ƙj�		����-z�1��x�-�bг��gLnܰ���<R�,�#�lڶ�g�l�-��r�z���;��x�N���>ċ�J�$P3��`z����6� �l��{�������!=9C]���0	��SO�����Gn��G�t:�1�q������$;{{y�g��e��Q�@Q� 6��3���]������M$q��s,�ql��t�����@�)=z#�Y��;�����w��6�^��l�p8K�3a:�e��p~�@�F���۬\����z�2(C�sa(�ފ�ؕk�[kW�0�DC;w��!��ކ�_"���ThS<�<* 0*��0�fD�/�<j�2���ˎ8BdK+}��?'��W��ٰ����Ͽ�b��G�R�T�!A���m�����^x�%��<�7�#;����gߺn]���<�g>���u
�*�-�/�{ig�2^:9�@��Ѹ���b͝�FS42nl�WXZk��D3U���h������]���������h�XR����\^p�-�z����ʂE�Yu�=eOT���wa���p�R��H���Fr.���>�<e���Pp Q��jd���?qԲe��{��,^�h,���1�B{;����dl�|��̓C����/0��X�D"�H$B���߼�`��R,����2嘬��C:�eKoI��[�,Zl�\���X�t��Y��Zi��������.X�8����[?�t�+k�j���^��������5f\���ش�"o��][�ߘ���]v���gCx���<	�_�+���:{3�%࿘�UF�	� ���$��Mn��l��Νwf�-]:^��?
�����m,�8d�Q3��F���wvZ_x�������L^� ��~MQ��>+���	Zui����~�B�/[|��v��o��*�(�ǧ~� �e����ʬ�B���h���[����(8�=�����d>�(��1" ����֛�]hGss<F�	6nۙc��)�������ew�E�Hc�4�>9����Ebcz7<�~��_�K�m�a�p72�����>���
�?\�L��?�|���?����w�#��x�E6&���hk���㡾>��Y�l��V�Ԗ>8$�q,���dVPq�}���Cݡ(�E��t:��ox4�0����~Y��c���T&�־AFI�w̢�!BcC��ԏ�׮^A�p,�(|���46�z��A� _}��Vks��#dr	%H ��ފ����0�0��R�?�&z��|/BgW��r�����H(��9����,
y̱������{M�R�B�|��'�IS >'�!�p�Z��u_��{�QGUVԯ<AB���i���g:ˣ��{����N�P�n� �ܥШD����ރ,��.�!dB�v��+Em����g�!��QbxN��;�"ᾠ��P,A&����t���fo�d�m���[H���%H��-5|ɜ�,2 �V�!۶ۚ��͊)�[�����p/�z�TE�����cD�����h�Z��J[6�8�B!ǡ�!��h�ޡb�Ls����o���;�-~���5�m8T  T��w#�����W_�x��� hi�sχ�?�xc�~��rs<����&�Ev��H�������C�H��^���T��2k��[@gW7�9d������x�֮^쌝� ܅�3HO�K�חj�O����ς�3��B$3V�vO����1��6U������cV�z�=���jil(�W���0f\ĳ�7d�@'�O#S	�#���%�8�V���ʑr ד��r�\�޾i��"&ldv�BT (��
ƿ���B�FqԲe�mo~�K���uT��ǄZ���5�J��t�u�4[�g7����Ma��|��?ߏܠ���|����*	s��2 g\p�ilj�Ϸ���ox�`R_��y�ρ�"u��&���;��z��������ñ�-l��3��k��E�|3����-����� ލ��-���ʯ���̜��jm&RT
�o�H�1R���~j�EBW#I��"�(��[D�Uj�p �����t%�����o϶��ՔL�̳Ϧ/^���g����Qc�q=F���)�)k��w�+�^F�����![�0������T&���_��1�\��X���[��H����%X8{�M��d�{��w��`$p��_ƚY@+���O�܃7^}Mf��E�H8D�q��-R�m�ǈ"]J�D��$H�>�n5�[wݕI
�51�m�D��I3�vr#9޷j������&���_uU����� �g]��q�� ʅ��j���A��~�H�]~�msk[�@�["�&[bv�^$w��$�~	1���l�֮^Q���f�z.�f���f��Ɩv.$l����O��av/ɜ���Ɔ�����O�=���^<Y��5� 0� �pB����C��{H��t�����T����d�Z���;̼��#��U��lz���^�7��B�	܊x��>0�~��=�(���f;� oBb�6�a:���
���L� S~���E�1���|x���.���ij��9g��˸r�zk���a�����6W]c���������7c�<�d:M2U( ��˙���M�*$���y*��+27-?�8o�C���z �)�\��7w�eqY4�-��~�!�/{9,[�,���re9���.�,0� .�ß`r�yy� +ӕ	6��\�$�������Լ�L�s��ַCd����*�z_&��Y�ö,Z8t�v38#��<yƱ`�b�|�[LSKK�ĳ��c��t��D�X2E*�&����Eb��~_�3�XH_�C�0��!9	�����v�<�$���`xH~�/��d'/� 8�8xu�ˢa>��Dˋ/Ȣ}�i��o������������?����SO�j� ��`��ׄy�����oE<t�E��6��Awvu{'��<MQI`��7��D	�\���x�e�	��1�Y����M$Hg�����x�gy�kg�	'�x�mY,X�xƌٳ[���e\�X2�H<I<�o��U�D�]�����H)�;)?��FD�q���($aQ�z��@�]���[��������	$�i"H��� S�27�0p&�~�c�2���{�4������_��ֻuݺ��m�!��u��|���� � +�d�9&���j�x�`[XV��Z�kF��*�-��eS����+�~�_�9m����z����k<;���c�����|��H"I2��f?^����k�;E�NA�����#}�/����S�4�]���[�v���VT�7ތL	��=.� �o�@��H����n6K���q����ؘ/�D���*My��+��$����u�v��n1E�Յ�Kҟ�Ɲ�ή�q�d��n��?��Nr�@7o�2�,�"�8�����G�&���	FIR�Yϫxo�|�i !�@[�R^8��/Dv��K,�h�����V�!�\����?�?!I�U�N�{�
�)H����$-Zhۼ%.\-���D�7��0����H�}T0���K�(՘���F2�ߊ��h��]���K/O�w�;hhl*i��1���b�-DcL��5H��o�]#��2Ԉ��Of2��$�i\�+[G�0H}9/D��,�^��ܳ����@ċ�{�}%�0�PCan�p�w _��L��v_Tp�0�)�^qx���vlW��6���$����T�l�n_rE)�$#p�|v1b��xgW�9�m��N>y������ 8�H�[s�2=�+��,���иY	��~P�Z`$�d0#�L��܊�s��?��t��E�����+��:�շ�	t%��QHQ���+�$�� I��Qe42L�{�
��c��:,˺�!<�Vb�����f2�w����
K2]��R�$��N@v�� 	h���^�p�9�EG,k��A�d]�F�&��޷_sy�%q�O��d�m���&㙦�H��x��/�|��qb�$�[�}�D]xI��4��*�iP��5��
�MgWw�����*�~���}�J���=Q�����[0獑�pj[�nܺ��%A'������O�/��L�җ�$����Rd�,Z��^�=���K�>��@IZ%��K<�ʷ ^�z������!��q�M�D�_y`�ϝ�m��1�t&�`,��h�d:=�D�@����6�H���?����5w�&wn�.�v�����u����V��*  gβ,��h�H;cY�"��`&��C��%�n�×]Q|*�-�}�J���鈛��qμ�-�ѧ��8��Z4�����Qd���vM��Q��.��]����MvΰcHe���%��Nh��]��-j4�!�nD����%Ҡ�`�}�G�ZX��m}�k4E�$� �$ѯ�4�z�� �B��)9��e'���%�Ȇ�ܷ��/�w�״mi�({ ���EϦD����ۜ��K2G�|jjɑ�hE��%�!�ɒq],�"
rl,�"�8�4FM$q=��wխ���`��դ��T"�@<ˎ>&a�v�����?2J*��i0N��t�d�)��Ar��G|�I���~2��RUp���Rt����`����-Gô���1�?����CJ]JRo_zE)�_�~'���:����/�4��s���[xh[&����H��d�\;��R�,p�����@�5�-Ǳ�H�n�Fioi��!J{s�L����R�q� ����7����8���Cg_xQvɑ�h�?J�pu�_�����g��!�����" �c7\��R�3�7���G�(I=�U L*�$N�c[�I5����#�$Y�㒉�>��R�v�{�"ˏ���=z�Y����:��t�K��M$ɸ�\��؁�5���+��p�\M<�t��X��h��m��io�x���Qn��C��z�| � Z����k?�8E���^sfb8�h�10D,���֋�Y
�$&��}�#%t�ʼ�E��Tϻ'�]{��FZ�~i�[�&W��A Sx=��ٲh�q��:?���%������(���W0��,Y��׾����6č��c`���2ez���/P�[6�X~�~�3�&�$Riڛ����D2�!�L�r�z�h'�E��nG��n�!MslѲ�����-l}aGo�I� �ס��@����-H��Ȏ՛椨���)*!�#B�_�kT�T Lm!�"!�
��N����C_��O/2�{���W� !1 .^���w�7-m�m���m���L�qn�b�nr?6���7�q=���Q��43[[Hg�d�.~�|Q��(�<�܇X�h1W������?Xu�v����\�~E��w1�Aa;!Q�r���Ao���H���L�J�7���t�B����2������2� <�H�3&�<��.VQpʬ��չ�=����b(FG��3��_sy�:w�$�mD��܃�ADG� �J�?<�6"��}٪����]�E�Yu�=��K��Zkc���A�(\\���?����L�S��ȋ�I�v�
77����op7r��&U���C= S�C�/t��l�,�T �����6�38Đ�������t(J3��64d���d]Fb��[Q<��g�?#Mf���G�F^�!�|k˦;?�/G"�!�J�9{;�����^����r6��� -q�&O�L�yO1��J���-�>7Z�Xz�+D�~�B����+�9�	c����0MM�n`�����9ۊR���f�&��@2�!��?,e��HÞ{�7z�����D�o 3�-�z�b0O0���C��f��0���c�?�e��	�6���_5"a�=�?�$����U�D�a��D�k�#�|5�o� ��4 g�L|    IDATQ`���h�ʀ�\����)��	7���4��>�fE9PiF�v�~��ږo�uݼ�D���[�ĳjM{~���/RFx�j���s�3�֦Fv�H�+
�Oq�"�eY`A2��C��5hX��"�� |CZa�҂�Rx-9Q����6�������� ��{��/x��x4`jr8�~ԚeY�vvVp�{D""��Ï�/|)��]�R@'��@	�ˎ?!�`[6�L�q��q��ұ/�Ԥ_�sR�	H�R$�i�fFK]���y��3��֦��Q��ZhonbN{�l7�p���1�+��3�Ͼ�x��;� ��#�7$�e��˧(v�G�~`52}�V���T �G*,�7����`A�ؽ�2�7�-xz�@��냶 �*� )�2� ���ś5w^����J��^w�0��_H�ۇ�\�Z��5�n����H��A�{D8bFK3�����q��8���3[b}�g��~�ss���G<^��wEV�YoD @b`�f�����ˑ�;����(VI!"�v��EzTQh�_mh`��\J�y��Ö�x����W�L�֞e�_cc�������*ʁ�M �_,�Îm,�
������������*{gsφ(��J���3��z�t�X"�s{�q��7�7q����k;��K��-E��@0�>i�ӄ$.�I\��O �u�TI\�z�	���������F�(�%1�C���P����+�+��ڴ�\��p�0��pj��>��'�lF�T�s�(
#�d=p��H�c��m3f6�닷���O9�e��#9\�'�:�+{�T.���1Ɛɺ��l��gÖ�lڶ�����{�G�޿�l�oZ~*7-?�x�pIr����zp�~j�n؆�=�I9R�
���H�/O����`?Q��� �F�3sԲe�w�fρw����_�2�x3\�
�:N8��לa>�qyT��yH��c�N��DQƱ�)���O���|-�eY�h�}�-w��\�� �mu[e�� ြ�۲���\�c$�`K� =[��i�.vO�e|�e�#lC�}���>�����ʺ��V�r�z;�c�iCD��ŔOⳀ��aD�n��(_D<ON�M��<�Zt#�Hx�UW�x�"��45Aw���$����0�y�X����@d?p������Gfe��kז��Z��C!�����f7;��?㬐eYc�	~Y��y.��26n�Y6󿨃�_��<��H�ÑN�m��gCd��C+׬w�2�����H�����\t��D-q��(��\
5�{ S��o�� �HJ��6���i` �����-d���7#]4�R���7�$2:4T�ڏF�46D�"i!ɺ�Cv��QF�a.�w<��\&�_��y	%�	�?E��<���e���DƖM=v�q)J��0p\�x�.jR��ޓ��g��~���Q�Q��9��^5����U艧�~�Hc�Zf�+�2�HV> ��={���a ǶionĲ,V�Y�������;�D:���8�2�]�.�����0'����Tb����?y�@��g����Yؽ�ڐ l�±m�lm���;� �:�$�Y ���;;+��ܺ}{z�w��~Y굺x�"�/�����.�hon&�������Ee�.Dv˵0XA�\n�-G�D9�#�!Mt\�M@~AM�ĝ]���<�շ�-���3�!�ƶ-2�	W�s�k�!�}Lw�Rd�7 �p�j���x�
��}W����2})�O#ɳ+�M���ν���hCc@4bv[+[���a��Vn�.H7�+���\B���t͇��S^	bH�J�#��#]�(Q5�QK&���mےC{���j�z���c�05hAe�~����|��D2��ہ�S�I�*hE��?��6o�����[�Ŭ�f�4�qv�p4���J�\\K �o�}��>np�'��x؍���9DB!B�F�(g]W:V?L:���#T �,��H�N$����O��o��K��;��RN4��EQ
��������3�/9�;f��ԄŸ�qi�u�*���[���@���3�@R�_+�!^����6ĵ��H(Dc4BS4J4ƶ,��G:�-��P���}Tg({ ��2��&d�o����V�t8N�?=
O>R����v���gH�LEQ�P�+�E:h��~�������D�a:��O ����$ϵ�����R�� !���������
tT{Q�~j�8�M$��!JkS#M�(�e��dI�R$3��7aoc���C<�&�Q��A���0�����8��-���؇�+a�{�7����2o���?���o�<�F�ơ�E��������~�Ɔ��c��y_�lmf嚻�"����ނ�����䖋�ߴ������hD��'�Ҋ��!��oil`Vk3��MD�!��,��$��$�L�z\�,E��~dP�V0�C4	pQ�ȩb���R���_��_s�����������{����H�*gE�}���#39N�-�z���������?ǎ<��f���P��g�	���a��&2�~�WgW�{횻<�!'�),�+j�S a-��l�#��
@<�����D�!��0�m�u]����=��Xw��-�z|χ�x^�	ʾA= ���tu��a�� �<�������v��pȯ7�E���A��+Jy*���"m~�#0���>���Gɤҙ�{ÎC��Y�J� +׬��j�g"F6�]�}X����ڑh�����+^~�RR�R��
G }6����w�&�d�q�'�58L��(�d*�گ�&�?���� ��%� ��
���	���'��'?�\rc��}�j��!�����VQ����? <�{,�>z�g�yaG/C�8���3���i���q&����|��Ͼw���Pڍ&Ӆ����O�� ����:y�3�H7��He25%�M�������ߗz�nb�.* �m�;ȵ=�#8��?b����,h-�m��E�e��͜U�IP�����=H�_�P�{�������ش}�1B�M��Y�55b[+o��`�^gW���ֻi�;?���q;�ۯ��"㟏��ʃ��a�=<�k�?�e�]s��+RE�)����_M`�h�^���������SN��G?�C!�3�I�Ȏ��K�a��^$ai\?MUΊ��xHg͕�x�S�����
�r�zk$� �H��0����f�`8g(��=k�[��,۲,��go��^Q���%�E�V��@gW7[6����ۻ���:���{g&I��	m�-UJ
E�9
ŵ�PP`�hK%���U�u�Yك����R����tAyT����
��V	m�K�R-4}H����;��d2s�f����:�Sfzg2��{�����~߯�#n%�>�#�Z�`����Fp�?	܃U)l-�]���ї\>E�pP�Λq�%b^��m����Y�k���dj�g���- ��U$����j�/>�4'M�����Ce"��A{�d�B��3�T�W�� 7�7
��G���Z/��ƹ�_׈u}[෯����/��;R��R�3�',}ц�J�/���V~��s�K�����K�����ǣ�O��i�.�ʀ�H	EV��܀5�9�#��?Y:�C���ہ�
vmh&x�,�x�x̥"���uGj��c�tz+%��J�$��Xa�����3�-�&�uGB�������`�ش�ΞT��(�.(�����ݝsyq���Jػ�L�Ϸ��L���}���;�I����Y���#砼Q�l��ρ\��I��X&M���x�}��55����ޑ��W_ͮ�Ɨ��2X�������	 �8�آm����Ӯ���o��g���.�(q6��ª�=�����=]��f ʤ�I�{�s�� n>�=T�� �8�iO�.�x[�$"���L��-�} �"�e���)�f�/�t����+��ٵk��T徎�Y���1�o��U�-H�45��İ��G��&M�^�	P^=��4�s�OX߄M��{�*�B�0�~��X����~����up50�>3�X�v��|�^H��'�$e'�3��'"�D����9l��t2X2����?���#6�����[����T���E��jɂt���8]KT�ǚ&��E{���2(r�88p�pn;���C�gGU���dK�ˤ+t�N ��W"	x[�~Y��� x6B.���J/T��U0��ݦ��M��1!��F����f&���[�C	���>�$�%S�frK�s�;�qx��R)26ն�X��*"E��v��VމлY�IӦg�67��,�:�+��	��0A`�u�-M��Z6�[���2��W�<*�ϊ��f�G�M�k}�g�(����w�<i�jf���H�9�6a��:���x~�i�n� Uak �	����f��4m:�r����s2X����b�^_y��k� S00*����U ��L0����/��b1�O�y)�# � ���Ia��/�YN76	�<���~$l���>lK�����i�?�LF�aI�<������r������SЏ���O���\�U�$��V����c�z������)�!lA���"��+��V�	?	(���4,����¦�����(�W�`�\<��օ��މ݆�KjJ^��}J �o8V�oRpqE�i^�����l�>�y%s��Vl�J�����>���m[������{�Z�]��7�������x�~���C�/X���
�8@���E������4� 6�u��f�T�{�ɚ��66:�8�~���"�+E�ź�e��G�W	\��(���,���օ���Ŧ�'�/���>' yE����
����2%�(�~� �W+�9�ƁOTę���e�z�@��6lUn�]D�;��y=�m�1���	(�L�zl�C^���_�׮\<?��b���b��Oae�_ ��>�Ón�F6�7p'�.�3���p�h�Ç��e���y�m��Ctr��_�������X4����m���hՒi*?���[��܍ݒ\��HSP>5���� &s��� ���x?{mK��V
��{��SDB*=�Xp�-�H~�k�)��-�Q�R_P𻱕�;�`�Wl�н����?�C�X�{��?5:HE��Xȑ gΘ����1=�W���iY��b�R5������S|�b�~�~�"*D"_|k��]��[��ܞ���ݳk�7lj�����'����.7\��)Ѡ� ��n���7�������3�?>NS#��w�ԓ�qc�D��q�9����l���w(�HG�?���s�Llk��X���X4�@����J���F_ޯ]O�E� ����?���\�p!g�v�}�'�N8.�֮����M�od�d���I�т��U��+tEd`���
�l��G���g�\<������k;���7�XO)
�Ѥ������U[˙���&�]�bp�Qpŧ�cBc��
���ѭ۸���ّI,�7�A:iEW�$`�M`p��{` q�b���K?]C�M� �W0����k.�N;�������p�0o>�_tq�O=��u��w��/"CC� �6]�o����>���|�ֻO�I�x%G	@��������a`��s?��p5�ǟ~:���>�0���o*t�N^��#��_a�v<����D�����s;�D�O�>�j�KJ ��x�Z`R�%uu��?>ԉ���%�tŊ��۾z守������zPr�/����	=�R���R�KE�������Κ93{ť���O�]�P_\��slQ7:�E��"�f�乞�� ^.��<������q%� �B��?��?l�����35�F��oݾ=�tŊ`[�-ؔaY�p�H�I��%����C/�r�L^��7����>�L�)��a��b`��N9�P�����6x�?�U�/t�Nt�CV
K�&P*x���-�m�/��v��N^�o�j�<H-zuM���6��W\�u�`��a)������+O������Sd{�6l��?�67žw͕#�^��m���j�"�E3 !Y�?��?k���s�~_����x�б��Eyv~���w�ił�O(�uM��� �"����V�����f�����P��ww�N���,�N~9��Xx�B��ĺ	�+��n�.��"��@�9�y���y��������e8�D�1F����~�k'����ĺ�u��]���
4�aۇ۰�?�bz���5*�������%Ӧ���^园xV��S�c�Yg��qV���ƛo&�\vY"� �|[ �헢ߓȡ�Dߐ86�XCg;ߢۇu-�������88sq��xTn��y�����ó���'���sf����<��n �����F�:�E#%���� �n�)�KRPD��v"�u`Bm��汣�~���G���>������a�$:::���f�zX���^��V"	�"�I	@��N�8�W�*9!���u!�����{��`�{�˩��n_�&�P0�EU�Dk��: ��ENԣ�y	vee�OUU�D��Rݱd��R)hl��d:���[���"���&
�RNJ 
(r�ƁO;p�9�sCU%Ã������y� w'�-�.����j@����B?L'���G�J zg0o��T|cX%����(��{y^g�R�L�z�����S�bU�v��#���t�B@yJ4��W3>_Y����_^0ӯ��)S�G��{>���K5J��Q��+N���*+���b���&z7�[��v ����������"������8���J&�!����˦#���g2Xw��5�EDD�M	��H�����	�c�^o��Ώ65�{5c���:^��""RnJ J�|f��$n��`x���W`Ǹ���ͯ����/�RJ (���J���1N��z��^"��;ߡ�3�7w�C�?��������@�D"�¿�����Ʊ���N�f���M�^�ѿ����' EF�G_��dbͨ0o��a������GsgB��� ""2h"� 	�	`pX��a��uY���͠�����1�������$p�W��WDDY��"N��%̪�e⧮Hs�q=�b�ho?��s]h�˖΄`#��������X���`I]]v�>��K_���.��wvA��@[u5��������π�B/��_DDZ$��~..b �jk�O~��i**a�l��-��!��F!�=��T����t�s��h�/""C���g�`���Y���Y�,}�)�t���w�C�OVCKKך�@�	��j#6��.P����!"r3 %�}8��⫯�v� �F�g>K�Å���ܛ�����$M���7 OS �����61�|l�^	��o·?�*
�"'�7�z�b.����mK��������]��B�,J �Q���ɹ'���e�M�R8������s��R7^w]"�����(��WDDd0E�@08���U[���%�d����;8�ڻ75�����_}5�l
X�V����� ��������k����1c�y�{|0���>�����m��H(����`S ��:�9 �.\Ȭ�3{�_\�.}�U��X��o�RDD�)����s�D��`cCC�%Kb��sOe�G��н�� X��s�놞�ojnN~����z�?����h�_DD�% �6�7����#�EϿ�b��+���ۀ���G�_�hMzv  n_��9���R'�pB�u ���RO�]�j}�a��YL�����<����_DD��ȕ.P	0�,�_8���%uu�ʊ�@&�u��d�ի���v�6�'���sq   !IDATύ��,""C� sp0��o��n��H���}�""2�)0#�J�_���:��XҰ�^�Q��EDd�S�ip!�8�'@@h~��
�4`�@������ȡ!r	 M ����_�ۃm�k������VDDJ �$�߫��:"Y���Y�_DD��H� ���L@��K9�D:��O�����ȡ)�	���HEr���H�)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """�@DD$�� ���D� �R ""AJ DDD"H	���H)� % """��HЮ�?*|    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/basura.png-f60eebf6173f73641824d9082e6978a3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/basura.png"
dest_files=[ "res://.import/basura.png-f60eebf6173f73641824d9082e6978a3.stex" ]

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
  GDST@   @           �	  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  	VIDATx��y�]U�?��L(Ŵ����T*���l���b�BDQDIL��U�1.!���5D�D
$�  ����l�,��)ݧ����߽�;��f����M�ݹ�������;���jF}W��ѻ��_v�f���C�E�d0��	, v��m��������6 �nW��3��N�ݗ�?q=�j�o��n'�_��&�[c'Nh�P����A�~���@B%^n~�L�X���88x!��B./�~@�ʄ�E'0xp���w��� ��]���S-&>�P�����=�\�*�	��x�q0a<�s��Ҿ�";����N�z=L����A�.�B��l|�+j�5��a`6�����{�0^��4X�}7�Kؓ7{�Z��A��K�y���"�ݫ��A]�n�5�Ս�}�Ճ��cx_��T���P��F��-W��{�%�W=V�Kjc���[���j�^�z�%��ԕ��Uh���O��u�u�M��-�P����P�dcǻ��5C=^�YhAǋ�eꞭ�m�,~�Hu�<�$���	_]�x�ppv-�c�0�&�I�����<{_�#\nR��W�k�k���������L�ބ���[��]*����^��A]��U7gs'�A�vܣ~F�=A��r���v�_��:�j��D�⌘r����ȑ�ޫ�^�>i�l3�Maа9'Wз�z�!�͘�Z=�0�m3��cXժ�7�W��Jcg�W�c{ޢ֨VЈa��S�nBgC�_=�XW[�m��`Ť[��9z�{.oM�ƂgO�LR���Wk����wL�S��9����ԛ�}���Z/�AÐ�ߩ�$h,_�ꩆ�I��a����cS��7\MJg�S�z�����>�sR��`�Լ���>��X=�0����>��l����0��c\ʭ��@: ��
��D���̭�B�<��(p<F����L.���r�ܬ���v��)pj�G�'�%je#�8S�m�ݿS=��|M]���bL>n�z�z��]e����QL��m��˃�4O
Տ92���~���,��O�}Q���k�&nR/(>_��n`�
~X��t�Fdk�d���p)p�Dy��%T��>"�݁"f�:X�v��pop6�o!�+��OZ�;�J"/�����:�F�%�*[,M/�C�2H��� ��x�����(2���Y��
�������0�g�o�&����-Qd�Һ<L���:|��p���?�]�L��i#$���\��<L�@�~�������}3H�EJYd�4�\kݘ2� �|1��J؊���n`7�0B�"\Ut�t�������L0�&"�]�٤РT`)2��4T��l�-���x���>�K�]����Ax�(>4H�	uұ����<��<�)�(>�����	��A�P��ϖ��<�p�������MD�)z�P�g�x<{��p �a*b��
�^&6z�x�0);�7�����UF�Q(CB��o�OI?2��Ѓ;D`�q�x?���R�Vd� �)C�;p<S�T�t�C�"M!��ItXSGO��RYU'f�`?� ���X��w�F����%=MeE�4eHظU���,S��^D�?���DP����iʋY�J����I������Tؾ�;	Wf@�Hr�$�E�O25c���h�%����'���V���g��T��U��1S�� ��ꪁel~AuJ�/p!S�	s����p���*�Z���,#]թG���:&=�{���)��S���BM=���U������+��94ޫf�x����IRy^�U��\���f/0���-5�����۬>��o4LG�h��0�4ZJ͐���h�hŉ�]ӌ#9w6Y��z���0���9$���9�2���C�+�N�Dt�����zCw���D=s+�(�}���h�5�	��g��s:t��2=ADaw��&DՈ�� "�=�×i�l�+�96m�hќi��l-{�����Ch�k���J�V��g�>�+��g_�,&�n�{3���A;U��(~4]�X�
�	��3�3�X /�7��Fov��XKp��5�e�X<����,"�p2�]��B~0�:�JJ��f�����1�_����{��j��ˁ��!��W�_���8�����7(ǋ\u�;��=paWR-���GS}��O$�ӣ	;����5d�S���pm���{����'u��l��U�cW����WVT��[�k-��+�������7��d@=�wE��
�BB:� ���p�ˁG7��.}0�c20%1U��]�W=��[��q�U;    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bubble.png-7158fdafbd9a4cab431a459608665d16.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/bubble.png"
dest_files=[ "res://.import/bubble.png-7158fdafbd9a4cab431a459608665d16.stex" ]

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
  GDST�   �           �  PNG �PNG

   IHDR   �   �   S^��   sRGB ���  kIDATx��ySGG�HF��|�����ג��K��տ���e����ET� C�����*��I�;_�$I�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�{_�t���|~���R̫Ys����Y�x΢���A�9�%�)��x9�|�Qem�s���-�/wܣ>�?'�l�2~t�{QSRÜ�\%�S�xT����&	?�c�%+�w͖9�酼ò��LYw���c%�bZ�> �My�>�X\+*�wΎ9��JH/�}S6�b��N�Urz1%ۻ��5�r(�kV"�^й��j�%�:U���+��`�*���-1%�D� �M93_�b��t6rN]L%%��TDܤ���P��G��-����θ9�q��=5B^PD<N�7���lx�"�;�M=��L�)���]j3�e�ʎ)�A�����rUS���	%� '��P^G��7T�/��Wt�s�b������Qq������ULI����-��ƣ����6rJ�#��P��D=�J��~������R�y�!��2>����]jSn��U2�>��v���r���*�����j��{��dX[,&�?I�#)7)�)BJ���|;|�G��R��O���ܦ����N�M�!p �9<P$��0�Q�G�w&�T"���F�-��{	����(�*J>�����?ym�w)i��_��R�P�����t����"�ĴRjĭ��6��~|�0<�S$ءDT/�M�޻�g�zٷM�rڙ�5J�.&%g�b��ܤ\�m�x�T!%�E�����Sլ�^���4���WE���ٳ��>�����(�#��3U�]j�T���Q���������$��YL�]HEʧ�~�O��(R�H�c�R.�:_��%���켫���NaY����UL;J�	E��(2�BSR�P"��ND��K�b�?���[z�K�N��1����"�/)�)�
I)J�B��&�K�`y%����i�ńU4Xآ���)"��7E�}���\��l�����xQ�l�{�ՄCi��RF�?S����|�*�Лp�|ͮ�|��~��\��vGOb�d<�4�j�5����[J���>�u��O�"��/ꂞĄq�A���	�g<O��N�R
9Q�k��]2�W#uפ�"����O�?���e�s]$�&���Z�{�v�G���^Ąq��G�O�nΔ�=��/(R�E�^R�����D���T�ܧDLI��:y>U��{�Jv��u�mһ�1�}�GKش|�	e`p�iK)֨��)��5em�]	/9����/`k$�y�]���S�P"�T;���t�Ku�K]��� ]�Kt1ay��6�Z}�;|=�ƛ��7�z�r>�HX�_D?��A�]g�G�>�K�󛪓'T1�*��%$,�/�߿c�I�P��c���f�$�I��MĮJ��/��XC��]j��5Z
EM
����3�i�#_�V3�[��vkWE�_nWH{�Q���~fh)!��l|����s���l�Ծ!+fW�y�i��aK���4�h)��M[GV̌�_ ?iwn�SX9����D�,VL��=��Q����-�v;k���k`g/���ocoM�j#����1�ʞ�B���أ}3�u�@�<Y1��qR�s��Ҟ��E}Es�im��UUt��-�Wa���s���-�������:cg2l}�:�#���/�Ĕ�vu���5��Qk?zH=Q/�+� ��I���������dT1-6j��S�����Uu������ݭw}���+_g]�[t1��]L��i2�F�0���*�Et1a���Vְ��JJ��.��bڳwl�.+���[�����i������QI� �'R+�%��0n�ln�V����:ӛ���jiB�aD1}���b6KX�9�J�3������-���FKU�))�2�Δ��ta�.�*ZM�N6S��4���uM�6��%���/m���i�W�-��ԕ=3So��i�a�*���z���{KFM��R�T.����[oQ��镕�[�s ��[�����%��lZi?2MT1��Vk�<�T��»���0J]�Sq����t!%��G̷�$�ǔL�:�t�QS��h��ћ׏���Ud1��i�{�J��Qs�w��?���+J�PG�^��rF��+�A�������w�A�%�oZ~�$F� �7��r!N�o_So�3J]��ԍ��tӌC|1a|�MSFVL�y����z�^PDT}HL;"���bڊ��r��<(�z7h.h��R��W�>�܊=d��+�ԜQ.�qՑ{:�#���b��W!����kJ3޺�>ZB?b*�광����۔��t�:�l��|~� ��4��b���ALX������z�?3ӦT�v��*��T3~���0Cӓ���v���rat�^+KC7I]ۯ< ��S�<�FK��;zj�\c5un�C깙6����)���J���EL-��z7��j�NEM��A�Ҟn����=���)�o���"����,G��Ąڤ�"ݡ\(��=Hj�qʕ�u��%�s�C��R�]-�hћ��ܤ�3>p�ˇ�.�r���k,�(QQR�J��/(�v?��*&ԉ�5�E�oY)u�]�I=�����)�O�+���9u�s�xz�[)�O1a��C�*��z�ݞ�>�V�e��H�&���V�/�^��*�|����|;�o)Y�l��(��n%���S>�r�|?�Ji��vQ����V��߳G�H�KS��V�I_s`�םj���:%���J+�]��u.z���z��vX�R"�cj�n�u�-A���ђ��S�<��rԞ���+Wѻ�ЖӋ�h))O���l�y�ñ1���~����]g*)���C�z�O9)ab²��]�ښqF��G��p�"������9��>_+��e|/)�A�QBjYߧ��N���	�}ΫDІ�W����*�r�K�U9r>%���\�:����芒vc�$��i�	��I�������t>��)9�v���Q���2�N9�v'��r�5c!/Xn�?��79��i�_���	�}u-�В�m��Zt�C�������ٻKVN{`�=uM��Ǖ�G�SO��o���j���2U1�O-�[�>7�M�����N���	C[ICmt�Ͷ"�)��{0���9��Z�>�����槴+�$��pEʇ��������8�Ϩ��g���������9�)|�+��hk	�->7�������/�Jw��s��}Z��lF���/���-~��:��~��Ho5ٳ�H0?1Ek^�f��8��r�=�bG�2G�2I�Q�l�sS�܊-I���Z��[_����g���^0�ò����0�%��'��Z��̞s�������*�R�k0�;?_��D�߻����^2�b~��H����?�\���H�n��{^���b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f�3	I���$�LB�b&!I1����IHR�$$)f���$���c    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/circle.png"
dest_files=[ "res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex" ]

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
  GDST�             �  PNG �PNG

   IHDR   �     Z��   sRGB ���  8IDATx����r�Hz����T��MG�D�,f��������v^�=�Vt�ZR9\� $�H%��"%Q`$�� d\���{���M ���'��n!� ��ç���7̼���0d@$����u��6	��� �S�k�{�g��x�������w�\lsi�{ ����r�:09 ı�{m?�ݿ�}��w��^ ��<�^��~�k~���=��������������-���=�z/�\��.��9���懭�R������ޖ�|<zOk�i��"Թ��u͗$4Dxw���%�FfM�w��6A  �P�pW�W������S���1M%~�c|W��p��t\z��	Y��Z�nF#�^pJ�_ض�m&���|p�����D��U���{���X�	��0��dC߹�m����\&t�(ӴwI��⻎c����ɼ�})J��Q�Ʉ`n��|W�����<��rK���Cj���G�м�/sL���2�uw�:@��5V��ޢ����k�5�ﾻ��29ɩ�ki!�??�/����&߂w�cW��*ٸPN�9أm���i�ąz�!�[����A����Ԇ+[���U�
�f�oM ?00pp�'V�#c�FQ���rH����Vd���q�0`��� k{x]���:D�w`�Cv��K9��sxz��e�N�F7@�=�n��*�Ԓ�o_�d���2��z!�e�k�s{嶎�@E}��;2@Q��.`��;�����mWtgK<����klW��v�i:�����j'�,^���uO�^�1��N�4�H�ih�/��?C��ז�m��L����o�[�; K����Mz�Jd2�Y e]�FA�ap�U��i��E<o��&f���U�"Kv�AWg� �L/8��v�&%�O?)�Ç�)������+=�v8�j@O��z޲��G{��.�E ��ç���A>����m��u���)4��ń���$`O���?��V.n��Ʌ>
w~1&���B&t
��)dB�l�8�^d�*��)dB��	�B&t
��)dB��	�B&t
��)dB��	�B&t
��]�G���J&t?H���d��'-�y/䢩�:�L�2�SȄN!����Z���TɄN!:�L�2�SȄN!:�L�t���|2�Sw)t
���إЩ�	�B&t
��)dB��	�B&t˖0"-a�|+)d2��]
ݲ�Ug��h��B&t
��)dB��	�B&t
��)dB��	�B&t
��)dB��	�B&t:�L�TɄN!:�L�2�SȄN!:�L�2��'ȅN�L�2�SȄN!:�L�2�[�M�g��h�~2�ә�B��O�2�SȄN!:�L�2�SȄN!:�L�2��r�S\�N!:�L�2�SȄN!:}M�Щ�	�B&t
��)dB��	�B&t?A���|��Щ�:���*��)dB��	�B&t����).B��	��ɄN�L�2�SȄNga�*��)dB��	�B&t
��)dB��	�B&t
��)dB��	�B&t
��)dB��	�B&t�~2�S%:�L�2�SȄN� :U2�SȄN!��_��1�̧�):u�B�%�S%:�L�2�SȄN!:�L�2�SȄN!:���*���,�[���3�\4u�B��	�B&t
��)dB���Jg��h���)dB��	�B&t
��)dB��	�B&t
���E�S%:�L�2�SȄN!:�L��	r�S%:�L��]
�+	��K�Sw)t�dB�1����ɄNݥЩ�:U2���Щ�	�B&t
��)dB���:�.�N5I�2�SȄN!:�L�2�SȄN!:�L�2�SȄN���}[���]�g�8��˗��~y�td[kDp�esT[��ń,��ͼ�]�"pݡ��M=����  ^~�o �_��t������/�8l�]������J!�`���dm���������5h
���5��2�k�,M��������v1c��c����}-��k��@y�
]�i���ؠ�M����Ϳ�v�i�]�G�k��dʪBE�C>��;�8�rB���l]��8F�E��=�P����O��߅�x?���Q��r ���%�����3����e
/hm��sY����L8�nV��@�S�͝��f�e+ ߎ������C	�$ź?��ǺF���lw7M�p$^) <����xm�	ڏx}�ᇻ���Q�ɲ//��f��1�2����Uc�Եf�����]c�����^ȋ��֭�VS�z������n�P�(���	m�n�n5���2����z޶K�����/����
��o��$m_�I�uf�e�&��f�7^Wg��4��3o,��U�����Ktk{[�4��)L��x(�v]0^s�'�ɲ//ȳ�/yvD7<�>�.2�=�
e�va�ar��%n'��<�������-`C� ���]e��s��&�� V&��ڀ5����u �9�B��`d�
�D��8:�AN�8`q��|;��:l��E��Tݰ�=����vs��v2����U��q)��T���U�\۔�ri��s��V�����o��-~��p\���`B%�Λ	 ��1O��MCA;��u�������ryQ ���n��� q��������}��g�/�a}�\�wo��4��If�*�G��+Z��c�ۯ��v���Ea2x�������%�ւ�j�����{z��;����������?�Wd%v���i��WA Y.F��Ǿ�s�"W��/�{��'��?��}����p�L~����{��WX������g�Z��L�����#LV�E����s�rm��{���cp���]�{_��j��i�l�B��'���q��E����Xu��)�'=��%�v�z��.�P;�lb���4?5����Ɵ��I�nAv�}�R�����n^��.*���� ��B�
)�gM%if��%�<�_m� ��׹׬�:lW���B6g���`���'�h8���n�`��o�@�n0��J�Usi�]��$�cĶĺ���~�m�2�yK��'�{H	8��n���m���{!C�=�qI����3�puUr�(@�V��pH㸷�Ũbo!9�l ���������������lK<�9+��0�g�m���ޱ�V3�10�u��&rp��;ͧ�� �Y�0Y���(��%b��bG`�
�ۭ"\��d}�p_��fB�{�';��=Z;P��ۘ[�=�1`m��e �3����ӭ�5g_��9N`�7C+�2��9>�ā(�D٪wu5�]�	��!�xp��Ic8D���t��<�:�*�C��خ=&0n�*����&��� `�{�j�}�n8��m����]\���fk�6�,àug��6�0h����|o��n�����O���xx���ET�_������>u�u���?�ֺ2�O���.
X�mQ	����r�<��k�=
Z���J&_7�L���QB�J&t
��)dB�1�����:u�B��	�B&t�	�*��)dB��	ݲ1�Y�vL.�*��)dB��	�B&t
��)dB�l	���̧J&t
��)dB��	�B&t:iQ���q潐����B&t
��)dB��	�B&t
��)dB��|�3�\4}	�Щ�:�L�2�SȄN!:�L�2�SȄN���V��NݥЩ�:U2�ӘL�TɄN!:��N�L�2�SȄN!:�L�2�SȄN!:�L����B���B&t
�������@�Oi:�L�4&:U2�SȄN!:�L�2�SȄN!:�L�tҢ�).B��	�B&t
��)dB�S}�N�L�2��b��).B��	��b]�2�Sw)t
��)dB��	�B&t
��)dB��	��r�[x���B.��K�SȄN'-
��"t
��)dB��	�B&t
��)dB��	��]
���:u�B��	�B&t
��)dB�/\:U2�SȄN!:�L�2�SȄN!:�L�2�SȄN!:�L�2�SȄN!:�L�2�SȄN!:�L�2�ӧ��N_�"t�.�NݥЩ�	�B&t
��iv)t�dB��	�B&t
��)dB��	�B&t
��-Z�%S���LQ%:�L�u����dB��	�B&t
��)dB��	�B&t
��)dB��	�B&t
��)dB���N�L�2�SȄN!:�~-t�~2�Sw)t
��)dB��	ݫ�짻�׼;�J��	��%��ܾƝ�Wk�Y��Zij�Vjwy�U[��d�
2�[6�w�e�ega�49����e!�2�oQ�B7*O��\�]
�B&t
��)dB��	�B&t
��)dB��	�B&t
��)dB��	����W��*��|������7��t�'�O��}��S�o�Ӣ�t�ӿ�re�����Ϥ:���,��*����^����?�K�G1�a��5��
m�m����d?�ݟ���}��w��Nl��}�="��m���C3�?׻���Ж�8n(.��߱o�}��5��|1!������.=�7�&��pF���z.���%��1��.���Ow��ٶS�{���e�VU��ScP��D�K�1����A@ж��C�Dq�֌���
��~�nc�u�f�#��>�o�C������ $���1��@>�� �*5�:^�\a"T����:�
�ls� L���o����D1l`�* �e�V�r(�@��*�6qk˽�����f�֌*��T��.����I��x�V=`��%�+����PϜoڶe}[��.�v���7c�xm��X[l�56�z2`y���W�����|�@��&K]j��5���絵X�VG5���tUwA�$]uE0 ̍���]��:8���{���VY�����?l��|3j���˲�k�����,��������T[��L,j<�|�,ةֹ��s���y��������b��W���b��ObK�F�r.8�� �d"���q#����>'�ʕu7	 (�Yh�t��p��"���j���6���wЃ��n������������ˢ1�u��%=u�4����o��#ڜӕ�xIWȚ� ��2Npc����p��&u@F㭬��^�m�[��"&�um��(��5�]�~2���$1 ���nl��汸�ֻ��@Q�BX�+l��(B��.�ƀ���E��=k=L���٩vC�b�k�����!����v�������V�N�e�&���=��ז�*\���z�1�{�&�^:��6�צ��WO\,���q�u�F;iLv����bL|7�����'���O�'��* ����Iw����4��u�.l��e�b�s�. ��\��n<�g�	�C�fr�����M�0�f��TO/N֖�%��¬�b�����5�4�*�p�vʡ�[�q��oSOFka��ۡ�w|w�P�Bܪik�kk��Ƒ ����kQ6o]�%! p�Yd ��u޸����lޤ	 ���(�-��Sx��/7e4�XN�w]�o��n]�m�g���ǯ�1�{z۞���n��T�7�����޲P�̖@���`��;��ʺ lY���o�sn2��z�3�Fc��u�c�
����{?�d����m1��R�a�͵7�L �#	�Go�����fB� ���P�ff?7�����=7OX��Bz�z��%���*Y�4�a%���.�x���o������.{o$b���J��s���ݟ�9���غ��$a�D�]d3����?�6��M�B#$ޓy(L�rȡ��ċ�U�KT�1n����t�
�\�R�S����H7�W�p��e�"� n4nw��]\(h&2X{�5w�1O�7l+����`���&����W���"fH���\���Z��b�`@�3U��fe@�&�&3�����B� 6�U��=�	 �4m�� ���$���:6� �f'N��뉐�D��b��53h��� �8M�-��v��f�6m^�b��q����0���l nfi�}/��5L�]�����pP��E&���n��C�N�S1�p��Y�6���ܮ������� `��ɓ����uQ���%�(�nS��+��M�.�f�_l�:��}�Ə$ bo}�@���������zݕ�F	,N���Mfms*���$sx4P9�]^��
�ɜC48�uH��6�.�7��U�pX[vm��$�u3Ԙn�ue{�m����v�bV���ne������!N8kg-�8�����F�+��&M�ʺ#��5��D����ws�Fhf֞3���+Vʢ �P�}��(BR�U�P�����(�q�.�u[n�V;��U&�1f0a��5��7l����w^��@Q!Y��c��'��>�3��`wm^��Ջ�1�g� �b������� ���r�~28<7A�B` �ce���ٯ�of{p�=��������'ș��=��    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/depth.png-0cf5506da3124ea9e52f54fcaa991832.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/depth.png"
dest_files=[ "res://.import/depth.png-0cf5506da3124ea9e52f54fcaa991832.stex" ]

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
     GDST�   �           �>  PNG �PNG

   IHDR   �   �   S^��   sRGB ���    IDATx��דdW~��9׻te��q��j���z��*�Xr03 �8`0����iE���f��T(zT�B��j�3��kt�Ms�=z8'��L�@wWvw}#nTUVe潷��;��?!��gX5�}g8�I8#�Vg�<�J⌘gXI��+�3b�a%qF�3�$Έy���1ϰ�8#�Vg�<�J⌘gXI��+	�O�~��{��ce]QU5M�"�X �,Ƕq���~��'����Y���ǳ�~�1K����LLC{�_��w��Wgļx�W�=g9ka���vso�_z�9^}���s1+��=����z����m����8˾�{�EqS�g/��+����l����;��yd�|?���������uh���-�ap�ʮ#�B�|���c�|��[x���1o���- \Kݶ�i�>�m��>������()���^^�!̥�<�=���5�o4��YL,�R���s}�����W{�8�c�$�~��{�S^&��jjb�8�I����(���nhږ�iiۖ���n�6!��4ML���,l�±,�$�\�a0�c��Y��qb�a�5o������a��&�����3�E 7$�&��xg��vv�������XU��	жT���Q]�ĵmza�����K�<JJ�m��ʓ���e�*Έ���^��H�
8LNML���8a�e�Ӝ������� �a`����&�a(*	�����:���m��cs�Z�������(XzQ4'�X&�Q׸�a߶��z����.���x����<��c��������z���.�銒h���G�eۘ��m�؎�e�!0���]'iꊲ(�����e!(�� L��<ֆ���% q#RTU����6ݥ;�3b��o��3|G�r�����ޘ8�U�h[�ƴm,����[K��-�41L)%RJ����*꺢mڦ��k����*ꪢ�+d�!�i�H�"
�X�6� �21�I	�e)����?݅;��qF�#���?����$r~�� ?��M\U�:PnJ�!���x~�G=�(�#� \�0M�yP][���RYΎ�m�˒�*)Ҕ<���,�)�X9PmK��e�D�K�<���C�# q),�����p��W�1�������w}r�O�w�xg���wA�=�eb����^D=�^���Ïzxa�eY��u�:���Nv�UEU��&�lF:���3�ZYϺ���F�I;)�4ri4�!CGI���s�����~����ۄ�8��_��3 ����-���U��8$E)���5�2+
�X�=? �EQ_��|��v],���˶�:�&�I�\�	)1�q0�>������ש��<�ɒD}�c�<�n[��%)r��w�MÕ��Ĳ��pf1��_���u�B,G,��l{������C[>�u�\�h0���Am��? �,K�!A*O����ʛg�d��6�x_��Ļ�$�eUQ�]�"ێ��raqim ,Ǚ��)������x�������܀���]�g	q�S����xa���~��?������|
�A��X��n!�����u�yF�gj��gj��g$qLU*��9���!��1-�������n��M�g�|��R)��S^����1e݀X�M���z����o�xA��y�Dڡ���]���MYQ�ji���0��!Kb�$Q�{��X&�}.���� EH K{�����?�#g~�x`����Bϱ)��@"1�"�m���׶��E� L���Ð�pH4G���`9�e+���5�xӐ��
�<{T�޴mL�BJ�i�8��e�diJQ�TM�$ˑ]���(�a�I�Jx -��I���R��XN���.����JI+%��D�!��5zk�~���*P��n��tO�6AJI�4�EAU���}f�1�dL2��	&* em�#�[?��;I�?�@遭�4-e1\S}�UO)���=�'3fYN#�q=�tG�7�m�[[����]ôA�FJ8�����8xQDo}���&ÍMkkD���� �%������X�!�dK��k/޽k�����~�z_�MˤmZ\Ӥl[<ǖ���:;�e�`;A���#��j�L��Xʮ(>ޙ��B��o+t����ګ7L��tB�v�m�V�!l�?�xA�Oz'I��Y�(b��+�8�D,�S���Ww��ORlG̃0b0�[S�������6�ԷC��$�x9��帘����AӶdYN��$IF#��ZOS�;�I��[���#�@�3�f�:,YN��Ϯ�3����q��� ���T|��<L�l��%�&!���K˻Ftm��CuM�&dyF��\�.�% V�R���8?����ԗc誝�(���3�����u���C���7��!��aY6��qz�چ��(������m��}��}ڦ&�=�a���� Fz��t�<�S9��b�����c�a`t����o3�r�a�:.~������0�q��L�"j��PV���)Ƞףmjꦦ(r��#�jZ�2���ǆ��<�C��������uM�ԓ�����_g'N�����a@���FD�x���.J��r��
CJ����e۸AH4�Da��R�%E���p�����H��W��w��@X�ˣ!W����ٙ� |�����d��⇑������.US1ʻ��`!l\�GA�gIL]4���y�8VV�>��4p_[�'^?��]�����,�H,��s�(�7�[[Ï"l��0-K6R�C�-L�qp������lץ3Ӫ��8���e��Qpz�}K�|p|	Z"��xg�Y�kb����䅯ᅊ�����,�!�x�a�X����>A��r]:a0�*>��\���ɩr���� ��qz��qy4����4�i[,���}����?��z8~��=��!j!�
!�����������ƺ��ȋ�����~�-�;��r���߾�����\�3�]��Ɍ4+@l��"z�5��H�����p�޵�KB��[6����>���9UUR�uQQ�屧Z�y��Y��s�Wz�u��xJ�4m�a���OED����4-K�O��B���88�������e�ȶ��k��Z�a�
)�>$�w^ �4p̃���@���[l�bJ]��zA���!nbX�Ed�����܎CE�!0M�vp]��m4MCVVdeEtʙ��j)��߽{�1�4�xw��v��CH��aO7�؎�9'�}e-ѕH ��aY�C�|</ ����mI˒�Ο[w����W� �^�$ɘ$�##9KRd�!���q<�����",�^T8<�>98�.��7�9����ڮ��Ҫ:v�X�߻�{�b���q�����n;6ֆ�z�X�3�r fI��Z�X������~�òl�!���'(B�NU�&����몐�@��UYy\�.����<1��{��(m K�f()�X�3|��ϯ��b,���<�H��zQ�ZZ�_�)�P���L:2MSՕ��*��P�ys@̇�o��ٮ,1���+�~�Y7�븺�����99�?~r�k����T����f2?q=�48�Z{���;	MNS��&�0A�Hʶ%��t�⩝���/�R�Kִ'��l<�?:ފ:�!��t��,f���#���~��?�T����b�5�a�Bb�91;���O�r��J��^�FJ�q���jcԇ[;�m�8�H��M�����hMh��IO@��ݕ�TGGG-%u�ў�>{e��W�RZ�5"g`�G���mm��E�P�-u�QuYӒ�-u��4-B����7\#��RLr���4�"��4sb�?��Xb8�Iն�ȩ!�NҼ +
�QG�R�M��VێJJ�N.�I�����Hgw���	�.W臔���С�Ӿ++A���
�.&8��2I3��3�YNZVd�R���)���� )�8�����z��(�q=U�!oQK�>��М��Ǟ+Ɲ�}Y	b�9�g;{��q��V5��4L�ƴ���0Uk̇9�}��eل�����X���|�,&G��\|�p|C�Ļ��!��g�r��w�pw��(����a�x����������hӲ�ܟnY��[a�خ�['B,�dY��A���^$$JGJS�)n�)3�ԉ�¯��eE��5[�צ���Ǳ�/	�� ���>�;ס�C������1��y�xyR��@v�-�a`<��<	Q��O�vȊٶ�A@�x�����E�[K�P�q�g3.`�EM"��sr!i���0؆�k�����J�q�������c{IJVjb�>k���	C�^Ӵ0,=�D�퀐�#�R��N}W�J�;�����0M��QzNg�Es\X_#���!mZj)�00u��8��,�c+r�BimY�|�~�"�3RB'�ږ�m�T���mU�B�ĳL>��ᓭ�S;͕����������5 ��ab���������t�}�����E�RJ���l���k��#wLs1+`kOղ�WS0�N��'�g�//j*��C(i�~��'�Q�f!eG׵�mC��4Z�)�϶�S�����4�c�H���E ������}[t{�,�b�뚪�h��R�m����?��'�깮1?����L\Ӡ�>�m�����B~,�M��~�M���m�,�i�+�S���1w�J�>p2�cS&h�"�(�T��s�o|�3���T�J9�M�P�j�U�4H����C��Rz���Ŭ1����v��& h�<����p��@���9���C,ⷲmi뚪�)��T55��_2�֥��#�9�z���?� �O8<<G��WUEϘ�f�EF�4KSi��ؽ�������SY�]��,�|0��4���Q��q�IYW��)�m�i��49T��*��)��Y�eA�@:6������ɻ~��GLm	{a@�y�C�6J./���S�0�"|	�e�� ��<��7�.gSc��R����:��3/�Y�[�:�<^1-Q(�ÀYQ��%e^���C�6�#�5� Pb�Z�r1�N�O(<�����S�麪(�*�i�!;"�d�{�<��zZ�����1���V�a�Ȯ��*��`��K�&�U	]G��J{��?��99TR¼�\J�����J�<�,
ں��$�eq��X��3s���/�j��X	b��7���~�悐K�}Ywq]S�%RJ��"�骊�t��J	8��˱�lG)kɡ?�PĬ���,K��i���:�E!��2+B�!S��b�r'��ꆦmi����H'c,���}�^���M����@�9�j�����Ǌ�w4�SOY*bfyN�6!��0Xܗz�|��1��[O��wT7�4�����RJ|�!/
���]UPv-��0�tU��xa�f=z���vK�E���q�;�-fG�(b�eI���U� ���;=�	��Xb.�2�)5�_<'�Әi/���NRuU�1�+��7pÐ^�`8"��q\!<�ra,�?Bܯ�ԕ]G�6�UE]�EN]W*�:���u��|aE��1_}�{|�ş%% k� =�.Ǯ�$+��9qY��y]S�9i��dN�S9]S��5^�5��]�X���Z�V̇�vmKS�TENUTU�l�9�{����wj��3L^{���u�EL����K�{��C�Mu�`)����/�q��'��b�iN^
�$MU�N�4eI2��XF��8gӶb�y�h뽈�5��UI�e$�)E��5-�a0p]�G!��tEu�O�0V��7�&% z�6���5):�͐H�N�V-YQ����E�Q���h[����7a��L�()A�4	���kT�F��b�M�o
�����do��Sp
+J��� �z��aR�K� 7} "�'-+�CT�V��*զCFu�@�1�TeE0Q�ݶ(�VkޮqBCp���˺�.
�4c�eE'��>�(�V%7��K'XIb��[��U�Ȑ��b��j�.���qQ��
		I'R�&E̦i�ʒx:��|�^��ק7A���>��`�6:�	���bRUD�ΉgYF'4m��u���€"���?�k�#b[U�K�.�I��4#-Kʶ�C���-0�41�mK�6�mKY�PS۶4U�*��R������-��u�˹�{ X/;U�?����1e�QU%�!�����|b�A�Y�3��FX9b��@�7?͕�"�#)�99�ow�IҌ</Tʲmi��c�湄���8��AQV�U�~Q�[�TmGQ�4��4�N��(�F=�(�#̅o"LU �p�Vr*�]G�6TeN�H��<S�ж˺������7�{J�~��"��y�>\v���I�S�~o�G{���ZL�m�6�0�b2
|z��eZ$EA��iJ���EIW�4EAY��,��2�<��Jں��<lO-���s�SXͅ����i�˒<MH㘪(@v����qy�\�����_��!��	@Yׇ�y~}���xNN�%�Әq^�4�i�sB�g
�s��,>�3߸tA�Y�,m���i�P�5I���5Y��N�jP��!n�c���"Ys.�pT1��!�[t����TA���`�����K��qQ�ͳ�!V��Ͽ�:�0�L��m�� M3��x�V��fJ�QJ|�c=؈BF��Q?b7�E��A�z�`Ѓy�܆��	�$�$#is꺡.J�$�����~������!]S��b9tȩx��`2�\��m�z�pv�4�%��0:�����o𒎌�V�� ��nDN�	���1{iFѴ����u�<��(�\/b��� �}vӜj�tK��U�� x��y��)Q��UYR�5E�Q�5i�"eGY�dY�$�
b����m�d����� ����h>��z=zE�Hbڮ��:��'I���:빶�Ί,���O��⼈ P���	���챫3<y� ۶�ԏ���1�1Ms��S�|k)Ա����i1ө6k�z���q�f?��$e���Ӝݼ`�(0��)�bX���D�Q�W�"A��B,�Y�	�e��o�,��%`�$!��c���x���]��0�`��jT��ͥ�H����9A�j1_x�c�-YN���.��Iˊ�i�L����WFC�� �� �ִ݂�s��`����7Un^Y���	V�b$&eUSUM�BKUY�4_�W�E��F� כ�A�Š+a�ݳwe���0��w��!���.)����ɫ�I��'<��&�*�r�S����M^T�K��Nv�]�&3�Ӝ���.�=�X�/���>��N���������<d-�K����������ydm�Z��6�P�@�4a<�gow���k�n]c��E��K:S�3�<���@� �$Ĳr{!�!0m7	�z�!�� ���n�KS>Op<wqc\���������N�b���7�/�c�V5yQ1�R >��g��E�(���}.���4��<��(��
���k7:��'�]<�������`�9�R�Ѱ�$]�e۶tRRw�r��,˰�۶�������.�p� WHT-�ba��O���i�Z�V�T%�V��,�hʂIV�I�@U�sI�xW+�����B���6Ӣ!��}.�9?е��,��i��s���|�� ��	���_=�����3�ҹx�|�(ԡ5r������(�/K�� /	t���خJu*�������]���J�ִl? ��eA���RM�H�8���K�P���S%f�Bqt(#tl����qʤ(�����p ���A�v,�s?S��?��7���z�E�a+[k�	�;�ȕ�P~�?^��D�M�t]�j���(0��p]�(�QGj,��=���8B`Z)9U��Ao�^�0�l\�	A^�]�b�iQ�d9�X�T�)��,c%,fe�L�3 ����i@D���р�GZIO"�O����?����4/��v�9&e%�q�^�2+J���0ȷ-|��@}Z����kʦA�E�!u�l�gJ'�����︪��41LkQM'�#!�~ӑRY�^��%k��%U�n�����cc�^��-~���1����OW���m�i[��+�yw.m'1�R�L����7��U3*����1rj��8a'N�MSʪ��k�X�I�:lF�z!�a`����KT�))+⪦n��N\���|�,��2� ��/��<O�"V
�(  GIDAT	C�߉�a�X���F=��$�3�4!�jvӌ^�{ޚ�׼�85b.g�1�⪦�"RN��C���Qr��[O�{}��_�z�	���Q�)��`<SVr//�/J\��1�!�=���)��eyxc]�n�~�a�e]S75�G-uX]j�o�%^�F:=��0�c��_��a`{�Jd�� ��igk�A:�1U�}j85b6���N�4T]G'¶���\���"�K߹���w�|��(�s00�L�䔟Mg$iF��UM�u��0�}FQ�0
F�Y"<ץ�����t墜$�4e�fLҌ�������h;IQ�xy���A��s��c{ޢ�Μ+���5��\�Ĵ,,����`�6�T%�Y���O._�Z�u;�R�,5��DX&�Rq�USG�͟��/�׵���i����s��i̇�UY#t~]����yd}�,/,�#&�D��h��� �m���LPc�����+H%���.��S�)u�Fn�Ë" ��y�,��¦i��]���X��B��N���>�q�s�1����z�L';d�䘏�օ_��u8�,��S�]���yA[7��A����K/
�G�=���#�9'',Hy�;�������4͘d��`���RR7]�Q�-yQ��9~��	~�����r;]rg__�A���0ԾӴԄ�N����<uw��#�y�bڶ,,!����n��b��7C���= <ߥ�˓�)?�s}����ԝ��:<�g-8��qq}��8�r�UQ*�%���ԙT�أm|�:��1%)
���hK�@A��{1~R�%މ"\��7MS�$���9o�YZX^����4ML�Ĩ���u+ӄwj��O��Ea��-]�,���EZ&���~��%a��f�I�W�vTMg�" ��0r��".���)�F\�E̩8'��@�r��z����t=�i��d9iQ�Vi]#ʂ�m=:y���*
����<�o���z����jđ.�kT)\SW�M�'����"�pjČ���\�=ʼ�.+ڦ%�s�q���XJ�o��*k�O�r��)[�����:L�d�rq0��ڀ$��k[�u�)%��6��?���?>��O��K�8)=�Kc;=���C����Әt6��$�R)ϼ*��?��ӄ")�H�ҡ&�u��R5�� �@��mjoE�S�u]�J��[�S�7�j���X<��c�m�,/ؚ��}�@�R�E�ş���/}�P���]�����O�K3���0M�A���G�m��\<׵�n�=FJ�w���1R�a/��l��.�x��&��G����2Av*Ƙ&��	��=�{�L����l��IgS�8��R*�uY�>Ju��kQP9e���	y���3�4�,
��F��X8+2�V$�>��GQ�$�qҌ���%�d���r��"�}�/�L�k�%�)w�:�iJV״�cs���p��k�vµlʦ&�jB�[N�׿D2�o�T�z�E�0)��j�蠒�����8MI��i�1�r��))���S_�TK|�8�����վX��UL:�/;�H6MC�g:�^j��s�<����3-�z�Anǽn�i;3`\�L��~�_=|yƸ>� ��?L���{�~��r2=��x�n���ax.�GC�զmǜ��pm�_�D o?���٦������kC���ϯ\���1��TMCݴ�mUB`�)^��9�ea[���s� g�D��O�J�mS:UVE�����f�3ZZ-R=?>t�� ��۬�#.$UY�TIY3K3�Ꙇ��2)���K���N|� 
�o>�Ƭ(� �u�<�����G\"g���o���t���_�s��%��.T�_zq�c�t�Tr6�U���00�]uC���1QR8�ؤ�ZڦU�iR�Y��rn8಺+���)�V��o.��8I�ۻ\�%\��À�^���f�QK���G!��\ߚ+�ӧ״����E��y����/���#����ܚ��2|��Å���:�d��
r��->��#++Ҳ:�����	n
Z^��O8蚜��d'ql���3�;��e�'YG�xo�dq����X�9�$��L���4���I��:�����X�v{�q��/�����' �E��/��ˆ�$yN��C����ǟ�m����{ O;S��iJ���i˒�S,뚶��:=O\�s�Ki0j6�T��,���XC�U�&�4�M��sE!k�WJ4��2M�#�i�T���o=��~{�s��xzO��EI���HU3I2�uy�<z)��W�=,���|�H�u��e})Ss����FB<��n0Y,C�g1k��2OR����$#/k���m�E±��U�6-SUַ-u�QwM��JI+)mC�x��gY�|����|>�����*�se,f]�Rj�a�~�0�r�d���Lc�\��8J��f�v*�1��ڇC"���t-�q����Kx�ô�����	�?��$N�Ʃ*�h��#�ʐ�34��1��a��kB���lʦ�j[��������LE��q�Q�=�
�G�m��<N"�{�{��ߓ�ũ���|��^��!R�:�rahS�9�@���e'N���#W�X'��G� ڮ�s�c�ͳ�����m�*x��A��:��2mZ��1EYR�*di[��(X녌z���?|r�k;(�F
�u�|�Dr���X���J��֟L۶�����eQ4۳�Ov�ٛ%�C��쿖���9m�Q���ȳ�\�f|�Wos;�g�(]OS;-sL*��d���O���m>ڟpm��_�j�BO��>W6"����˷����$�:)a,��U΍F��M�Qꩱ�V�x������,Sbz�))ʊ�L�O�^����NMV]�c����;�	���4'�j�ƱmO���� ys4d�"8R�we}Ğ��ہ��c������,c%,&��O^Fۼ��,�b؋X���k�tmGVT<zn�P��hJ������O>ǲmTς2:YQ�;�2XJsZ������v_�R;W�Z+]B�d9���s��
��ʊ���nq-�Aq��&��m!��y��v�s<��'�Y)RZ̲nT���Z�<+�˚�n(���R�ʼ�c>�����>eUQ����Iʞ��<�q$����oݲF�uݵm��d�Ũm9�G{c>ߟ��t&�.~h�6�6pysٶ��[���1�����0ӛ��(v7�R���7��7_>DJ������sp2	u��g]Pi= .���M�������j�d/M�KT+����z�U�dey9��{L�\ub긤�:\^��ڐ�����ƪW�4�m��:�ȹ�+����~���^��,�s��3}Ӡo�<wq���eHe�ֆ��sq�[<���0�@ն$U�~��5��5��Hʧ�x�+��38sE��=>��c?Ih�S�m[���]��G�R��8���RYL��_�)��>�\YhUM��/����5M�BD�U���(��Vq�NBYU��3ZI@�d)���͛*�x�����P��唟������M�6�B6�}.��TM#�����BD���{~�6�W+e1��K?;��p�WY��e�u�2�*½a\��*�%oZ�Q��-�iС��Ɠ�wvY�*'YN����ǯ��u��	ۓYQ@����pq�P�&�N���:�48R�
Y�o��S�F�&*��>T�~ʏ�m�_�m�J�,F���N�x)��!�مsr<�1�j��[���޻:��UH)3uqw`�U�nI��&�{FQ�7��k:�u(ke��x�O��y�/8ub�X��׵Ӳ=���%%{��"�ru:c7�)�C�S�d-�	���6z���ﮚTE����P��ۓ�n*�ȣ�|ꍗy�������kZ(�r���0L|���ڀ%�i"�>Dι��_oP�� �T��gO�����yn�0��Ɍ�4'�����w�YU�U�����I��Rj��k��cYt@�+���	=O{�����PfEA^U�m�k[���s�>熇K���4�cYg��85����^³���[R�]�Oiղ.?��c��M�gY�B�s���~��k�E�K_�9Y�����>�RJ�iF�+��,g��E�%�乷_��/h�H��A���k[�`=��T��Wա.�ȱo{Uӽ��Ņ����X4��u��	`J)������U�����<������������Zy��+�.��bYY^PV53`��ҍ�����'X�RG�b=xx� 4��c�<�a�Ub>��ˈ#�ኦ;j9e�u\O��9RB�8D�͹~��6�AJ�e9��q��=s�2ؕՂ������%�IN)A4-���Ο[݃���xRW�8�?��#M�qU��)�_e�b>��� ��P��r,����S^O�:��'�R��k��\�a�N)9���x��|�'�y�())T�Y�a �eR�b�YQ1Q�\�*�GK�ԥ��F�}�bu+�;zo�{�M�{��E���9.�U4��tg��ɔY�Ӵ-�e��\�����k���4��a�Cx�����&Uͤ����j;IUהEɥA ײ����Z$y]k�"uL���ޗ>����V����;��ߨ<_(r�e]n�)�$e����EJ=r\ZQ7���J�u�m�,[�w��ܗ�S���m֖j>��#�qL]*m������f�P��ږ���;���n��_���y��g��2��|J[���Uxd�/�V~���ﶶ�|<a?M)��4>��=t�X�󽩶�˖��H��w���z�s��e!�D�J��x�c���!Iʊ�Y��p��đi�&���c^ܱ�\�ܣ��z7N�o�oq}2#/+L`ຜ�"��y��&���]s�v9o�O~��Cv��Awxb���q�����iR�5�T��L�H�$ˤ|��ød�Q�G����v���Y�r}2ck3-
�O����u��El�$z�빔E��(r�MB�w?|�K��y�:k �n�]��봤ߒ�5���w|��u�����H��I��'W.J@�d)��o�8[��.x�K�;�);�)���n[�"pl�f=Y��{=����>�$r����)�1ߏ����:?�'dU�۶����������(�EU�HI޶��9���瑥������[|Tܕp�4����Lg	�YL+%��l�>�>��������Ҝ@��.�� ���S���4�w��=���\e{��alǞW��N��{��B��$�kdY���$�c^�vy��.��{��k�Y�^�]��eNL!�m��0��p�嵡
���-5�y'dE\Ͻ)R�蝃L]v\:!�lo�g{��TYK	�c��=�QH.%�-H��Ϻ���rAJ�ދ�>�mӶ-�4gwsyI8��7������GC91-&���8���agjƸo��uM��8��gy�C��8�7�R���^"r�N��ۺj�-�̚�k�)����c3�<֣�)����'M��2��J��<�$�sfUM\UY��xƣ��KzYT�?��ăm5�
1�D���6��ex.�B���-U~�ɹ�qx��_������\��!�1r^��F��n����)�M��uو�E�@��Z,�����g�|yA�%��(�Y�!۔�-)��l�6<��p�U�'�\�<T����,9y����29߾I��'_	��ERUG-�l���Ә�,1Q"W��p~���>K[���y�k(��:Q�1��JJ����0Is,��/�~.��x��]��ڻ�;J�#�<�4�~��6/�Dq�S��S�e��.e��&)�����?mmS7M���f��IѶ��4n�?�C^XR�H�l^�L๤u�8ˉ�I��t�M���vB߃�;B̷�����Ƥ<�\��L��O�����3]vVT�I�S�Lg��b��2B�f�l���|����49JηoP��e��vAJ1�Er�f�mG]t�M�~��#��;0��^������n���i�M�����H9�w�iP,��E!s}��nﲗ�ȶó,��*yD���CQ�,U{r����ǟZ�y,c���Q@�w�-���g9��x|F�%����⻯��5�)��[M�H&wg1;���8%.J��1M�{���k��U�����:�=�z���\/W͊r�u�{c>Ϙ�%������#�ӳ=潄��$.�c��N�2�rf�C��j,C��*�9�9����ϵ)ʚ��0M��m��&��nB�c�]a��e9I��Y�4#+on�Ճ�{�VU/�����B���6�����qu2e��:=�b�����������+�������B�_~���}"�<<��2uS3�25*��� �޳�sXN�3�ُS&y����sUu���X�BΏ��u-¥�R��%˖��L�8�~��%�ݹ���^DW7�-��p�U��i1�h[���n����>�qBQ�H�u6}�q�h*�:��-9'˖�v��U�o�i,�s��b��B�\vжH=�v�x�qOY���Vݪ��=�ж�B%}aЇ��蠷ܴm�#٥�sy���'��¯��F/����i�s�H~��Oٴ4R��qN��>ȸ��m/x0-òq���ԋ�">�(��(誮#�L�^X�wo� ��>x��A�0�d2)I�{ƙ�g��DZ8&⬕��)b'HS�a���׆Ȫ T�P�&�2L����:������b��Qr�a ?��!�%� %������� �"�	 ���W�0��ly!���K�w`Lȓo��)eY݈���1�q�,/���4��\�\hd�A�^'&냅��^�$N�����2X�F��z��߯���)?��ck���eI]�D��%]jW�%����+�ibf'$�����N��^��~�C��Z)�ZN�5���4��j\�b=���to��95�ib�����;0��Y�n4,�FJ��Bb�uTק"�ܞLىSv�T�b���E\y�`� ��>sr�3��r�s<���AQ�ڛw@A��~�7���uMs�r�*#%��Sv�i^�%�a��&�ֆ<v~�P��֑P�V^����D�Uܓ�<<�g����\"�ܙL�KR�Ҝ�((놦m��祖��B[JS��/��ճf��s)��x�oU_��n����&�����ZnO�l��LʒY�Pu-϶X�G<��A�ub^��v�a�4�1�� ��N|E8a�LN9�Ɖ�<-
���A�碈�K�#h;aM�q9߼���gļE�{��jLf�ܝ�L��Y^P�-E��	�4�å�!mը]�i@�q9߹���g���i�2�%�yNVT�M�a�a����}��tm+�%ᅓ���)ጘ�9�S~���&�M���-HI�8D�ϥ�!W6�؎a�&]۲ǜ��}�9ϖ��8#� /�c�M�k�S$*�hk�б�z��W�G���z�q��`��ĳw�J�-��K�P�c�m�Ԣ���~ą~��A�k�����X&�p�?���w�B�1�ۅ§�Y6��fYz�� ����∋K���P��\O	h�yFʛ��ż������j$�������;
�@F�;rmܗ��L�>���Slf�$ՄD�!���pC�<�'�^�b|���Ӟ7��M'gWqi*��U��;F�����.�����1�r&���q���Y>H���b�+�pO������U^�q;_����[�o�������$$$$$$$$$$$� ⰲvQ�N    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/jellyfish.png-22f2dc03735b03f596147266df641ab9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/jellyfish.png"
dest_files=[ "res://.import/jellyfish.png-22f2dc03735b03f596147266df641ab9.stex" ]

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
         GDSTJ   H           d  PNG �PNG

   IHDR   J   H   Qcz   sRGB ���  IDATx�����u����\{�>E�"mZ�A ����VXN�vl'eGqİ9���1A��	 GbI�e����kv�>^~xݳs���.wE��(.gw����W�^�zբ��F��i7`��o@M(ާy�C��C��N�F1��V D@�q��q�]w�������V�M�k5����l*�NA5Ðr0�����[���CP�׾������^�j�q��:?��]���*��w�}�f'b� ;��l�yn.���?Ԧ����k�@4H{;�J��� ���զ<P�vH�	5�AM����>����Z��ND�D|׊�+�(���(�(����#��$�$	3�B{�����m��*��]�����!��N'}�E*��0U�r)�sT�@��6���h��zj-h�2��	���2�c���}��1(�+WqS�1
VZ�v�fK�0Gf��3pdf�)qӦl�&65N�)��ڄ�*���7`�k�ĸ����Q� �X��䯶����|�ۗ<X)(m��iϡ)81��>'�a��(�$ ¸����(�V��;�V��U��}�K��>��������y۠�WްF�(Xڨ�H<�L#gó���2[�R\ӵ{c'��@��.��͇��%X�A3U6�ʃ�ɤ���}e�����0S����K'��4p�k�N��i�V7�[��E�ѤX4�ʃd@�ӭaM�R_#���H�����Sp�r|��Mg�=q�lZ�m�u�.zmW3W� e���fM�y�d��RX��9�|�,r�i��n�U�.�1��\E?^D���[��~n���]'��y�l�%(��U$}#��I�"�Õ����0]B��o��Qa�F�q��3�iI���3l�D�$�Z�`�sn/�ŉu#��:4��v��F������$Q��vj��sǑ߹dF�R�WmG�`�C'�JT���5Wa+�c�����u`��t	|o�q��2]B.�6��s����3͐<H�d�0�x��(�&���#ȗ>�YǇjh�pk	޿m΢��XS�ɣ��%�&����2�)�(��N _|��x�
H��\<a�b���1X9��W��5�#A�}�;$r`����9�K���q(���MlF���7ͩ�H�v4Ph'��+�Ѣi�`�Y.¥�#/U���	$��V���2A�S@�4)x�-:Cp��],%Q��߾�|��xH�Φk87��U���ID���(�F/�0�J9@�;�6Zk�Y�S,݋��=0ɉq��P���f��+����٢�˧�����?qOwA�XLZ+E��i��9�\:�N;̅��ݾk'�nℰ������/��6q3?��W�ϟ�玓Ċ#b~�M�^:�eϡ��9�USwA~�f�����©�ų0U$�	��󎣄8�Q4�g߽n����1��F	a��]9<���%p���M�����<sy�$J�
�D���&z�EOm� pMFW��ׁ�3p�̕I <���˕�J��\P���ގ���ȕ���*�Cz�0��'h;D���L�j�L!��"��σîG �������aso\��03�1'5E[�Q3��V��M�K� I��6eb�9rl=� �Q[�}M�E` T���htr<e�",L��"�����<���ԁ5��!8�Qq�E�p������鉭�6���g �ɁU.�K���������?��iX�X?K�\]�p�i�'�w;>�w�}�"��+��:C�0��R��vh!�`8����L	�)ZH,�s�����%�n:�"�t3vL �T��9b�*[��k���慚S�Q}<K���}c����g�FH���0���*����@���0�H<��c�80�嫍�сV( ��^u�rrp����AU�������	�7 �0<�3_;�f�_8b���*�'����;�<����6l���Gy�U��T�ڂV�2��(l4�j���;�#A���q�..#�N�z3��Xz	�zV� PL�O�2����PkṵgE~����~
"b3�چ�7�����(�s�
��k���Ϣj9����M�(�j�V�>��>Po���*$
�aq����%������^�tZm:�M�3I�%�W߹~`�2Љ��*�����|��	�vB�t���݂�F7k_K��r�<�v�8��P�g�� F�z՞��T,mk���{����'�����K��0]��j�m�8Q�D-3-pџ}������&��-.o��Pm�c<�T�@-��,>���\��N�{���~����� ��T��8�ꕸ'Sx;S�)����1�^B��� a�,Ç��֢`{]m�#@�?�ϹV�E=���T��Dv���$k�qJ�i-!�!�x��m�׏q����[[GG�jT��v�Xr�~�	��;崕�ff��݅�6H�]?>�6(� �u��;�/�"(�R������ ��|���_w6`��I���ܴ��ߺ�V�wW��N���Ͳ�K��ifw��ƄRk��}�&�۔J~_��[��_�؄�ʟ�]������t�Q[k��Ĳ��G^<���6!�]��F�g��?4k���a�ڀ��q5ͮ��i'�g�Yv��"4Z赻�|wV(=�4��zG��0�<�D��n/$ )NU��р���׀y�:�(�>rt��1�ү�!�ߑJ.�1н�</��ȁ$���k�����8Np]�8��`�:�8�Fտ��l���m�J�T M��:�������T������05-�-��|�J��R����ǁj}�W追�V?���3N�;��vu&:4T���7?��ɒ�t�z�e�2W�CC/]��6|�iB�N������%��]Xk���T�33��M�u���Ț��&�aHݛ�(���7��r弝�����"Yt��F?�����Y�v�c)�j���UqE��րK4T����?1�> 	�z�\�q4�c۞�� �#/>g�@���.�.����#x���}��	��$�3�$Ӭ�'�g_�]��׾��+ E��Z�cO���B9y�8{
�'���.�L�Z�����z��n�+�b@���3���	N�6AL���^o�B,���(��~~������p�x���@�Vd�<���	x��^���x �,R�J�R�m�{�aM
	v �{ᗯA��)~s���U�Y�qZ1�4��2r��>�,L�|�f2ϥυ�5a��.o����;�^o��P�،'��J4�m(��UcV�H�� �W�5## ��:JܓQ�M��8ษ�R�S�
I���N��l֕�d� i,)��Zvy�W�|���ϵ0�B�T6�RP��h�E��a�%�g60����s_��R�j�%��q����Z?�?
����Kl��7� ��{�q�}�E/��J�a�����$=��+���X�ك,�re���z����k[*��7� ��+@ *�yTq\Y��/�^��K�'���QC��+A�[&�|a�ߝD�2Yi�}�Z��vS���m0�v2�}Pݿ���_��'����Fܺ�    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/pause.png-8b1acaafb8b39f8fbd6111e77f6697a5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/pause.png"
dest_files=[ "res://.import/pause.png-8b1acaafb8b39f8fbd6111e77f6697a5.stex" ]

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
     GDST              rj  PNG �PNG

   IHDR         �x��   sRGB ���    IDATx���y|���?���w�@$��X�"���Q����[�j����nm��֭m�j�=���j]�z_u=@< A<PD�zp�$�	9�N2����$|���������|<�g�3�&����9M�DDDDd,�R�  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1  �1 ���'@D��d2et|"�(Й�����dZ���F$���J.?^㈤1 Q���K�u��H DTpy.�U N0@� �ռ��;�� �(��\� X
�, ���3�68@P��x�# �(/�X�� �A�� �C� % .�h��� e)�w�s!���&����}b ~	���e��GF� @D���τ��_��o]>��� .Сt ��dT D$)�����OВ�7O#�+ �Us0��d4 D�`#�S�����3� �/���a  2�<|/�H�%�~>�<: �^U:��D2
 "��H��8܏�v�~)� ���� A" �rV����~�E�~�~��[�q�E���uVo�Ώ�6?q?zv~����\$��n�De$�Ds� + ��5�ċ.Ǌo� $gLjk]��[T��E 6C�xD����A��[ �t,��O͛��7�⫮A˜�a2��{vl�����PhY�omǵ�����*�>�����y�7��  ��7��d@ D:R���c��|�~������wZ�,���p��m[�_]�t����[�q���'�]!�|x�?����z3��1@p�ҁ�^R9a  Ұ��_ѧ_Pc����Z�,����M<�����O=^��K�^������;-������|b���� � |bAE�nR9`  Ґl�3����G����-�N�'�4kv���Jޭ��/>��b������9c�K����=��'�Ȱ5�y W�V:��N�; ��s�Om��E�?��[m�hs��aoe�l�k8	���.�R�?���9r�y��es���'���M��^��O�9��P�+ �"+�H����t��؂o�چ��l�T��Vf�~Ｒ[7�O�|}k;�]��ļK������Ï|�+����D��u������\�[0~�݆|���T�7[,�im�᪺z�w�rvlۂw_߈tw����8����ˮ�Ƿ��������9�.�mk��t ���7 Dy��_��S�f��ͥ��˯����:�c�������ۚ����\�����Qj�^my�ёgn��-�� x���yM%�`  �Q�F꧚�53R?_:?|���klJ��_�ՠ��� c��y3p���/�.�� �*��*� Q�
8R9� ����x�M3ۡ4R?_������j�R������5M-=��p(��Ͽq���=��@7Dx^�@^[I� �T��&:�p�
���؂o�;"ͳ���*�R�����ظ�)�R�����O=fn�����VF�����%���M�H� �$`��
�*WW#��a�P���Q����_�j���S�S ڽ����wg:@�U�;��u����������H�|�����ޫX�/��Wѣ�:��[
o~����_��5�0 �+ Ps0���% dHy.�?5�%�o.e�&:յ�Sf�y�=R?_���_��N�೚؝�c�����]�� An*D�� @�P���c����7�2q�~���v��Y���L��럏�~�-28Z{�-�@���R�F꧚��z�~��r��d��Pb��߫9��_*% *���*w>�8R��t��f�-�H�|���{�-�Y������Ͱ���d�EJ��
=�� � �b  ���]�\��?E�D�b�7�ω���u[��ڳ��k^p*��<���jJ�n~�,6��X�t ��T
 ��?vj��G��ˁ���k�=�Q*�W����qα���?X�:����dS����\3�4��4�@#�S��-�|s)G�Om���l���כ���/?��f������.����%�.���J�L�� @���_��S����ͥ�m��U��Nm����H�|�_|�]��ϗ,��"�G��k3 �LF꟎�M�����R&�ԟ�>�T�Mt�j8���N�f-��ϗ,��b� ���b ��*�H�T?~�G�7��u{}����75�hq������n���k��0 PA`�~jj�"q���f�6͚=\.#��Ei�}k;μ�{8岫�|f��5Ho (�
����w�+P�Mt�K�i֜P�7��25s����O�q� � �IFꏝ�ג�7�2v���m��ɍ����F���6�{ѡ����O�����w���C���k6� e� #�SM���#����r�M�D�5�;;¯?�ҭT�������ۂ��?p#�f  �*�&:�p�In>�\��Mt��Ͳq�~����x��'}J���~wO��ē�{<�׿�?g�%�b�`�ҁ�~S. �y���������؝����G��m�
�����C�J��������L����Ś���P:��p� b�~���#����{+�X��,�{��;�����V\�(��F�������p��C���k9e���
4R?��n�F�[���i3�#�_xj����B?�6
���v���G�1g�p)��J�zN�` 0�l�s:��m��o�9;X���hَm[���!7׿��)��_Zy����2A _p���y]'5 �PFꏝ�Wԑ�5�=S[gylv;��K@i��xs�������z��> 16��S� �@�F꧚�9Rߠ�,�S�ڎ�~-䪬2ĦG��Ś�!�ؤt ��$�@�
���|�ǟ�"��wz������H}mٳ��k^p*�/ݿ�_��¿�e�f��!	*�u��0 �@�>p�৚�������4�>j��`�Шݝ�מ{Fqw����A��c���1O�v�_��/���b� .#Lc и<�9ߏϑ�$i��ǿ��G+���g~y[�m�b6�@ktC��5J�zOc1 hXſ��m���b�Mkks����~�ߧX�/��Wѣ�:���FF�����y���S!1 hX����{�_Y[pʌ6/G�����p��{�P\ߟs��'�w(����e�%�b� �&E & .�] 3 � |��đ�M3g��N'��˄��~8׿4�<���37���e�)� 4,M �����8R�8���׷���k��S.���gF)9,#�m�K��` �0� �y w�{M�D�i��Q��/j��s�m���5��;�..#Li1 h�D �
��|��đ���s���j|Q;������}��lh�֕O=u�w.#� �*�z`, & d}!�H}JQ;���;�On?���9��{��O>��wB�'�e�	 ��I� uj_?v����^��' �?x���S�+N����;-�pIf�r�K!�d�6�? � +!��K۬﫪��:�ő�4V`����c*����Ȝ3V��xj��,v�B����Y#���I�� �^�X_u�sA��q
��H�p4\y�]^�����s��>m+�Q������3�x�U �d�(O�R� e$�9G�ş������u?L���O��֊ߺ���G����j_v����*�~$� D�c�t��^��Ss��Џ�}���|旷�2- ^�=�M&�@�a  *s��ۚx������?�˹�O�h���s��k�g�GP� n�*�a( Del����V�����k��85���W�P��[7`�w~ˠ5�,�.�J2� �2�w׎��*���������joO����>k���;�� �B��n��.�c  *C={��^Z�R*���Ӄ���.�S�Z�-�]��k�� 1&�e��Y�!@� ����^�ƕO����g~y[h�1sY��UY�Y�p�>�A��%p�ҁ�� @TF"����Q\���~m����D�q+.r\y�����8�?p��.����!"����DV?x�b�_�Ď>�|ً9���9�V4�9u-m�,#�e��+ l�;�d2q� �` Q�x�}�ˮ�a��>��O�w�����H]slp�ҁl� �2���wr� b�?���朱�u�=Of�%�� �O�YC��1 �X8���:l{�ٹ� 0�S�v�HO�g̪\���&2h�b��\����HǶ���b����������.m|��{��\�0�+L����p!`&�7 \�t ����j��?� �H���,����HC������j���?V}k;N��r ��n��4��s�
" <�׿�?g����*Ț� � @r���Jl��5y�'
f-:�髛�&j��V��?���n �X�t �6p40�NY,���o�g�x��?N��@��P`�Z�M-}�K�9
���>k������+}*C�4���F �t�nnJ�- � ���=p����P`<������n�d�%�<�� Zd����1 �����ݝ���S5�Ɔ �m��׾d��r�.3\F�<���37���A�X8h�ҁ�C�� �a ���Ύp��f ��Ȉ3��� �T����<�y�m��_�lE!  n�m�t	����1 P���P`_Ǯ���&��m���K�܍P_�áȚ?����#��3� \
�C�@֤�a �0 *�T(�⣣V@;���q�@��ef��{����ǯ��+���*��ҁ�K�� �a T,��Hpo��Hpp�����:������x�2����D ���TX � @���P୛<������{2�Y;
^����Bb ȓ"-sy �������Ύ``��z46b
H�`���c?�֝A�B�ܪ�`֪��m 0��7��4F론��m���E5v��U�2���]�W��K��?16`@�@��+��e 0h� H'R� 88Pv���`���"���c((���otկ~l� t@�ؤt�k�V�. �� �c#CC�ݝ���C��o���|�jo! �z 7�9Xo�K�t tT���_R�Az�vk�9)^ u N�D�  �#-����4sv��%�N_��$'�s����wݚi��J�e��+����E� f����D�RQd���y�	�A���Eld$rpOW�`oO���`(л,v�����JꩆiM���|�n���ʙ�CA}묁��K|��*OINH:6m�dgA@t	��[��@9�� �W�S� 2�T(����F>.�Z��`s���g�쟵h����,w\�Сt����= �����9 DB`�߿�c�9}ܭ�P�-[W>1�ԍ�ud �<�t��jZ��= |�Kp*�� @��VC��n��4��s�
���:�8����΂���Y0�t��j[��= ܀4�⌆�(3������p�������rg��!�~_�@=շR�{ ����L���t�����=�F$�a  ʝ�C��Eg:}u�}E?�{������ߜ�,�5 w�9XOu��� N�R��S����f��b�l��X-Cf�eT�9��:���N���j��"����
 D����=�V��B(0[��ڦ���%��
��Y��e���`� Z �Jw��斑��M�B�S���ڍ�ݝG<� @T<�`����Xpp�&�CA~d���v�..#�!� +��t�7LkƔ��=�bc  �&�� �m��׾d��r�]씘�΂1�����9XOu���  �i��e  �R��C�}������D<n
�:�{������t� ��*���W(� ^�H�	 "�����K�5M-�	Y�,��p���T�
��= >'� �A*��U��Q+��PP�8u�}�2s)CA�;����2�i�*  �!� ~(u����O[,��ٴ�������ގ����@5C�;x�����XF�r�VYz���P@v5�Y��嫨l*�I �qi9x�&�:cE�vzkAC���y��2�S���� V x6��3ڏ:P][7��'UD D4�p4����W��F�@����ͯ���+2�Y3�.#��r s �=��M3ڂ�S�b9�P �������������֓���W��;
�_��/�v	��R��d�6f������(������p�?��R�D��T(T�F��@�B0>8}�H��c��	�^F(�0P  �h�zB�@M�Oa  �L��tw��U�9d���A@qa�<C@��7 ̓zB� �� @D���P��x��f��o�����8bv�s��_������v�.�����z��Z�ȓ�	 z���������OD�O6��=�m�m�>~��O.����7��S32<��
zv~��~����:4J����C}���p��*�~&���U-#\Nt� H���oI���`����2�㟈- DTL�������3|M� ����X@H��RN�� �N�Do�'7�mv�f��LS�%G�i��fsMii�:�����R-��CU�ш'�x	�A�� � f��S *k� :�=1� ��jj5 X���I� �q�q�};��p��)�j-�r��Bl.T��% �.�82<����#ᐿ�PoE�?���;#"��UUW��4�1���` Ѕ�'GF�Kz�?��WdY�� n0
���zrDD% 
Z�9޿wG<�W�+a(P\1P��% $���,�<�����<���x+�*f?w�c%��Z� @��U:�"᰿�PO.�?�^��)��zrDD:"
j&5�_��G�(�M����&0 ��P4�?�s0��gP�V5�ф~����xr��!��BX�t ���Z %���B��x�=���QoEU����6L�����HD��p0����6���[|��>�%a����&�2 �!�@Cc�f�����P����v��@�ٰ�� |�5h�s���[��a���wy���ɍ56��ဈta����7�<_�R֣�S�) t�{b(A8TV��% ��{����̥�?��P�u�	j��a���c�#M80[,1|Ẇ)D�	��������zo���3��b��"  @ld8�}�SJX�S���%� j ԤN�7R�0���tz@DT`={��W=]��]�ص{վ���#ި̖ F������@�O)�TG�ppDˁ�l�����d��������_X����f�#qي�XM�%<m�=T��,f	`4�0E��o�f��:�l2o�<�9� :��̀���G v�:B6��FF=�y�z�s(�k |�4�
�I��H����wy���)S+�NW!G�Q�8��+�ꪧ=j�[���U����_\i��-�]���� ��r������Z+�S  Z���&�X,Ի��P��\��_qǿ&�)|�� � N���
E����ZQ51 ��[1�p@Dc����WW=�SS�S���Ox#sg�= ���H�r� 0Ƙ���X�k1��A�L���r@}&߯�$� �nO����O��u��y��ADڵ��ﺕ��ۚ�diUb�I�p���z��=x���kʳj߫�c ȘN
�X7'�Ʋ���j�6��gB��i����8z��	�|�����&~xM���*lȠ�z����5$w��R�c�?�Ѣ�F�>rٵ &5N	Z��q��C�#{;;r)�oC�'2yQ>P1 �'���e�NW���'Mkr;��hFb    IDAT�"�׹�%������]75|�q���)�$�uQdx�w���� �j�ɵ +����(��p����c˲���	9�ڎ��Z���RK< <D�2�whp�{�*�=���?=��\��H� X�w�@���'�w�tՆ'GGGG�Z.�_���N*</��4�qelvG����O��t{}%�:�Ȉ�u��������\�? ��0Sh�!���#C�h8\�g��l�{;��|�d�|��t�Q�` �V�n�-ab8����4����p@T#�Cio&ښ�Ԓ�!��L���7���!����Un��/<�?�v����M��*�h6��EGTT A�lÁ�f��}�����Nn���l9�6Id4�P0��mi�	�-��M���}\$t@b�T97��  �93��¯�����T8���00��AAW:�V�p�L~���:�:v��M����� (ݽ��ث8�oe.�W� r|����ɯW%�KZ��i�D@H����m�������O��5��=�Y����rW�`R����� n��H�t�T���x8���ւ�AO� �Όd4������_��*1mr���
��b0���]�4#�3��¯��� �Mɯ���AK���8�lp�f2�x<���dB�w���#��8 ��@p�F���: �1u��,�y��p�ő!��6�)(n����µ���3#�H���j�!���O�<8��kH. �������= ~(�|�������Ab����AD@�V���F&��6���98�tCh��)� ~�3 �%�����ꁂ,�����-B@�NH/���p`P�:]8p�=��HZc6��7D]�(��r 1 � �3�� ���; 7A��~�| ��ĭQ����O�M�$ ܶ�� �� ��:ܹXi���g�Q� E���WFX��C��`�ΌRK(kR��6{�~���Ό�Uϼ<�P��g���|@�X��K�Á�Ό��ĖM��L* Tp�fҪ�pBn a] (E��L�Y��h8 ܶ��Ff�_"�)�
^��x0#�M^P2�m0�_4���J�6�VE,˝��d2�!ƢaD~Yo�=��������2	  �9����m&]2�-�HS�ya�t�9���j[�P׽�(����(� @TJJ�6��V���~n�lV�}�C�]Cxjݠ���w/$3ڍ$ Q�i(��x��6SI54M�����>���|��yɲ��mQ����C#��^�����`  *)��m�px?n�LQQS[1�cＲN���k����\ua���|r������1 i���A&�6k6 ܶY��L���k��Z�ь�Y(��R�- `  �%�n��p�7�[�-s�Il������L�,��jv�cfȫ��q���0 ���L�mNMm��Όܶ9Ϝnw�d���5�����Y��Z�n�(��z�߱ �D���6���G����H��$?��P\�t�^x��� �D8�t��ԟ��3#�mN��r�Z�9.�e�ڴk,=�<�-�M� �meH D���6��m>���@����k��
:�iK?��_���#v�5b�?� @Dy����A˘��$�n�<�m��W]������֋Ϩ
4��$�
<�n���� ���4�m��8\n���Nڼ�%�i|ۻ�L�<����I��ƕ�r�� DT2ޙ��6�H��֡��[��xh��eV�sd��
[�o�b]�q��� &#��D�OE�(Gw�6���Ό[_]g�:���Ɂ������WZR�}�~�r3 n������JD��ܶ���`r�􈯺Ɠ�`G�~q����Ĳ��f8��m������ �ah��@w�6�)�Ό�^�0�e�Z��qmM\��:���~�L B���1 ����p��m������Z��=� ��/� �N|������H��m���m���}������g 8���� �u�F� DD9�H8h��vf,� :&>h��� @DT �ܶ9��p��Y�8���`40[��m��S�>�b ��h��@��6��[ ��1 ���m�C�g��k Q��h8(�ͣ���f� ������6���� ��A�DD���m�m9������d��� �m�7X�	����� 0��d⇃�(�\���� ���R/�5�0�1Rd�N��r��A�G���0 ""*�R�ּ� ��HS
X��c  ""��6������Ḁ̏>"""*> """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2  """b  ""2 k�O��rg2�2:>�H�L�H/L��[��_
�D�� @�c�(�c�z@d D:���/�����1 D9�*�(�f 5 �� ��@ @<�7J�|���(��@�%�w���7���� ��R �P	 � �� �`3� F3����^dӢ��Q� ���� `����2�T D tx�} �F�-���r���5�(; DY*����o � �� (�\*l����� R{��y�5���2��0 e)��s��<  �fzJ B �<�a�0�j�@�?O>3�zF�e!��e2�
U�����u&��0�l ���"�q?���15�qDˆ�� �Bf�B�De���
4�>
�%& u .p.���S�w����/����0�?8"��h��bfC�sa R�. �1&ޑ�����fk�sX q�i������_ ���ҿ ��'�@�y ~
� �	�x�W�畗� 2"nD�$U�M&Ӹ�t����f�-�;�|2��g p��fP�b&�Y����B�uh��5�%� �����B�CA�9����&�XQx��,/)ǟ�>�}�B�b��P$D�1 ���a�x	b�!� 
� �7��i���j�j��X w�ĸ"�  R&w�Œ��	�Ĩy%~ A(��K�C���te�� �� �p�\�(�� *{H�������e���	��Mȇ�ȊEu�_�t�Yv���1�����Qէ	1.��8$y���!q�.�Q���=��C ���^���4@2=�<�B��_
�D��K�՜w�L��cf�  s�T�~q�NW羨��A�� l���@�S� v@L�ˤ��b݂�!�y��H4� �0�T��vQ��� ~��<��t�Ԏ}`�
�?=.���M77:�TK3��A�B��&��d�-�Y�� E":��AO���;�y �zv}�����q������������M���\ n�X�/����DI&��oC�S8� �~�
��ʞ�/�J�/�
��ϐ�ܧs_�����ׁ�S\W^4�|ͧ�b*B�L���'��i�=튃*� �D���z�<� ��r��g�s���X (�`8&Y�S�ί��&��x� MW@F�]@����
De��H'䊖L+� ��!3�N����}��k�+է݄'��
0w��!ȷ�	� �	"J���V9^�	�� ��^׵?��W^6������J}���'�\�!ȯ���:& W��ܹ��g�H- *K�����됹s���7�,��~�5��`pĘ�#��{����x닗4�*����!�p�3� Tv�\�Ӵ�B,���	��K羈b3�	�+<�V�4Ho�x�l[+����N���N�,[P��^�>�4�;#^�� ��dy1O���Q4���g@�'; ־��|̝|,�5q�[��J��o�(����G���AU׃e��0���v�>� `2'�t�	U3�܊4�*ω��Y���Q���ZL�XF��X���� x!�R$�Z���u@�sA��p0��H�&�5��i��?��pdT�{c���3&E~_�K�f����M�k���G�y}�|�)v��]V�%���h	�G �Y�Q�a �����@;��Bu
�*��e��p�wC�8D�&_k�Qԇq8�$sC����	�#�~��]��}ܪ�[�6�HH�>z�pҴN�F��x��/��,l�E�u�;Ծ�Zc��k�]�#����� �	�������R�d0 �k~'Dan�(�X��[�z ���V�ԛ'0~��Dw@j;��0aI~C���sQ $���.D+A8�5�,�I��*
Wb `�E�Ͻ�k������c�]  |��⥓C��w�ܱS|b��qw�
���k�h|�k/^:9��+��=,m ��⼈�
 ���o�(D� �C���H>f�(�c�H�M'>6��mɯ'��a���&���������wC�$dDe�XP2 t�~�/�[�  ��œ���ZL ��X�`����:ٿ�D|��>���m���?�u�ʽ��l� ;38'��� @����{,p��to�ˊ�����8�6}��a����	Q��!�Rg����?��.P��t؇4�� ��?�8�.��x�ᬆ�-�t��F��}�����d6��H:���߹�5����(�h�_��d+  �B�3C4�� �?�b��~�1��1X05�.`N��⎹�h�N>�	1� [}]��; ���='����-�=�?!s�mp1�; Z>&ShG��%bN�79wN�竗O����2!��S ���6Yi�C��� @����O� . 07��@q���1��% �V81�X'D��	�e�!Ġ�n����]�0D��#M�, 8���V��!Z<^��eo��>�>Q�������.���7 <�3���
@�OwDD��h��Ѭ� �'�_�?YCR�jN~� f%,�� ��]`�:�{�F2w�#�D�7�O��º � �B��j�9��+�U �q �"��!QY` �B�C��^��#����A�	 ��F'Κ_g�		�Iܕ��f 0���_�k����q
	��'C�i� �s��7A���>�  Y��D�?��c���x��촧9� n� K��jNw~)gLTWm���ZC7�.;��2 ��;�$[��1 ��(�'C�!_ф������ǦOq�����V鵆�*���
����z��bA���K�7����'L�#qS(2j�c�`8����фe�+�&�Aij�m�A�28b��6 O@�;��bj��`�x"���ɵ�A�R)�8��&�5q��MJQU�O�]���铆��N���|b<@ڕ�� i�B�BL���H���Ds�3q���CՕ���f=��뮫�;!�j����y���3���_�tr�������*�Ѹ3O��1��"���A}
�;�F��T��7���!�ˢj*`ʂ�՞�F�ܔ�* � ��qn$y���i�dg������&�>�Vv�"���% �Ƅ�l�r� @��P�}�|b���]�������yK�g/����W��Q]a�qr����O���|w����Vm�)��3N@�|��X�n���C�:�Eq��Pόi���eq���~������L��P� �lA|��� �tX�*�z!v0\�m��� ��R�Ef΂r�O ��)������䱕��*�ةxE�:�]�:Md�e����3`
�G]#��5���x����#�%W�KJ@a��R�z:uU� D�N���b��[MF�.
 0���b�2wN�g��u���kX�:�+jߗH� HoL[�~	�B��1 B��`���S�U5��IΊ��j��g�7��|�����̰����_�N) �B�Q�{�u��U��F�ܠ�����$���Z�������B�6��d~�U .�X.y��� T�8���q�9���U��'�>�j�������t3��c�,�DM���W^4����f���j�i��H׺��ʂ�FT�
8Qu��w��:�J�(�ZcN���䰙3�7��6�oŢz�ߡ	bI��1De�- �'5}�g ���& ��
U]������\�K�n���1��:||�ϧ�O�>qt��W�>�����оޡ�g�����]�~ +q�:���5ɺk��D�~L��I-��T����p�,C2�#�����lpʵL��|��m^D�K �'ſ�-*3�X����w�Dq�lv�/]�02��m�=�+9:�������<�@����y|�F��}b�s��w�Ƴj �J�-��|4�&H���4��t/njp�ؙ���(����-[X��㱴�[ |�C�5�5v�^� 
۱���= ����n�Y��[�;{~0�)�R/��L��X��t�a�8��kH�ų�18�J�¹���FHRN�h��lA�Oqe��3��m��!�i�3�}"=a  �p@,�2�}nw��}W��K?��z�ÀfC@M�����[�M��SSۤ��wC���WzM��Ѭ�&V�T����9+Ĭ���;v�)mpQcɼ��B@q�,Dk QYc  ���{��F1�����t���O�u�	kr�`jj��!&�b:O�=��7�s_�Ա'�����yX�iү8�|�����Bٞ L�uT,?�^��f��]���"D�� @z��o�Jv]�����]����a����F��i�)���W�Z*!VI��d~ ��hh8������ D��z�e��������U�|ͪ��)��F�s$*k �	 ]˵�1�-1����?g�U����Q���N����� sZ�>�� ���P���7�v�  h���8��mz_~j]|r�#�����'��Tt���� ������l�h�X��b���!���&�߇��u���Dw|G����S��
��u�)n)	�V���9\*��!�C�A�e�� �7>U�EՕ�����y�^���I~�5N$=�A�� Vlk��;��.w^��f#���� L�(<� ��M;�|���Q��h�yՆފsO����dR���V�)���������{�������fS�],Ƿ�jV���=��>�}�&��Fg��y5y�v�l6�-'l��ΆDe��4If#�a���C �A4gG!��	��`4�����A\�gBlI;'��z�egS�@��C��(��p����=ދ�N��d\NKA7R���en-3�����iq���.~��i��{q���1eq��{�sZ}�җ��e �ӐX���Q�a �Ub [�I;�|,��k��;�|~b��� n������m;�)m����}Q�o�����l-����3����+����8��.�o?O�t��\�?D Zp������XxB������m��g��ykq �" 2�� ��+���<�,� 2�aй/j����W�d��o>,?�>�0���*�~vZ;Fs 
���f�\��+Տ�5�s�7�۩8S�n8$�d2e�ET �)%� �!���� ܍��������]j&���-���
P��b�nM�~  8�f�{L] �B����558q�'kr��/%����Jd�߀�l>�T dtq�;�a�Y� �e�A��z��(n����ގ`� g�'�)�� vQ<�� s;�Gq&�l �@a;�sN����o:�Ҏ�>�! �Z��� ��� ĦC�x
S�R��Gq㟶{��#%	�����l��´�j AaJd.�  ��cUZ��8 Ur$������eQ3%}    IDAT
 �8H�ś���E�(�Ā |b���!��}Q���9��͊2����]1�`<n�+[\����˚���� f��lG�(+Dȷ �~
a�� H3
yǔ*�Y|�(�� ���B�C �"�}�Ǻ�����x�Q�V�& ��H�8��$��r�+Ս�vRM��+�+A3
s}����n��
���=�$��F�P��H$r)���
@/�; � �	2ŭk��k�3-ɠ�fWx����g�i�r�H��=����,oTlm�I�pS�d>k. ��c��D���Q � �"�B@Tv�6�gX����-�(�^�9�&��Sk����s_Լzc��gL.Iw��m	C~9۴[�658�2ŕ�Z�ɿ���ls�3��ot9-i�OQ���o�d>of �C�zHw�m����l�7Q� �,H���(�&ޟ����98��`N�GJ�T�����p@n9޴��Z��y�9���P瘬����񛮛l��}�%�PL����L�M����ְ X
�v0 P��J.���,��� ��_8��6/�ë6���XIV	��ټ�.�W�/�n3����tX\g/�S}|s�s���t�S���90��� �@P�d>s�~����9>$� ���>�������� �p6DSy�����G���A�mwi�)uQ����j�ly�ƨ�0 ��pͧ���񸑺j{Q�? �C1�9�	 �!V�TE���L�U�|�2Z��( �+���n:�B�w�� _��{��US�ӧ�J��X�P�x��Fgb�I5yY��V���'�����+/�fv�-�'�,��m ���^��0�W�b�' ��3A����M�cB~���� *���|�U��gY��!�\}
���˲�u�ɵ��ϖS[e�#�9��1)���g�x|�rY��촏�����S����Z��w�%����o��p�� � 6�R�W8�
�����ح�����4'�-W.ĵwa��"}��8��E�[�,[X���P(x D?����Z|N;��Q��~��F��ɔho�r|�bO��z��f���q O@t������k���u��PX��(_ ���@l��O(�罹љ����C�"WRN��y����?=ԕv�_s�3q�i��%�j"5���?���=�}\OHI�;v��O�=���� �$F�g0X�1��V���
A"x
 �̅��dP�S��^�5TSi;�Q�ٔ0���X��8�8Lq�R^�d[�£�ᑸ�f3�O:��^�B��3O��<���&�
�����Wf�g��� �6�ޅ"����#�BKHb���r�V�}$�C���BlSMT T�,��KP�9O���y5�d��^/�X�NrV|���÷>�i[ ����r�P����GW�wt�*5�w�����p5��A~�tv8���&� ����l����{47:��b[�Y>/J�/]K���6s􃎠m�A�	�}��g��N�]�ӂ?z�vS��/�(}b�����[�!>o78�]W� ����DY1e3��H+� DS�?Af�uS�+Տ^rvÐǕ���z0<���e��?�+o�G���N� ��X�Wi�������iE-�o��z���_9�	^��P�@�%s���P���tSl��Z+ � 0J�_��o��;��>��"��o0	b��v S4 h0b���/$��9�QF ��8!����k�{Z}��Sz~c��_붫(���=�0b.���b��6 �!Ƅ��K���8���B��t)�ݿ	� �A�"���_��a����d�Y� ��*���|+o�[�m�'�F�{�@*'^�Q�i�558�k��N��,F��xo�7��c�n����B_�q o�+ R�q/ *'m �C�m��u���},�e���A5��E����W/o�Ξ�����0��DE� ҝ4��f A,�+������#�9ڤ�xB75͍�������V��j1M�`WH�� 1 ���Th T.&�2�Z�O��a޻�٬�T��P�Ť�|������N�� �Ȩܒ�	 k�ef�L0 �����_��V�;���xT�Ps�Ӧ��O�47:g/�K8��>Q32u��c�������+�������� �T�<��mI͍����j�d'�:�����խ�_ܱӥb�_՚�����a7Wx���2�qYcsfx�|�b��#��7np(�I��V�Γ( TN�X�%���N�:�Y����Ω�����"�����G�ñ�ut4aI$�DB~Z�Ʉ��dJ�-�Q��s:,#�e�ؙ^�ZG G�KQ�$��ڃrN �A,4�	��S0 �n�,�{9$�R�����k9��@���u�l�l��B���7�
] ����eK#f�r���L�:oɤa-m�K���Q�e� ��q.DR H�L��ե;����S�V�w>��V��+w����"�� H�4��|
S�Z��y�OE��=��j�� �؋`��S�0 ���p��Օ�`�΅ ��}C
w�	 / x�H�D$���l1�̹�����3O�M;5�(���N��A �0\��"�� @������,���?���Xr�6QQ�ߚ��� p�-�O������ I��(w@]�����'ło��ã���5�H��q �H�G�	��f�;�"�:���ݚ7����kS8������  ҫ �=����'��,�����!�k�$��1�=��}Q����X��n����<..FT�^{g 򧇺\
w�q 7�!�$���� H��4�[!��M{���Ժx]u�����^|�)��Wm��d�ٮ�Q��H��l2ٯ�`j�N�4bӻ��[��P� o�#��J������*��0 �;s5�C���_8`��5��n0����EK'}k��EڰvS��v�)�a �pH�I��S)0 �ޘ F�OOw@S��_���j�����]�|�,׹/jzWh��V2 ����ݦ>ߪ�v��B���JO�� @z�pd>��O��O��̺�����op�~�W͝�j͍���m�꼽!] ���������J x��f����T H�����82k�{\�(�*��<4�_�����𧜷d�0�כ��u�.O-B����`�pgF� қiS %%G������!�ꍇ�O�;��WS���F���gN�!���vt��/���]�!�`� ��� �=�w�TB �'&����t,[X�P���k�D~{oGAS��O��_��1�vY�(��|�;�߰�ߛ���� v�=�şJ����	`!d>�6�)�遀�ǿjC��ٗ{��m���"i�CS�W_<-�la� ��N�P�1��i ��!��c�'-`  =�pd��W��� ol������ :<�r������O:�{oĿ��>�3��������& �BL�c�'Mc  =���� ��� ��z�����pW6�۷��A L�=R���K�7f<�������;�}9�����OBL��`D�`���V0 ��L�LAmnt���;b��}=C�Uz��6�Z3���!���(�� |�)r/jnt&~����˒v��V�$�«�L�p̳jC�7����� ^�X�G������0 ��TB�3{��:8���Ƕ|���/;3m����͹�!��I �
�]4�����Z�M.���o���z��\Wv �o  �*��Y�Ik HO̐)�&�i�6�L����c���/<qaO�(��e�qi�XT7z��U.�ߐ������=Y�+� ?�����" ����&�Ựկ���x�[�2�) wC�ڋ#��pd�57:g-��ֿ����Ж��Uz}9� �U[�n?� ����Wm��>�uhGWx��Wz�*/�q [ \я�8��� ����3&EsY���ؿ��>�?�~�7��� � ��S ��B?~!?选T�*�������=�KF!����C���w �Hߏ;�K�%57:�w�������~K!?��7���ۻ����:�㯹$�ܛ4iڤPD�VE�`�R**�.{<���.�݇������^��+GqWe�.ޱ��BCQ�6--R�P��\h�d�$3�d2�����@Hf~���%�y?�<Z��̔������~����d̓{��<�����b~���8�f]Se���,&�<�>��Lu�]�v�^l��pu�h��g�5P���o<��/�������)̩}wcB� Yf��h���F@7|&p�8�B?����������[/o��>(��%���?����e�v�ǘ�}Y��M��/���,&���lā{���t�sr�>'����W���}5y�7��o��t�EW����u��v /�p�4���  ���s��B��0}��ڈ}�!kˆ�&$�"c�L� v��z���C�.g֨(�b�  �I�3 c����p�VJ����k/_1Y�S���9kk|m-\V��1�:�x����`�$���@�0 ���,&���|����}f�F͍�!�l��Y���nˆ���{��l�3R�cf����>L��.L3�(.�I��x5d�������,6N��S}�o�\�s�������5`����@����غ�9���`�'<�).mH}��,�����c
F��qv`�����(H�) �br
sq�p��'� /b�t`sG�� s��^�d�ז��o��\^Q�Ϳ�`���W��=�˳����<�qpp$����9��͒R^<�B���,&�0mzϲy�<܈�hg�bf���6`�ThYmY��]�+}U�n���?z`�j��`�A`�T 8+��~L߈㘳 �`K�,�(V��9����4��,�]��1�F��3��1���-�kk	�/�8;��Z� � ��yr���]��<�f�>�i)J�wW�s]�.��f�<@p6�3���쁴g]��P d��00��`��M���?�sw��̟�4��>�i��M|�wW[~�jm�[��b�]�NyC�xUG���!�aa�	L��4�:̫��7�h6a
N}���]���Y[_u͖BQ �+C �`��xЂ���)& ص�M{�L�:���Rϟ֟��>��kOsR� Dot�����h�j瞠g��tS�`����gWā0�*��� )� �bca��o��R��矵B�Ņ�,2Z�X�Y1b�F�C�FG�>��^ņ�[�������^}Y����FE�U���u�Es�b�筬���*໘�o��S �˲,�mS��mZ��˅j̺lF+�W���{����~�U���io$����'6]Ԩ�Y��_�bvp^��%��`hhp(VM&&�e�0C0S9�v�> �H d��a��O������h�?~r���TL@�}Q��~���,b���1�ַb#P��S�kN{�����o�OĒ��q~���k
 ��e����9��r��y=E	 '�c���S;s���r���/��~<P�,�k˫֮��[���eCs�χ���ɪ9��@��/$�K@�yh�:U��Q��$�]���L�KO�ǟ�tQ��jm��kmn~��yŊ�ާ��C�ɚ�}E�f8ܛ�U�( dј����쌊�V�Ó���Ѹ� �YSCyݻ�\��mn}�P(K�E'��h�b"�,O$��QG`a
\���7 Df�% $�Ź.'����р��TW��׿�!m��k/o=�R$::�(�ю>�ї�kq��������� Dҳ�P[Vዳ����v��v���O�u�8V.��[��� :���;]N~fF�O`͢ RH���*�y<��߉?����nʸ�%������u���xvd잇NT9xh�<��<OqB3 "�%�� [>o��F���}[64YՕ>'�,��M|��]Uj��7��0m�g�ݿ�f Df��] =�㡎Π��*��ڙF�y��`����p0�[�`Ξ����h@d�9��{�Py���K�-��p�	O���ŉ�Π�N���������bP �m�w�O$m��m����WU�������?�q��������2� Dҳ��&����u|<�s�}���K-�-h��5��[�~��9�B�����lqҜ�>�'��
 �U�x<�i=,��:>��c'k::�e.�ǀ�����/E�  2�0j���x��ѮYe��(ƶC���xb�����u.:�Y���G�ތ��/s@@d�p���&
�/<}pOP[��������*~��@��s ��70]���yw"�) ���0wki/�C#�=��:�B8��M�JV�#�c�}ώ�G����`}=���? ��~����e�( ��6	<�)�*K��ؤ���n������=��H|8��ƒ�;��L�Og��� C��W��_���l�(�/{S���d�E���T�5/�+ ̣���г��c�2s��U�HZ�<��&�{0w�����W���5 �� �� z��<��H�5����▣���߮�D�J�����08��=9wmM]}mYA�X�;5=ttt84Y1�WMĒ���g������0A�vt��/�A@J�eYxf��~\D�:��X�<��89�u����1���^��?Ty�P�����<�׽me��ڿ`����>5\����Zl^�d5֕�7�����rW�,��X虗��H�╻���۹�<��)q����{�~�O
 "�%�������νA����P���ŝ�}&s ]��G>s�5�}Q�ާ����5��o��זպ}�B�:>���^��^M����{z=@�w��eC���{&����j����z<V"iyƢ���h�l"�,�ƒe�q˟���뮉Ǐ�7�oaf t�/��Hf���u�����gF|���m?8s< ?�7�W�Dj������>5T>5�O���l�D͇߻��S�cO������G�c{��ʁy-3L1S��1�}���_��&(2W2\�ǀ_�}��x"�"�I;	�����DF�<��|��{��_<zҮ�ᜈN䷌2,L%�QL�ߍ�U��03 Y�4��B�  ����f�VGg�s��p��wٹ�]/��p��� 7̝u��opb^��Txm����1�>L#� [S�ޗ����Ѡ�~Yx� bo?氖�t_����s#��^�nf����I���H��Q�>�'�M�����9X�G��K.Xoo=a��W,f���eෘ�����)̴��'��/�f DR2\�{0� ��;v}���vw�)6�l��t�X�U�Monok	�>��3�=x��{/�5�U�}�#g�f{�E05؏b���|�?�� ��N��똙���5�/�f D�ŀm��i+�{��<z`��k�o]�Ǔ����u<}UUݖM�;����<��p͹g|۽c�^_[�;?r�C��;v}ޗoa��c���n�!<��5�'1E|A�l�s���e�P ��I�,�ud�	������f���9��O$�Ͼ=�'Ȼge������߹dy$[���Π��Ռ]|��y�JX[����u�9�u�c�l;Z�C�裘�N`�.�T���s��Q�l�˅~Yl� �]S���د�?ʗ�:V�bר���\:�u�E=������i�i�u[64����G�����m�@�o9���:c��@؁����q�C�{0Ez7 ��b�9��a�F�)~��) �L��Bn�������?�g��b�Hx2뮀D2�־�����r�ō�ljw_���_,����ϭ��_7�O8�������Ǭ�?�S�)����e�[��E�p+Y�r��z��ŉ�S�>�'��#�C���WU�]��)ks���r���Hl^�N�tQcŇ޻:� ���V�ן9�k���H@d�Y�N�Gd�B��zw�	f����{��c/����nlmoؾ��(����������M�͗�=�i:�F���d���D��2 碄nD4  
IDAT��/�=��?ʝ��zw�f��v��?ʮ}C���V,�����d�V��zB��)[64��̠1�m2�k�N���  ����p�ζ-o�@߶�z�������F�������t��o����뛲�ܱ�ǿ����Phr��LY�2P�oz]�a����}��EJ���{��Ob�~�h� �O~��ڻ;��F�c.^#cÙ��(���9g���p�Y����~�s��::M���{fM���x�����L�m{C�ǣ  %ϣi0��l��_�?�a�no$o��>�̚��}�p�K=c�ja��[m����_�nj(w}����8����N�ڷ������paC��!�������os�#�´�����Y/r�J)R ���.�	s�y�fӒ��F\��K�s�m��{UNͼ�;��u�ض� [64%��ty����>��+�G�����c���������@��tM�R�% Y� �W��88n/ٻp�1w�ݿkп����e�W����`8�$�W��ߵFD�v��>栘1e�]�&2�qNgjy@K��) �d�%>�����8M�]����G�e�����9l���mo�ڪ���k?��v_����B��憊��~{�ah�,���pu���,eZq(�@P��2P�i��#�g0K��������*]����7z�w��sysm-���y����!�#O��}�a-�` ��-�%\�ֵR� ��	��ˀ���[S`���ᵵ����.|�5�[��'F��OWv�Es~�SA�K��[�+�<�yr(�o��rZ f�fs���q̩�#8X���R� � /pp3fi`%.�ӥ�����Q��ik	p�ͱwlZ1����|f�koX7��}�4�nU���G���[�O�0�+�1g�s�� ���F]3e�P Ɂ� P���BfY�i��_ �9��L⋜<G[K�w]�bb��XC�}O�~$�Y�鯻y}����٧W�>�(������/U���0�~/�L�ųd���5S�
 �9,+�,�\� {!�I����8fV�����vG�[ֻ�\1������:�o���c�.�3��6�ry��7*>׭�s1pr"t�����Π7�?���#������f�R�  ��>Lw��aΩ�X�k�@3%�E�[���~o�{v`*�kk	��˛'O?���[Ϋ���*g>f�}���{^������؜X��,����ڲ�6���Nƿqw�?�@Ӌ��xx͙�f�R�  ���������ClVbzx ӽ.�Y�L��π�\�k{k �ucs���?v��˘*�۱{���n?�<˷[�V�0����M�������/��h����#u�^���s~S�
]3e�P )����D�����0��?J/&|"r����މvG��5b?`�0��mdod���7�o����xM�/Z[��V�c5U�DE���y=����-���,�z���ɤ�H$����v%]T�����?O�����T( ��4������<c�������a�$��L,�S!�,����0��~A�LY"�	P�����p s,�_ ���N]$^LKݻ�k���u
����Ɓ_c�1�,I
 "E2�,��t;���/�)~�:�h�w`#���L�*� �`^�>)&-�,p��@p=怢7P���=��3>_��K�&�P�;���8|؆ّ1+P�)K���"�r�a3��?�a�)(Ā|
��̧�`����?h��<s���'1;0G���H{q�5S�
 �E�eq��.މ�n�s�`.31���H�Eq�
�L`+&�Ä��^v�0�� ���g����S��=@�KYJ D��@��*L x7�&L#�r^�H��q�z�`�$t�v}�%�3���c�@k��e�xo�$f���Z�L�ڋ͝~:�^�R�  �H��Ѓ�:f+�Y�%��w���G��`pgw��^�X�	�O��Lo����R�	SS�>^�i>oa��c�A=�� � G0w�!2���F�JYj D�9�;0�0K����Sx^�#��|>�ّp�<��t���J@d	��00���D��A_J���4W�q���b�J�Q )���\7jеOJ���̋��Ή̦  ""R��)����� ��  ""R� DDDJ����H	R )A
 """%H@DD�) ����  ��  ""R� DDDJ����H	R )A
 """%H@DD�) ����  ��  ""R� DDDJ����H	R )A
 """%H@DD�) ����  ��  ""R� DDDJ����H	R )A
 """%H@DD�) ����  ��  ""R� DDDJ����H	R )A
 """%H@DD�) ����  ��  ""R� DDDJ����H	R )A
 """%H@DD�) ��������Qw��D�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/player.png"
dest_files=[ "res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex" ]

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
  GDST�   :           �  PNG �PNG

   IHDR   �   :   ��ٸ   sRGB ���  �IDATx��ۏ$�]�?�Խ/s�����l�]'��ǀ!B/y�1DH`$ƶA	qb�x�? �)H�$��Ď��{��ݝ���{WW�՗����\��W*u��Su~U���ί~�W���0��i�ا(+ek�+����?�~b��6��f���_>�>���S�d�	gji�ԕ�2Q�Q��?�U�=�7�{�De��������'W��k	���2��7�c��&�Lݣ�a�85���_ߜ\��XN��)}ˌ�3���,�蹁2O���@{�ќ�ؖ����l~xmiJ��(��P3��І�4�~�+=۾�u�Ӥ=(V;�Wn�#@q�k�.�����S4JP�-�y�s���f,�0�p�Dq+У�_�܀�����e��/�ٯܗ#Q��į�-n[C�Ď��{�m�b�6qӰ�c����`9�̢���j�q+�x�G�{���>��^�Q J��G%���V9���R`+��Vk�Za�U���ԑ����C-��l����mmۖ6me[{sa���� $��D�N�7�Y��'XpP)"H,	�Ze��u�_1������$!����&� N��ۅJ�c�aGMU��P�vS�J�EҶ��n���W�!:í��tt�?�ki�'��[`fq;�e�qj��Y?"�`yy�� 7c�@Y�m��Ј� ��3X}���u�i��~b$���ER0Jy�
�V��m�D9z���$۪�ۏ�/<}�gu8u|Ϣވ�]�J�R���z�a�__y�����|0�`���� �k7
�Ո❈�;O��oI?a�(����}��AH)M��
��Y<�q�o�F�������Y��>�#�u�k�
,ݷ(�d����^l`"�Q�Q0�P�mp�+ԗ/P�P��{P�N���^���rx쬖��me��.��8����r��LKde�)og��>���?vM
7��9��&]_�/��1�D].�d��t0�����=.�� 8��
���!��%�Q�!�b �=K�hr��e�\����B������|lo��+a%f�Z�bm�ڕO�v�%éA��8���9$�ZZ�@���?dm:8�i�ݏ/���(�哇7>,z|�똾��PO|B��]r���L�u�9M�\������ѭ��MC��oDמ�z���g8d������Ӫ~��6� �d����;1i	��Ѭ�M�[�!��x���8Y�`9Kf�%����8�]���O��)�t��v�Ӆ "��Cja��?�I�6�z�I�RebTT�9���%��5t3B"E�5d�2+�K鈴r�]�%��?��NL��'���rl������W֧^i[�^(Dۈ���z�p����"s�?��ta�fh�Cj���_�ܫ�Kg\�S_� q�D��p�n������<�"��+���ͷ7��~��mA��霨R��[d��e����@!F#���^���7��TBL�"ZS��@m�4�σ�[2*Ό���O�8Y6��a�3;*νo@�5���m�+�=��*Xڍ�_�Q��p:�.���~�o��wg����Wa�;�Ȯz,!jD�b�{!��5·��4��G��=J,a,;�O�ץ�y��w:��v��8Z�J��u@���ju$��c�<t��W��[,�3d����Ҫ�A�庸Y!��c"C�Ԥ|�A��2���bQ_�y���,bM!�q��	0M@��EHC�vO:@��q�x�yv��&%���+�X��Q�(' eb��6�ʫ,.ɯe���Ci���Zؾ�_tY�G�"*{��N����.~�p�}D�<b9�v>3�/��g(�9z<ƚ���<�O#!E�x�L�,�v����!�Bi��)l���8dW<Ő�:�ҋ��z���G�/{9D��܎	ig�1<�s+ެ�����;��;�����K99i����{�ǜ������u��S����ڱ�=o�#{P'{�B��J��K \���Y��!}ÆݼI�e�(I,X�&6�k�Y��؀��XN
�x�;̙k,�D��^g4�� ��u|Mn%`��k�5�o�`뿱�*3k{�8�C'��R
ϲn��s��X��3���t1N�.��+���.���)>�ɛ��;�l��]���/Jq��Ƈ����?�d�$wZ$I�������3|�V؍2~�5��;�Wl܌s6Oْ�����XXvu��ȎM}�Q"/7]�&�Qo�P�:����	�&���8�ɛ�̭
����@����(����	�n��xcy�܅�!��vC���P.2���!y����D>W!��b��[p����&4e��g�h,>4��!�7�^+5�T��>$Fvt$_n�y�M~I�fN Zp,��	,��-j�}{7if�0N�s�#=/�cܵI��u�`Wd˯17/���G�J+�y��|�W��S.L���nΓQ�d��������bj��n��C�{o�s�[v�A��	7,[��{E�����>�~�[1��������[���k�64^��w��J�f-�P+��:b��\���Rjb[6���78Z��#[HG8{W�x%�Kޑr�J��۸���v��E�9��)�(	yU���<�;�9���������4^�}{Y�����'��jTy��.�0(K����wRK��[����Z ���,��SHm<)h�`[T^y�S�e�RO�9����������{�Ms�<��#ܻ�������$�S�R�V�wΦl[����َ�#I�dX�:e;{e�΀���ҫ��6�s������L^b�,�5-(��~K߯%�@�ZK4�� ���s&o��a"a�F�UdVl��G�H�g7O��[�A�[G\��|�|�ɫ.�ե섓5:�bق�!�)@)E����v�[/��{�NX�0�p��FL����6�9f��3���YGpk�dM��Y�bХ�h;���d.�	�ĆZ�N5^�[o�l�R�|�A�cRÅq�P�mP*hd�!L�4�k� ��=�����H�ak*�8��͈�e&1��e�π�JA�Q�[�����G�Jw��^��?WY\�1�P7��ص���-�"Әk͡0ÙB;
���0n�a$i���6����v{!R�s�-�0� C'�F"9Zf�t�8Z9���
����bg����F~�x�a�{;���m,��Ҋ�Z$^�@c�2Qn�,�u�r����V6Lhi��R��nenΓJ�Q�'�,����r�77���"Ь�ġ�f4��'�@F��R�*S^���UD+�c���r��T7�.��TvM3�D�_ClF�qH�L"iO޽�G�M,W%���g�1�Kڭ��ɯ���", �����}�-A:���mS�o�[���NHi��6��j���<��{ؾ��iT{�#M��d2�bD����ǉ�/ae3ht7^l�x�"�\l�T���νl�<�1����ID�d�l�!�N-�7�Jji��"�$�M�.�,�ֲ�"c��:�a��!��kT^�g�{urk�DøJ%���5���
��Ur�Kؾ��j,G������Z�I��mԣp�g	�7e%
�!b����6�ChR޾t���V��1���%� ��k7��EZ��~��,��P497��$�id�a"� ��/�����-�b�T%�%�urml�Lm�g(�|�Q��D��,ߢ9���[�˽W^!з�.i��<��@X*��ՠ����O�W6������a)�����=$�!��O���i�J��o�G���Ԝ��?��.�F�)uWz�91���i��Y���Cf�z_�i'�[����;��������K�2���A�p=�K���.r�*+"d�=A*��H�b���ZF�lRj��4Cd�.T�I�5�A����.XX����C�x$c�O����[}�$c���`�H�7M�A��,)�ߙpPT_y��tY��ҧ0)���V
e�����Z�h�.A����C@�/<�����GX�^2�����O����$_)�[��րv�cbQX��L�z������1�0��>Q��� �<�q�(T�P�T��sBJ����������k8�$�u��A�F�o:R3�����0�Z���J}��H�bz��5$��Z�@쿧�:sm�)�`���w��k��޳O���o ������e,��Hew��z�`>�X�ָ����7�X�<qke�f�v���:bD�M��86��I��D	TG1��$�s��3����J�Soҫ2a���Z�$z��_\c�J����1�=(|�i�_M>�<�����+��P����7w�T2-�ec�&坈�����u�c�+���NGֳ�vh��Mk�#����)�R���q�e�N�H�Pb���c/*_zf,a{��y��.����|�f���p�\� Է��8"�Z��
,��,g�X���mb�	���ذ���R�cJqL%��Ɔjl�C��C3�D�%6B,�I-��1�Z�mSU�f9��L��ִ��-�w~s�}c�n�CT ��?��k� Pq��+��a�ۙ^�� <���8�{����+�z�� E���Fg=
�8A���&.�!���t:B��������O�Oڳr�T�F�H$�|P�s5"��}c��������)
z�� ��4�	�S'mW~��@٤������n��x~PY��IZ��0��p��M㣟����~Ҷ�ⷿ{"�#qn���HPAX�ig��8��Q5��#/    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/score.png-9370e369e60e174fed6d82daf8f2df3f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/score.png"
dest_files=[ "res://.import/score.png-9370e369e60e174fed6d82daf8f2df3f.stex" ]

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
     GDST   X          )  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���k�d�a�������Ŗ��[�ͭ �R@�[BpbǱ-�%K�(�� E @�

H������!&X�׊,۲�8�@Q��
	!$ޛdYZ{��ݙٙ�>|8�=�o�s=}{����{z{���Μ_��}�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �Ŵ   �RY����E��8�� 0�{%J���$  s���D���  3o��1��?�1  f֬��8bdo|�  �9�Ä��|v  ��㈑Q>#  Lݢ��8b��  ��,Cx���1��9  S���Q��!�|1  S%<�[�Y�� �� >�f�cdq?2  f��8�E����  �)���)D�# `戏��(�  3G|�wА�}>�=D��� �I�2�p|F  8R�{��~�)d�# `�f��� �0�����9�+��5J�� �97;ў��qn3�>���1�<}n��H �Y�N��rR<�k��,�c��������� 0�'���G�9�?�����0�G ����r�E���8�џ��9����� �#M�\��	�^,kxLr�A���Y���# �a�xB��I�<~�����zg-D�  3jO��'����O�Q��5�1�� �8�f�E��Z����  4Lp0�nـ�8��Q  4Ht����B�4cD�  KCx��v����
Z�) Xh�*���-  �B0�~�>�  ���7� ,���jZ X���^VѺ��v}��. �!<�x�B�������  �L|���m��I����}D  S >�Yáq�  ��0G�_�  ����4��  ��0;! ��f�A"D�  3O|�����t �4��o?"@ ��&@`>�!�k�`  B|�|�K� `&��O7���&  Xl7{�� 0s�~�����LJ���  L">`q���`  �1 ���x�GA 03,�z�� �	���   �U�  4� `�\~ˡ(
#   @s��  Sg��  �J|�rq	  �  4F�   �   @cLB ��tX>F@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   SL�  ��V��h�  �1  h�   #@  �Ƙ� L���<��   �   @c\� ��a�r0  4F�   �q	 03\���  �#  �L1
��  �#  ��1
��(
#   @s��  3�(,�����  �  ���G"@  �� �,�@`��G?ʲ4  ���H\�  4�%X �Ls̧q��  ��M��D�   G�c���q  �˰`>�Ǹ�F@  �C�K|$F@ �9af�^�#I֎�`  ��=�G�<�|����c?� �Q��sT��d���  �YM������  � Y\����,������e
���G"@ �9$B���T�?��-I�L��g�<��+I�%���J��$S��Y�8���~�=
 `���w�K�v;�>�U����$?���In����$��Mr1��I����I.�
�k�_[�R��S�f�c�y��`  �&B��,ͷ���$ߙ�/%��$'����6S��\I��*B���w)���ө��b�Q��4%�!G1�1�|�9 �i!{3�1�J��%�`��|S���8��*F�����TA�T�v�FO��
��TQ�{{;��{2�r����C? }O=����:[WӾ�B�ٞ��b%+�^2r���?1��aY��QsI5��5Iޖ䝩.��%���Nr=ՈI/8������}/too�5���/�Y��}���B�������	�]\x�����7�O:�]߉��L�ټ����ڭ�y���h�Gƒ!�c
��$�&��$ߑ��R���V�����$9��|��{G�oL�-I�H�?��t�s�iD�a�R�Ho^�F�(9�*F~5�/u����>������H����<���������:���l��lm&e;�����>R�� i�?�b햬�ݒb���S���G9T߲F�DG�d5��T��L��Է%�SI�!;AP�zU��k+���/dg�������.�zq�W�
�W՞��kQ�S�I;�%Z���'�|&7	��}���q}m7�=3��x���?r_g�Z:[�R�o$eu�ܳ��CH�|���rHg�ru���y���;����7k"��Q���}g�ߗj�᛻��<��O���9�~�ˡ���8��<t=�O&���LT��a�Z�-8��>�c� p�S�3r_���Nk#�RvZ9����o�$�G�>�\� )�H��3I��� )�[Y9u�����q~,�E��#�xU�գސ�O�
���}R������$���w���0�/�;�x��}����6�����߷� Iv"d� )� Kk'@�IҺ�L��S7�΍+O}�}o�#`,B�At�L��|k�?�j���Fx̊v�_K�CI�Kv9������qf�߅ f��O|`���+Y=�����H�vN��k��� � �F� ��Y9y�� )V�]�e�������8��xQ�ߟj��oL�t�7%yM�9̖v��H�I~�{{�YX�`&]��C�w�BaR�����wU� � �!��p��R��H{hT�?��3��%B'R��ͩ&�m��7���m�c��S-������D� fʅ���]�ݺsc(@��F�n{U��R�fU�b�T=@�^�t�7�z�����HQ�n�|�O6q�̡Y�CF��'yK���Wu�.�D����l����o&y8!�������}ek3�`���/e�֗WoHY�ʉ��zq�� ��~��3�ed�a�!��T��M�@�{R-g�\nq�����$�G�/Z`j��m���I�$ى�Z��� q�Ԣ+R����� �����.��H��>������i���c%Ւ�$��I�.���i=ɃI�m�=Dƚ� @��-��[�� ����'�� )��R�7G~?ˢHq�$)���z!ŉ����H}A�שk"D.<���۝�k{�m�&��I>��Ϥ�@n.�r����$�>FB�M\x����ŉ�K���Gd'BjR�7/�`D�루H}�c\���}ш#�+DΟyk�����n �I��$oK��kSm�r��$�O��R�1�"@�c�ԓ���÷ ��K��� )��ϥlo5q�,�n�;Rf�E�xLk�فۧ?�F���rT1r��oI�{5�$BN�Z&��I�t���_�j~=�H��d�>!�!8r?���듅�?x{R����n��C(���ֵ/&ݓ���.�=w��L���<9h����w��՘�l]�-�ߞj��oH�թV�:q�fQ��T���I�� ��:���e喗�W��ƥ��� ��v�6��&��o� )��H{�RN��=8��͢�ܣo��R=6B�qg��Huy�+��,ɩ8'cw�M���I������9���FH-@���W�vp̺#"F?V��ry��?��q���>���N�&Dȹ��qG��ʭf�~��$?�dc�;�)@lTڹG�4r_g�+�Z&)�����%�A�$e�1�k��K#���{q����U}�팔t�ϕeY�6�N�҈��%y(�~��e㌀ 6<�1�lo�.�*�ן��.S�z����h�_ʉ;�x_g�������Xs��z���?p{���[#!�E58"�/՞0�!c^X��Q# �����[F��l]�o�+e��y��Lh_�R��F~h��==�س��W�������;�#�����Q��$?��qQ# ��/�;��}g�jVNޑ$e{��1��Yu�%���h]{z`�$����y��?��q1����o����W���+ә��5T+��O��I��=`�GB�g��ܛ�۾j���/e��uw�+~̅b�d�� i�_J�Z��:��������;8f��1��}�\���8>�%�/���Y�`{қ`�Zn����_]�v�,�[⃹Q��R�������1ιG��ԡ1���|�_�݉���I|p�^���ZQmĬ_�%@�]��9��;�r�E����#$I:�׫��`�ן�2<�ѺV����˦?�Q_@ҏ�r��9+�ф�$ߒ��N�@B� �}�F�+[���)����w?̯�K����T�{&�/����`�Foy��)��^4�EI~ �׍{�,�������}������ֵ�ne9�t),�"'^rw���:4�w�i��hڅ�?п4�X�^���*H���nм�I~*�_M���Y�bp��[G��l��n����+�}�\Z׾T�]v���w������Ѭ�3IR��b�/�쌄����$�&�d�kGB�׻�3t9��;�R��`�R(ۛ);[��z������br�b:w��$Iپ���H����!�)ZIrg���jb�\ @��������$�퍲sct�AXhe')G�>z�Q���B~C��ű���}<�DH�}��T���H�G���I��Qs@`����B�#t�z��\�jSAXn���:I���ؙ'U��i*���9�ѷ�&�W�/V֪���J�����T�&�$9�j.ȧ&=hV�Xb�?+'o�o�ꅤ����FHYn�7p0�VNݑ$�p|���5���7|d�s��y'>�GHٹqe�7�J�+IJ�{� @�ą'���u-���kh̤Ĥ�Y�qxɾb%�>�EQt�W$+�Y����s���CΝ��7��[��ZH��[����|��ٺ����ɦ�C8��w�� 3!B,����L�X���d����!�fx��$i߸���e� ��_J���{�m�]�yl/"$I�=��de���پz!��/�:Q-&�G�t��s������og~C��s&E��`��s�vI��LX!a��tr���G�ko^Nʝ��Wo}���f<@��;R�Y��e#�{�}?3��c��}���'DH�}�|��{P��� ��G�zr�^(�]g?�����"�f�̓2��N�$�1����Ы+��g��W�o�%@��ͧ� ���$)� �K)N^^�$�<���>��⧾g�v�z���P���K�̽"k/~m�����[^:�������?<vu�#�߹1>Bʲ���q�!m$y<եXc��! ����D�,@�� �� #�Q}��Ș���y�g���ܙ{�z�����	qm3�J���������=}�.|����?S#�<8�ٗ���TsBf�R��	�`���������!�HY�~P4����@�7��+ٓdeܥZ~(.����'nK��"�,�[�,�*�z��7/��'I���9���'�.��{G��S��L�-�1tn sf;�N�LX+�N��}�����+�$�t��'�CR���� �p����B� ekpx��-�����>p��N(�GH����Y8b��b\|����?�܁�sg�����%BL�cQ\M�/��X��F�}���{n�v*��g�׷�d�.3�~�E=@��VoC��v/@�.'����{�0��~��Y9���:[׆GB��Ջ�s�I�gD10����Y�<����ѐ��{��I���q��Y$e��I~(ɧ'=���� 9�ػn+�u�� Iv"� ����HQ��яn�������|CG�a�{��n��S���q������R��C�o�ЖʹGߔ�;g|��c/m����䗓�`�ߚ��&#dnd�r��N�+;��FA�����|��P7����W�K�΢s��y螝���vW�)��M+���H/>��f�u���r8��S�!eg��4�r-�#I~4���"d�d$<zz�Tdd����Md?z+���8yZ�R��7��[���d���l��ر��s������Nk#�<��M��:��w֖�!F�Y���D��d�	A2�2<�|xnB��Q����c?�E�r�Z]� e��q'@�.��l޸���z�$�Q��Rt�3>>��lo�A�Tvcc|���eR&���o�Z�w���!3 #��39@�΍�G�ǁ��������G��b�����\#Ƿ̆/�*Ǭ^54
R��f���z|Totr���8��{#{|l|�zc0B,?�2j���|&Ig��3Bf&@.<~����3���	o�!�v��ʉ�F�cG?�E��K��<���-��0/[տ�]īz0�R��������?�μ5+����]�jp$�Lm�X2�I~5ɏ$�O��d��"d&�ܣo���ܷK�����;ߜ9~�j��[��%Ib� ���r෽�m?��.���x���N�:�^�$#b�7�3ݕ���8q�]�{��?��͡������.R:��l'��I�b�_O�2� �ˣ?)�k(B��4��X�	�1���^.w?0q�iv1<"X�V��tj%�FA�̳�����/�g�!��kV!��⧾g�vz���Fl'��$ߛj����>*@ΝykV�n����>0��1k���<�I������V�y�g>��5|�U�R����ddĥV�(��'�I�$�ֺ�?��;s��Rƭ�	����J�I~ ��i(B� g���	�.R�o\�WugX����� ��G������7q�̽�����+;	��XnR�BV=@��T�[O�sS8��s�#�O���%B�r{������I�o���T{�{�4 O=�}�[��z�t����Η�9qǝIR����w��цn��l ���>7� e��3q,��7R�Gw������h��f���6=�i��t���X0���Ǔ��T���uT�X�\��C'UI�����#!e{�y�[ͣb�?R�X��U+�N�z���o�L�@p <FA������Z���IR�G>��&I��եa��z���ׇGB����̷�$'ɇ�캹�aC�� ���쬽=9B�.�b�d����F�z��?�i�������@ppĥV�Ċ�;��1������Tc�5�μu��S�Z����$?��g�\�1��u�r�co���9&B�{C��z,��D�z���zL�#!?��蝵�VmR��(��@�Z죨H��լ��^�/V�R.�<ë�G���FB��3]�
���T#!�Ir5�!� gycV�nM�IRn_�8�*�Xɪ�l  �IDAT���N�;�'�������w��T�8=��F�+�^� �?c���$)���d�g�]�=����S����;˲z���l��u�>��d B�hG�w��X��K�|�8B�%@��mc���)[מ6�c�Y�FA�q�d���ϼ{�vw�$�R�<T�M��( ps�汣� )��\=����{m$Iٺ�������C�<?�ү�=�� IGAb������$O�����?���ȑ��O}��}��j�J��9<R��}1�g,�"��}U��P|$I����~���9�#p�G�� V���sY�^��H�Z�R������#I�q�� �l^NVN�X=�s�g�'���'ʲ�t����]��Vۡ�� )[Y��Z� ���{&�?J�x������^B��2�q�ʩ����H2!eg����̕����%$;���o������]x���;k;��$ى�Z���WS������e���������y
��!��U�Yג��$I�I�v��#�@2��G���'�� io\Jѝ��im&I��MÉ�T�~hI5�3�r����fo%���g̽��H{�R���^�����R�6�w�A�[z��H��#�d'B�)@�I�m��N�K��y�_I�BnrIV29D� ����w����݋�Z���͔XfE�?��r��9B�r��|�G9�q.|���w�`����޼ܻԬ ���hH�z� ERu� 3�7SE�璜�FC���i��[ѧ7q� �W/�W��H�޸�g2F1n�c @���I�;���1���:����������H�^�$:��q,��$O$��$�+ɗ���G/D&��������C{R�j��+!� E�K��}=k���;2��Q�����F��^:�H{������ e{�y `��n�GS��۹ɞ!u#r��=�{yL-@�_x���u/@�����Hk�Ro�$� �����*I��<�z�TȻ��Hپ�� �e�I�_��I��I~'{����	Y���]"Ӎ�Z�t�����T����������b9&v�y�3���c�j�Z�� )ۛϋ �A�$����I~>ՈȵL��bdģwI��Q�r���R�f%<8+k�]�{�ٺ60q� E1nd��c/�jo]����d�$i߸��[_�d @�� �w�|"ղ���j���u�����U�ѽ�j�:��Q�����A���h���}-E��z�tZ7R���&S���lg�Z'?�h��o\���Q�*:\R pP�I>��&����N���<�X�L[�ן3����nZY�.��(�7R�ݲ��lo|9�ݑ��S%I��3:N  ܖ�$oH�I>��$������3
һk��`F��l]��ع<p F:[�6�i]&k��f���گ �c�$&��T�f��Z��N�r���������*;)��')��r�{�T����  hL��t�N�����e{�٩L�tZ�l]�ޘ� .� ��"��֒���O�`��Ig{p�r  f�Ju)  ��[��C   ��   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1  h�   #@  ��  �1��t�K<ex�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/seabg1.png-b81598b868488b02614f2cce7a4c906b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/seabg1.png"
dest_files=[ "res://.import/seabg1.png-b81598b868488b02614f2cce7a4c906b.stex" ]

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
  GDST   X          H1  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y��w]����K�H ���%a�EQ(T�+UZTD�V���պT�Z�Vi��PEjU�VKq��"
� &��!�$�ps�=��s��ܓ33��3���7���qInΜ3�����^�]~[���  h�Ⱥ�   �9  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f���  @[[[�n{{{��d�m�� 06��FWΡ'@  ���1�諭�&   ִ@X�y�:��  gR�>���� �`t�ߗ��>߷>   �ސN�t_�A�  �[C>��}_%" ���~�}]���C` �^zxd�?Ӣ��  �c=Q7r�  za�	�X�S7���  k�I'���M	   ��&�ǮM� ��lb|���   ��&�ǮM� @s��M� @S���6)B  k#>�ؔ߅  �����o�	�<��N�:
"@  hb�'ԫ4�ߙ  �9����w#@  X9S��3�X  hF�  �RF?3�Q @�c~c� �ʌ夙�   ��яō�wwl�w X�H�1��yx�Y�������� ^ �����_8 ��y�𶷷G�z.@`��<IyAX�I����0Fc9Y���YO�C~���~��=����# 6��<���*y|��Q*`̼��]F�}j�w%@` ��n�X����h=�mzȉ(����1 ��+����׉��+���Tt1�8q\ }d�cV��� �50��ð�/�wd|���� �FL�aل�Wd3,��� �3u�U"@�����G����`D���k�yp8�s�'F܀u3��A��>	X�mr�y��w��"@�fkkK��,F8��_�,�1������X�A��}`��x��-�=6,r`Y���q�R�[����2��.��0JN�`��?V&n���z�e���/# �؀~�K|L�9 V���!@�āi��v�?�<��B�0.�,��/X.Sp�^2���73`qe �� Zs2ݙnŲ�ʴ��L����	�����h�ٌz�
����}�y
��`UMxA�������*	VJx C�9�M$>X5��x���	�±N������5��1N+��2���4�ʱ�Z��u6�X�K�������r-]���G�����M�9�1�{<;��%:���v�!��	�1��<�1�cq�aU��u|�U �``�9yc������}�� ,L| 8�c�����F;}�o ,D| ��D��q�v7������c�_l�u�����`8V'���^��o�}���>��#��wM �湐!Y�6�c0�����ڧ�wS���� ��s$C��w��dl���SF@�O� ��k�d[[[������!����	�l{����x?�A�1���A?�:����V Ѝ�H�Jl����%B ��>�h�'��ڤ��Շ �d�`>�+�1|g���!��6�	�,N��69>v�3BSy�X�&����K�������
�N6��	 ���r�h�*CD�0�����|�:9�ΰ�u�I[���� ��
�ϟ�ɦ�⣛!"@  5�@�[e��
�\�W��~�g!"@�ʃ�p<��z�z��Bd `����l�9��;�8x��q��w���~�<���|�g������.?� a�1?p �q���`]��-z���{�5� �lmmysV��Ix��ߢ�s�햵�b���ռ!�剐��B�ϭ��&w�Nȇ�3&,�YWl���  ���w����Hǲ~�.�oр�4"�����X� �ʹ�!G�A�V{�Ǥ�3���AӲۃ �Yo���<�o�9�bd�9h4D�  ��4ұk��ܷ��[���:F@  腱,$�G��c�e��5   �Uߦ�2���k��.  M	�2�y�sWB �765<�q�ǮEGC���^ @>�Ix{�1���^�� �H�N��w��2-k�c�k���d|��AS�&�� ��Xt��2/���i_���F�  `�扏.���Q�e^�pU�}��D� �[�]0d]�c���8��t	�I�&��l�c~V� ��jH��X紨YߧŨ�&�![~Y�isZ0º�:g��P����>8�wg��,2� 0-.���5j2��{:�  �B�ԡOV5k҉����w�f�)����G� �6�D�ͳ��1I���mҕ��F�  �VS��>c=���Q�3����_� ����"�c~���g}d�J�c`,��c���Y��Y�����p�ު���N�`���ᄁqY�bt�|�v�(� a�V-��L�������>������ X�!��9Vy<:��Úk@��:�Ř�B��5~����!�Ja��W4 �>}<��D�FF�8""@��
���~0fC\o���"�N�r� � >���!"@ `I�~0f�>ieq}�Й�*�������������~6��J�d�E������ t�Igs�;"�M��*�'�y��=^�,��^�Љ'��[ht!FXϑ� a�y�e���N�Й'�q�apM�K�Jrz�c{�	A�"<72D��c|s-s�� �3/���(:�R1��c�ώ�"�h��{�y~��'yp��%yT��'9��-Iޕ�$oKrs��'�)���|h�ߛ��$�g	�"F���<A!>�dZ�looO�������XRll�����?�&� ɥI���wKr^�Sq��m��ݩ�����$�%�8��I�����L�`*Nޕ�ݩ��$oN�7Iޚ�I���@�0��D�j�cW��E����m������
G3�%�K*
�Hr�$�Or���u��_��T�\�
�u��x"5J�T��)���Y�?O��,|��vy.d躄��`����L9X���_�$�I��$OK�T��eߴ�ө�YoK��$��w���Ο�~�/.H6��`�"@X�Y������qA�G&yF�ONrMj���ݚ�=��%�K��T�\�C��~�d��c1�]j���&B�c���76���g<*��<!���kU�| �S��_���I^�����֭,�>�y�� a]��y>+�����W$�g���F7�ʙ�w[�7��FE�4�V�;����N[K!D��sc4m4�H�$@84/�w��iTGR������k�����r\��.�ө��ץ��e���ԮZ�H-r?��7!��9�1�4�a�U ,�����J���ԩ�|�75m���6������R;Q�|�[��}��I-j�!*����}{*Rn��l���:hK�M}nc�
��� ai69B��q<wM��$OM��T\�����������������r���N�T�����H�l����� �� a�6�E{��ؽ�nP�/�^�#�<9�C"0��$ߖ�����g!�gԃM�?6�-�nS^���sSS�.O򰝏k�|������m'��$/L���Z'g�H��Ǧ<o�A&]��c�U �̘GC:�ǅI�a�OI�n<0bcݑ�I^��/SS������v�x��������ˎ�c+���H�؍j�O�$���W�|o�פ�/�Z#]y��	���V�M�ᄧcx�����O�^�m�.v��I~<��]�(�aN.��X=ȴ�?Ƥu �� �������^��kg}��$W&��$���vG��J�!W=�U=>��Ƥ-7����v׼��dcx��a1�f��o���	o��J��Hj]�SRs���{��O��I�$ɛ'}Ҳ�EL{lM�����k8��;���ʑu�6�����췵������{L�^���]�c+u�����g">�ߣ�<'um�;��w��16鱶����P�7���-a�&��L��y� ���ޯ{�?��z�#��w|_����N�Ǔ<;��"�N���xR�����h�b�^��N�A��>��~��=���$����]��yIt��\�B� s��Y��`,�NM�c|����&��$_�䂅���{R����$8�\X�I�/�E�`1�z2��$yb�/Nm���2�=�'%yU�4#4X'Ql��q,�Ó<3u!����,�V�k�|n�?Jr�z� ��5 l��q�$�H��I�����EI>:���NǙ� ��X|κa#�8��Jru���3�<,ɹ�\���_Kr�z�
0v�_�.F@�83��X�]�L��S�i�r^�O]��N�� 0��2���$���:�g&�wL�����|j&\�P� �a�} @�3N�.J�i�������:���c�<j�'��L�b�a�	�%�y�_��	��X��&yA�<G�`����J.D��u�xF��䱱1�q{��&yE�S�>�E
���\h��Y5# �Z�5����$y\��r^��.|9uT�h C"@��]}|��I�|mq�`N�J���p�'�`Ӫ�S������$ߒ����ۓ|k�Hr�O6%8HשU�`�j�љG���$_�����`���?��'��� �J� �� ]>!@��q<uu�N]�\|04�'��$ߖ��INN�d�5�ȆQVI�0v�zv�/Mru��u2ɟ&yI��H��i�,B�]�� ���4����< ��;����x�L�g�iZ!@�X�t�|�� a�f��eI�h�㪈��Ԕ��&yUL���wT�(�"@�#ϋ�`�nK�$ߛ䧓�:�El.B_�Ú�/N�%1��;��/�|W�K�5��ʹh��s�B�0XS�x�����5q�A6��&�8="�i�0
�*iJ|I�驭v���۩u!?��p�[g�@��^�R���p2��`� MyA���E�Mr~�;�r[�_I]/��bqz3}��y���,��fa��3���I�c�g%�k�;�t2����$����i��Dt1C�i�w� Y�p �X���ԅ���A��Nr]�H��Bu�Y�1��A�t��0
�2	c���&��$;^�~7�����$��)S��xN���0ɽ��'�ݓ�#5b���u:��ٻS	�����;��{��$�<ɱ��l��Nߙ��$�ٹ�̍fq<��Q�@�0S^�/K����W�6�C0,�$��$/K�KI>0퓝x.%8��Ò<!�G�6Ƹ2�<�{6�u�M���N�"c�c���n�����#2�䏒�Y��&y�"?��a<3�!BX� �8x~�oJr�6��C��ї$��Ի�m�I�!��Hjd�iI>-����֞�VN'9�����ے�1ɫR���X�l��� � 驾�/^�Ό�������[���P�J�$ߓ�h�F.N_�s쥩���$OL]�H�9�Dj���6ͯ������1�)��C����������˓��$OJ?_衯���-�M��i�'��s�ϱW%��$����#Cq25
vSjD�S�6w2��bS-# D�%@�`l��ռ/V3~OwM�SW<?g�{�$ߝ�E���S_�t¹���#I�H��xb�OJ򐜽�c��Sӳޛ
��$���7�qAYƎV"�� �,��p+�ќy���wڶSs~�~t������a��,]^�����M�I�m\�k;�/��R�5�hኞc�M��(�G&yPj'�Ksf���=��Ϧ6���7����-;@���<d��Bx$��v,u}�c��T�z�n��G�L��n�������EI�s��S[8��N$y��mޕ:�!gvZ�c�ceQrЋ֔��Ԕ��L����G苷�[��z7|���b�s앩�٫S�����������1�y[j��K���%D�oY�"�E	�%X�P���T�sSq�Զ��M��^�-�q�NM˸.ɛ�\��O���%7�2�/;�ˌ���h��}>-�ץ�@X��u25��;R�����V'�Kx��}�='g?�>.��s�u5(۩���'��$����B�ߖuaA�"�!�qw���ԅ��N�\?=�o�Ň�K��3;�ܚ���Ο}0����R�˿)5d��Ԉ�2���N���>`�~+���tܦu'�K�8'�9�������slߝN-V����oJm�܉�e^�\�0/2�_���8�ʿ*��۵I�������T�ܘz��$oI�s��$�9YԹI�]��V��$_��GRS4gZ։�����7�N�	�kr<$޸8�SI�6uL�R����.7!���E�"�y��xA�������<>ɇ��c�����(��SS�~#ɯ��B�y�OKM�zl���V�H=f_��3��=�\0<���_��q�Ԕ�'���^�Нa�I�0�^�Ro25�T�c�� {��.�L"@f���Hj�$ON��I>6����N��Q}gj�O$���	Ω=�W$ya�g�mhm;���ϧ��i�Su=�\0:�O=�>0��΃S�����������t�_IM���,��`�V����r�^���e��$�M�ɩU��C��Ŀ����njו���sϿ$��$�O���5�SW���T�L�o҉��q<����S#�H���&�S�sCj:��&�����B��-{/���  �IDATd����|���s�(��,5=�y�)V,��Z���z!��Ծ��)����+X���(�k��8ɫSQL�qw�i�O�t<.�G���}D�r��vjӂ_K���6��k�!L������Ԗ��N�;��e�'�Իg�N�����I����,��Ԃ�e�x���������|Lj�~�@j��$���86DH?���U|�gc��Y�+�g&yAj�`m�� ��$/J��,炥�I����U�Z�a��a�NM�}e��Om�>��!�� 9�{��{� L��,ɣRӀ�W��uSj��oM�81�폦v
|rjK�G�6��$�ޚ����$/IM��xl���k!��O��G?mT���;~tj��ǧ��"��>�Z���$�\��>�Q�OL��H�e1�16���p��$��ǆY�Vr���k��K7�FȜ�qyj7��Z��ȝ?3�0ى$���S#"� ?&�g�.�z��h����9����{�u�����m�9�u��W���ǧ�\���0V'S��}�"u'R��GS�W}��?�ڪ�;��tj��צ�	�uD�A�{�1��n�QȜ�qI��SS|P����I�(uힿN=�~^jm�E�]�L۩k�|w��Hrˬ��Xg�t��9�X�&@���Xjz�g$��Ԉ�K�[ �h;5��h�s�|_�[RWN��$o���"���^�C���(d�]��J��v�Wǈ ���Ԇ�%u�YWNF�4e8 s�ǅ�]��qjו�F<�A��N%��$/K�.�w�!�-%�0�!l�����������b X��$oM�ѐ�}�io2�<�2��}� s��=R�<>=u��c� ��v���"�.��>Y��7��oR�\��k�u�g*@:��E�mt���x`�� ���9�+���$���d'smmR�,��Qg��2� �p0M�d��$�0��R�� �p{*B�mf��$N�Zk��28&��cw����$5���R�=���`�N����yI�v�'o���:=DVǒ���;Re�dS��^H�dwK�g%�'�Q��V{� ��N]#���&ɉY7���uR�,98vc�x�:G&���r�Hr�$���'��73��޵i�oo�㔫�&y^j�սc� �b;u���I�I��镃k��r��qN�{�"�>I�I�/�_�$�r�s�:���S;��Njja�I6�8�]�t<h�MM�zA�'��` �s{��%���ɜ��̺Cd�����xPjD��]T�z����9h�7�ߕ��&���5o>�9B$��ܫ �x �5ɧ&��$�J� �u*�(�ũ�ޔ!�h�'n}��Y��c��S���R��^��n;��64:̹��$oJ�ޖ��S�|��׽	��S�r���u> ��qs��K�թ���C���1�9��c+ui��v>��I���bu~�|sN'�>��I��Iޜ䃩E�:�q�� �����h�W%���y� �N$���V��͌��xr6Ӯ2>��s��q$u�xq*8�L�����'$�o�3��$�J�S�,ܚ���9d�$�8�� �c��%��Ԣ `�m'���Z�W�Nަ�I�XM�����V*4��v�:'���]S���Tt<|矗.�MV�T��K�?�
�RS�Nf��"����_K�t���R��|vj� ���|}�Mmyj]� $��Hj$�Tll%� �h�.I�H�Q}uj�޹����I��O�9$�1����u?�H���J`OO-4Bl� �D��&yQ�wL��u�xq����'�I�85��T\�#��	�MI~:um��SArs�l�4��ؑԔ���nN���|C�ק��O%D֯�:�{$���m��_�}걓�i������$�I��ܔ:��Yk��������&yr�oN�QY�. �8�1u�ݫP���S����T}Q���V}��=I�"�_���듼;�]�{r&H5ukU���Ȝ�<:ɗ%yF�?� ��M���(u����
��:�#^�����I>3#���T�ܐ��ȫS���Դ��s��/�1�� �3<�H����1� މ�Uӿ.5]e�V��i�㔫�R�\��$뀗�����פ���SWi����k����Ȝ�qn����I�Vs� ˲{��K�u]�	��c�|V�/I�1��J���%�+RF��t\?���ǡd���?ɿO����� X�[��r�Hmm��Y7!�7������_��9���Ct:�c�m���~&ɏ%��̸��2�
�9��S#�K�	 ���I�2�O���qL�Z�ޘ>�����$��\�|ӝNM[�)���7��i	k�9��j����+� X���V�O�;�=��m��Hj��I��z��9���N����$??����;@�8��Z@�Ss�����  ��dj�ɏ�B���qW !r��c+���cR��	�sD��r"�ߔ䵓>�0�����vy��IM��:* �nO�\���Ԭ�;mr�,8�q~��&yJ*@����3���$?��I�:铮zΫ����i�N��`;'��'����sb( ��Iޗ�S0|��_`Sbd��K�z�������:`�b��I^��ũ�!�!]���ܕI���RE�� ��Ի�?��-���c��#I.M�K.<.���]�s�h�tj��w�FCn���F�� �c��'�v.xZ�J�F= �!�=�%�+����uD�2�9Dx�=5�YI>"�=b��НL��Ꮵb}�����d�����V_�*[� �v�\a�BmoK��t\��3D\T~Y��%yrj���S�� ������=��8t�� sxW&������z# ��=u��I�����ߝ�%����Ȃ���?>ɣw����bsoH�Ӊ$�ڴ�� �h�q����=��w�$�M�UqM `3�NM���$������$�r�E�!�X]��Ó<1���;f��f�#�ߓ䇓��&�[׽��.������;�<�� �ɻ��*�/%y]jT�.7\w�,[I����II>&5�q���r2�/O�L٢w�A��� 9�Z���I>;5�r�M��$���������$�u�uDȜᱵ�q$��R��?=�#S�f�p:�I~.�E�t���cZ�\��B�7��m�� �l�L]5����;u�6Q��3<����/u��٩�V�/��17��������<%� �JrE�����%1� 0�vjn��N�;�~���*B�8��.��|~j��蠫��5t^��ϻ�h�I����ԁx�r�# �hݒ�S3��$�͌�{�"�ǃR#����K�#l�ө�����%N�rzrv�O�$ߙ��g�f ��l'��$/M���5+�����7��(u��{-����N�� �fj��W'9u�'��yI����Rӯ,0 Xܭ�w�_�䍙q�{�,G�\��I���v�p[�❿�仒�y�'l]��k�O��I�"�\ ,��$oI�ͩ�μ��Y`��=�<-���w8ף�&��Ԗ�?�=�Uo]��k+�����  �wkj��o���?B�85��9I���ҘZ���'�&껓�j��[׽���1�
 `�N��ㅩ��Sw�Z��kv<7�cR�P8����:���Դ��ٺ���Nݝ ���N��SI�)5=k�H��xnjg����-I�3 ��Vj:��&yT�oI�ә�SP�&yF��3;���B�]�� ���I���I������R�ȯH�$�,�G�|=��Pl	 ����B�K�<9�@���!]7��$W&yX�OI�ѱ�%@  ��$OJ�I�K]?��놜J�n\��$�����M�  ��9I����Qs�  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4#@  �f  Ќ   �   @3  hF�   �  �  4�������U�	    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/seabg2.png-b760de5761b8380f966d2d9cb8a7a708.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/seabg2.png"
dest_files=[ "res://.import/seabg2.png-b760de5761b8380f966d2d9cb8a7a708.stex" ]

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
  [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Scripts/Base.gdc"
         [remap]

path="res://Scripts/Player.gdc"
       ECFG      application/config/name         Ocean Cleaner      application/run/main_scene          res://Scenes/Base.tscn     display/window/vsync/use_vsync             input/game_up`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/game_down`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/game_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/game_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/mouse_down�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      /   input_devices/pointing/emulate_touch_from_mouse            physics/common/physics_fps      �   )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color          ��@<���=  �?)   rendering/environment/default_environment          res://default_env.tres             