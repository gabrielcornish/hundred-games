GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexp�      �      �^��6!S%���k   res://Coin.gd.remap ��             Vg|���.�W��w�&&�   res://Coin.gdc  �      �       �m>�&P���y����   res://Enemy.gd.remap��              � G>��A_WWng4��   res://Enemy.gdc �      �      sSb�V�Bi#p As9l�   res://Game.gd.remap ��             b3`���ƀ��YPM>   res://Game.gdc  �      �      #�"����re�/�   res://Game.tscn �      Gk      �}90�]��/c�jx   res://Player.gd.remap   �      !       ��0�F �qq��dX��   res://Player.gdc�v            1��Y{��� T?�,%c   res://default_env.tres   {      �       um�`�N��<*ỳ�8   res://fonts/PrStart.ttf �{      �M      H���l���(���   res://icon.png  @�      v      ge��@o�7�|AZ   res://icon.png.import    �      �      %��%�8��IN�Bv�   res://project.binary��      ]      ���My8XSlfqD��=�GDSC                  �������������Ӷ�   ������������������������Ҷ��   ���϶���   ���Ӷ���   ���������Ӷ�      Player                     
                              3YY0�  P�  QV�  &�  T�  V�  �  PQ�  YY`          GDSC            ;      ��������τ�   ��������򶶶   ����������������Ŷ��   ����Ӷ��   ��������������϶   ��������������϶   ���������Ҷ�   ���������������������Ҷ�   ���϶���   ���Ӷ���   �����������ж���   �         Player                           	                        !   	   "   
   #      *      2      8      9      3YY:�  YY0�  P�  QV�  ;�  �  T�  PQ�  �  �  �  �  -YYY0�  P�  QV�  &�  T�	  �  V�  �  T�
  PQYY`          GDSC         "   �      ���ӄ�   ��������������Ķ   ��������Ķ��   �������Ŷ���   ����׶��   ���������ƶ�   �������Ӷ���   �����������������ƶ�   ���Ӷ���   �������Ӷ���   ���������Ӷ�   ������Ӷ   �����������Ӷ���   ����������������¶��   ���¶���   ����¶��   ����������������¶��   ������������������������¶��   �������������������Ӷ���                   coin                   Main Game Container    
   Win Screen     '   Main Game Container/Timer UI/Timer Text       Restart Timer                     Lose Screen                                                  &   	   0   
   4      =      F      J      K      O      P      V      b      c      i      s      t      z      �      �      �      �      �      �      �      �       �   !   �   "   3YY;�  Y;�  �  YY0�  P�  QV�  &�  V�  ;�  �  PQT�  P�  Q�  &�  T�  PQ
�  V�  �  �  �  �	  P�  QT�
  PQ�  �	  P�  QT�  �  �  �  PQ�  �  �  PQYY0�  PQV�  �	  P�  QT�  �>  P�  Q�  Y0�  PQV�  �	  P�  QT�  P�	  QYY0�  PQV�  &�  �  V�  �  �
  �  (V�  �  �  �  �	  P�  QT�
  PQ�  �	  P�  QT�  �  �  �  PQYY0�  PQV�  �  PQT�  PQY`               [gd_scene load_steps=16 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]
[ext_resource path="res://Enemy.gd" type="Script" id=3]
[ext_resource path="res://Coin.gd" type="Script" id=4]
[ext_resource path="res://fonts/PrStart.ttf" type="DynamicFontData" id=5]
[ext_resource path="res://Game.gd" type="Script" id=6]

[sub_resource type="PhysicsMaterial" id=1]
friction = 0.0
bounce = 1.0

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="CircleShape2D" id=3]
radius = 16.0

[sub_resource type="SpriteFrames" id=4]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=5]
extents = Vector2( 7.88609, 7.96341 )

[sub_resource type="SpriteFrames" id=6]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=7]
extents = Vector2( 31.3669, 32.1277 )

[sub_resource type="DynamicFont" id=8]
font_data = ExtResource( 5 )

[sub_resource type="DynamicFont" id=9]
font_data = ExtResource( 5 )

[node name="Game" type="Node2D"]
script = ExtResource( 6 )

[node name="Main Game Container" type="Node2D" parent="."]

[node name="Walls" type="StaticBody2D" parent="Main Game Container"]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Main Game Container/Walls"]
polygon = PoolVector2Array( -32, 240, -32, -32, 352, -32, 352, 272, 0, 272, 0, 240, 320, 240, 320, 0, 0, 0, 0, 240 )

[node name="Enemy" type="RigidBody2D" parent="Main Game Container"]
position = Vector2( 16, 16 )
mode = 2
physics_material_override = SubResource( 1 )
gravity_scale = 0.0
contacts_reported = 1
contact_monitor = true
linear_velocity = Vector2( 200, -200 )
linear_damp = 0.0
angular_damp = 0.0
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="EnemySprite" type="AnimatedSprite" parent="Main Game Container/Enemy"]
scale = Vector2( 0.5, 0.5 )
frames = SubResource( 2 )

[node name="EnemyCollisionShape" type="CollisionShape2D" parent="Main Game Container/Enemy"]
shape = SubResource( 3 )

[node name="Player" type="KinematicBody2D" parent="Main Game Container"]
position = Vector2( 288, 224 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="AnimatedSprite" type="AnimatedSprite" parent="Main Game Container/Player"]
scale = Vector2( 0.25, 0.25 )
frames = SubResource( 4 )

[node name="PlayerCollision" type="CollisionShape2D" parent="Main Game Container/Player"]
shape = SubResource( 5 )

[node name="Coin Holder" type="Node2D" parent="Main Game Container"]

[node name="Coin3" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 51.84, 83.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin3"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin3/CoinArea"]
shape = SubResource( 7 )

[node name="Coin8" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 35.84, 51.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin8"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin8/CoinArea"]
shape = SubResource( 7 )

[node name="Coin9" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 67.84, 19.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin9"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin9/CoinArea"]
shape = SubResource( 7 )

[node name="Coin4" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 67.84, 115.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin4"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin4/CoinArea"]
shape = SubResource( 7 )

[node name="Coin5" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 35.84, 147.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin5"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin5/CoinArea"]
shape = SubResource( 7 )

[node name="Coin6" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 67.84, 179.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin6"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin6/CoinArea"]
shape = SubResource( 7 )

[node name="Coin7" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 35.84, 211.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin7"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin7/CoinArea"]
shape = SubResource( 7 )

[node name="Coin16" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 99.84, 83.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin16"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin16/CoinArea"]
shape = SubResource( 7 )

[node name="Coin15" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 83.84, 51.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin15"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin15/CoinArea"]
shape = SubResource( 7 )

[node name="Coin14" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 115.84, 19.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin14"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin14/CoinArea"]
shape = SubResource( 7 )

[node name="Coin13" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 115.84, 115.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin13"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin13/CoinArea"]
shape = SubResource( 7 )

[node name="Coin12" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 83.84, 147.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin12"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin12/CoinArea"]
shape = SubResource( 7 )

[node name="Coin11" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 115.84, 179.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin11"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin11/CoinArea"]
shape = SubResource( 7 )

[node name="Coin10" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 83.84, 211.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin10"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin10/CoinArea"]
shape = SubResource( 7 )

[node name="Coin23" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 147.84, 83.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin23"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin23/CoinArea"]
shape = SubResource( 7 )

[node name="Coin22" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 131.84, 51.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin22"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin22/CoinArea"]
shape = SubResource( 7 )

[node name="Coin21" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 163.84, 19.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin21"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin21/CoinArea"]
shape = SubResource( 7 )

[node name="Coin20" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 163.84, 115.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin20"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin20/CoinArea"]
shape = SubResource( 7 )

[node name="Coin19" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 131.84, 147.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin19"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin19/CoinArea"]
shape = SubResource( 7 )

[node name="Coin18" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 163.84, 179.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin18"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin18/CoinArea"]
shape = SubResource( 7 )

[node name="Coin17" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 131.84, 211.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin17"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin17/CoinArea"]
shape = SubResource( 7 )

[node name="Coin30" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 195.84, 83.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin30"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin30/CoinArea"]
shape = SubResource( 7 )

[node name="Coin29" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 179.84, 51.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin29"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin29/CoinArea"]
shape = SubResource( 7 )

[node name="Coin28" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 211.84, 19.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin28"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin28/CoinArea"]
shape = SubResource( 7 )

[node name="Coin27" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 211.84, 115.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin27"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin27/CoinArea"]
shape = SubResource( 7 )

[node name="Coin26" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 179.84, 147.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin26"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin26/CoinArea"]
shape = SubResource( 7 )

[node name="Coin25" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 211.84, 179.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin25"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin25/CoinArea"]
shape = SubResource( 7 )

[node name="Coin24" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 179.84, 211.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin24"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin24/CoinArea"]
shape = SubResource( 7 )

[node name="Coin37" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 243.84, 83.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin37"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin37/CoinArea"]
shape = SubResource( 7 )

[node name="Coin36" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 227.84, 51.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin36"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin36/CoinArea"]
shape = SubResource( 7 )

[node name="Coin35" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 259.84, 19.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin35"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin35/CoinArea"]
shape = SubResource( 7 )

[node name="Coin34" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 259.84, 115.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin34"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin34/CoinArea"]
shape = SubResource( 7 )

[node name="Coin33" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 227.84, 147.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin33"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin33/CoinArea"]
shape = SubResource( 7 )

[node name="Coin32" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 259.84, 179.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin32"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin32/CoinArea"]
shape = SubResource( 7 )

[node name="Coin31" type="AnimatedSprite" parent="Main Game Container/Coin Holder" groups=[
"coin",
]]
position = Vector2( 227.84, 211.84 )
scale = Vector2( 0.12, 0.12 )
frames = SubResource( 6 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="CoinArea" type="Area2D" parent="Main Game Container/Coin Holder/Coin31"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Main Game Container/Coin Holder/Coin31/CoinArea"]
shape = SubResource( 7 )

[node name="Timer UI" type="MarginContainer" parent="Main Game Container"]
margin_right = 342.0
margin_bottom = 40.0
custom_constants/margin_right = 155
custom_constants/margin_left = 155
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}

[node name="Timer Text" type="Label" parent="Main Game Container/Timer UI"]
margin_left = 155.0
margin_top = 12.0
margin_right = 187.0
margin_bottom = 28.0
custom_fonts/font = SubResource( 8 )
text = "60"

[node name="Timer" type="Timer" parent="Main Game Container"]
autostart = true

[node name="Win Screen" type="Node2D" parent="."]
visible = false

[node name="You Win Container" type="MarginContainer" parent="Win Screen"]
margin_right = 320.0
margin_bottom = 240.0
custom_constants/margin_right = 100
custom_constants/margin_left = 100
__meta__ = {
"_edit_use_anchors_": false
}

[node name="You Win Text" type="Label" parent="Win Screen/You Win Container"]
margin_left = 100.0
margin_top = 112.0
margin_right = 263.0
margin_bottom = 128.0
custom_fonts/font = SubResource( 9 )
text = "YOU WIN!"

[node name="Lose Screen" type="Node2D" parent="."]
visible = false

[node name="You Lose Container" type="MarginContainer" parent="Lose Screen"]
margin_right = 320.0
margin_bottom = 240.0
custom_constants/margin_right = 100
custom_constants/margin_left = 100
__meta__ = {
"_edit_use_anchors_": false
}

[node name="You Lose Text" type="Label" parent="Lose Screen/You Lose Container"]
margin_left = 100.0
margin_top = 112.0
margin_right = 244.0
margin_bottom = 128.0
custom_fonts/font = SubResource( 9 )
text = "YOU LOST!"

[node name="Restart Timer" type="Timer" parent="."]
[connection signal="body_entered" from="Main Game Container/Enemy" to="Main Game Container/Enemy" method="_on_Enemy_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin3/CoinArea" to="Main Game Container/Coin Holder/Coin3" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin8/CoinArea" to="Main Game Container/Coin Holder/Coin8" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin9/CoinArea" to="Main Game Container/Coin Holder/Coin9" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin4/CoinArea" to="Main Game Container/Coin Holder/Coin4" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin5/CoinArea" to="Main Game Container/Coin Holder/Coin5" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin6/CoinArea" to="Main Game Container/Coin Holder/Coin6" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin7/CoinArea" to="Main Game Container/Coin Holder/Coin7" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin16/CoinArea" to="Main Game Container/Coin Holder/Coin16" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin15/CoinArea" to="Main Game Container/Coin Holder/Coin15" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin14/CoinArea" to="Main Game Container/Coin Holder/Coin14" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin13/CoinArea" to="Main Game Container/Coin Holder/Coin13" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin12/CoinArea" to="Main Game Container/Coin Holder/Coin12" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin11/CoinArea" to="Main Game Container/Coin Holder/Coin11" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin10/CoinArea" to="Main Game Container/Coin Holder/Coin10" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin23/CoinArea" to="Main Game Container/Coin Holder/Coin23" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin22/CoinArea" to="Main Game Container/Coin Holder/Coin22" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin21/CoinArea" to="Main Game Container/Coin Holder/Coin21" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin20/CoinArea" to="Main Game Container/Coin Holder/Coin20" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin19/CoinArea" to="Main Game Container/Coin Holder/Coin19" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin18/CoinArea" to="Main Game Container/Coin Holder/Coin18" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin17/CoinArea" to="Main Game Container/Coin Holder/Coin17" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin30/CoinArea" to="Main Game Container/Coin Holder/Coin30" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin29/CoinArea" to="Main Game Container/Coin Holder/Coin29" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin28/CoinArea" to="Main Game Container/Coin Holder/Coin28" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin27/CoinArea" to="Main Game Container/Coin Holder/Coin27" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin26/CoinArea" to="Main Game Container/Coin Holder/Coin26" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin25/CoinArea" to="Main Game Container/Coin Holder/Coin25" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin24/CoinArea" to="Main Game Container/Coin Holder/Coin24" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin37/CoinArea" to="Main Game Container/Coin Holder/Coin37" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin36/CoinArea" to="Main Game Container/Coin Holder/Coin36" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin35/CoinArea" to="Main Game Container/Coin Holder/Coin35" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin34/CoinArea" to="Main Game Container/Coin Holder/Coin34" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin33/CoinArea" to="Main Game Container/Coin Holder/Coin33" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin32/CoinArea" to="Main Game Container/Coin Holder/Coin32" method="_on_CoinArea_body_entered"]
[connection signal="body_entered" from="Main Game Container/Coin Holder/Coin31/CoinArea" to="Main Game Container/Coin Holder/Coin31" method="_on_CoinArea_body_entered"]
[connection signal="timeout" from="Main Game Container/Timer" to="." method="_on_Timer_timeout"]
[connection signal="timeout" from="Restart Timer" to="." method="_on_Restart_Timer_timeout"]
         GDSC            �      ������������τ�   ��������򶶶   ��������   �����ض�   ���������������Ŷ���   ����׶��   ���Ŷ���   ζ��   ����¶��   ������������������޶   ϶��   ���������Ҷ�   �����޶�   ������Ҷ   �������������Ӷ�   �����������ж���   ���������¶�   �����������Ӷ���   ���������Ӷ�   �      �        ui_right      ui_left       ui_down       ui_up                                                    #   	   ;   
   S      [      \      d      r      ~      �      �      �      �      �      �      �      �      �      �      �      �      3YY;�  Y;�  �  Y;�  �  PQYY0�  P�  QV�  ;�  �  PQ�  �  T�  �  P�  T�	  P�  QQ�  P�  T�	  P�  QQ�  �  T�
  �  P�  T�	  P�  QQ�  P�  T�	  P�  QQ�  �  �  T�  PQ�  �  &�  �  PQV�  &�  T�  PQP�  �  QV�  �  �  T�  PQ�  �  �  (V�  �  �  PQ�  (V�  �  �  �  �  �  �  �  T�  P�  Q�  �  �  �  P�  Q�  Y0�  PQV�  �  PQT�  PQT�  PQ�  �  PQYY`          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
                  �  0OS/2=>Q�  8   Ncmap8W~  |  �gasp��   M�   glyf'W�t  	D  ?�head��>�   �   6hhea   �   $hmtxL J   �  �loca�Ρ�  T  �maxpa2      name�X�`  H�  �post�0�  K�        K�W�_<� 
     ��z     ��z   �                 �                             � 2        @ 
   R �       �  �3  �3  � f    	                      HL      � �                                                                                                                                                                                                                                                                                                                                                                                                                         � r         ~ ���       ��  ��       D                                                                    � � � � � � � � � � �         � � � � � � � � � � � �     � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � � P   T @   ~ �1BSax~��������     " & 0 : D �!"!&"""""""+"H"`"e"�%����     �1AR`x}��������       & 0 9 D �!"!&"""""""+"H"`"d"�%�� ����  �����Q�i�5�_�	  ��  �V�>���%� ��      �x���v���j��������    ��޻ޡ�~�|���!      R                                                  � �               �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � �         : Y � �
Sj�����L����&Ky��7i~��<f����3Mf����5f����H����		)	Z	g	~	�	�	�

;
a
�
�
�
�,Nm���(Hh���@e{��>|��9j��A��P����Ao��:h����U�����0~����		5555h�����8~���Q|����3P���#IIWWWW���(Nt���Mz�������$f|��\~���8jjjjjjjjjjjjjj�������������������         !%!!  � ��@  �  �            !!!!!!!! �  � � � �    �  � � � �             !!!!!!!!    � � � �   �  � �  �           !!!!!!!!!!!!!!  �    �  � � � � �  �   �   �  � � � � �  �               #  !!!!!!!!!!!!!!!    �  �   � � � �  � �    �  � �   � � � � � � �                    !!!!!!!!!!!!!! �   � �      � � � � �  � � �      � � � � �           '  !!!!!!!!!!!!!!!!!!  � �   �     �    �  � � ��  �    � �  �   � � � �  � � �  �         	  !!!! � �  �  � �             !!!!! �  � �   � � �             !!!!  � �  �  � ��             !!!!!!!!!!!!!!      �  � � � � �  �  �  �  � � �  �  �           !!!!!!   � � �   � � �            !!!!  � �   � �          !!  �  �          !!  �  �           !!!!!!!!!!!!!!       � � � � � � �        � � � � � � �            !!!!!!!!!!!!!   � �      � � � � �  � �   �   � � � � �            !!!!!  �  �   � �               !!!!!!!!!!!!!!    � �    � � �  �      �   � � � � � �           !!!!!!!!!!!!!!  �   �  � �   � � �  �      � � � � � �             !!)!!!!!!!  � �      � � �  �  �    � � �            !!!!!!!!!!  �  �   � � �  �   � � � � �             !!!!!!!!!!!  �    � �   � � �  �     � � � � � �            !!!!!!!!!! � � � �    � �  � � � �     �             !!!!!!!!!!!!!!  � �   �  �    �  � � �  �    � �  �    � � � � �             !)!!!!!!!!!  �    � � �   � �  �   � � � �              !!!!  �  �  �  �           !!!!!!  � �   �  � �   �          !!!!!!!!!!!!! � � �    � � � �     � � � � � � �                 !!!!  �  �  �  �          !!!!!!!!!!!!!    � � � �    � � �  � � � � � � �                   !!!!!!!!!!!!  � �    � � �   � �  �   � � � �    �            !)!!!!!!!!!  �    � �    � � �  �   �  �   � ��              !!!)!!!!!!!  � � �      � � �  �   �   � � �  �             !!!!!!!!  �  �   �  � �  �   �   � � � � �           !!!!!!!!!!!!!!    � � �    � � � �    � �  � � �  � �              !!!!!!!!!   � �    � � �  �     � � � � �          !!!!! �  �  �  � � � � �          	  !!!!! �  � �  � � � �           !!!!!!!!!!!!   � �   �  � � �    � � � �   �             !!!!!!   � � �  �  �  �          !!!!! �  �  �  � � �              !!!!!!   � � �  �  � �            !!!!!!!!!!!!!!!     � � �    � � � �  �    � � � � � � �   �          !!  �  � �            !!!!!!!!!!     � � � � �  � �   �  �  �           !!!!!!!!!!     � � � � �  � � �  �    �            !)!!!!!  �    � � �  �   � � �             !!!!!!  �   � � �  �   � � � �            !!!)!!!!!!!!  �  �    �  � � ��  �     � � � �  �              !!!!!!!!!!!   �   �   � � � �  �    � � � � �   �           !!!!!!!!!!!!!!  � �    � �   � � �  �     � �  � � � �           !!! � � �  � �             !!!!!!   � � �  �  � �            !!!!!!!!!!!!     � � � � � � �  � �   � � � �              !!!!!!!!!!!!     � � � � � � �  �  �  � �   � �          #  !!!!!!!!!!!!!!!!!!  � �      � �   � � � � �      � �   � � � � �   � �          !!!!!!!   � � � � �  �  � � �              !!!!!!!!!!!!    �  � � � �  �       � � � � � �          !!! �  �  � � �            !!!!!!!!!!!!!!       � � � � � � �  � � � � � � �                !!! �  �  �             !!!!!!!!!!!!!!       � � � � � � �     � � � �    � � �           !! �  �       	  !!!! �  � �  � � �             !!!!!!!!  �   � � � �   �   � �  �             !!!!!  �   � �  �   � � � �           !!!!!!!!!!!!   � � �    � � �   � �  � � �  � �             !!!!!!!!    � � � �    �   � �  �               !!!!!!!!  �   �  � �   �   � � � �            !!!!!!!!!  � �  � � �    � �  � � �       �        !!!!!!!!!!!!!!  �  �    � �  � � �  �   �   �   �  � � � � �              !!!!!   � � �  � � �  �          	  !!!!!  � �   �  �   �   �       !!!!!!!!    � � �   �  �  � �   �          !!!!!!!!!!    � �   � � �  �   � � � � �  �           !! � �  �             !!!!!!!!!    � � � � �  �  � �  �  �           !!!!!!!!    � � � �  �  � �  �            !!!!!!!  �   � � �   �   � � �     �       !!!!!!!!!  �     � � � �  �   �  � � � �    �       !!!!!!!!!  �    � � � �   �   �  � �             !!!!!!!!!     � � � � �  �  � �  � �           !!!!!!!!!!  �   � �  � �   � � � � �              !!!!!!!  �  � � �   � � � �              !!!!!!!!     � � � �  �  � �  �           !!!!!!!!!!      � � � � �  � �   � � �             !!!!!!!!!!     � � � � �  �  �  � �  �           !!!!!!!!!!!!!!!      � �   � � �  � �  � �   � � � � �  �      �      !!!!!!!!!!!!!!      � � � �   � � �  � �   � � � �               !!!!!!!!!!  � � �  �    �  � � � � �               !!!!!!!!!!   � �   � � �    � � � � �             !!!  �  �  �  �           !!!!!!!!!   � � �   � �  � � � � �               !!!!!!!!!!     � � � � �   � �  � �   �              !!!!!!!!!!!!! �  � �  � �      � � �  �  � �   �  �  �   � � �  �              !!!!)!!!!!!!!!  �  � � �        � � �  �  � �   �    � � � �  �    �    #  !3!!!!!!!!!!!!!!!! �� � � �    � � � �  � � �    � �  � � �  � � � �               !!!!!!!!! �  �  �  �    � � � � � � �            	 !  !!!!!!!!!!!!!!!!    � �   �  �  � � � � �  � � �   �   �  � � �    �               !!!!!!!!! �  � �  � � � �  �  � �   �  �  � � �               !!!!!!!!! �  � �    � � �  �  �  � �  � �            !!!!!!!!!!!   �   � � � �     �   � � � �  �                !!!!!!!!!!!  �    � � � �   �  �   � � � �  �                 !!!!!!!!!!!  �    � � � �  �   �   �   � � �  �                   !!!!!!!!!! �    � �   � � � �   �  � �   �  � � �  �            !  !!!!!!!!!!!!!!     �   � � � �  �   �  � �   �  � � � �  �               !  !!!!!!!!!!!!!!  �   �   � � � �   �   �   �   � � � � �  �          �      !!!!!!!!!!!!!%5!!   � � �    � � � �  � �   � �  � � �  � � � �   �           !!!!!!!!!!  �   �  � �     �   � � �� � �                 !!!!!!!!!!  �    �  � �   �  �   � � �� � �                 !!!!!!!!!!!!  �   �  �  � �  �   �   �   � � � � � �                   !!!!!!!!!! �   � �   �  � �   �  � �   �  � � � � �              !!!!!!  � �  � �   �   � �             !!!!!!  � �   � �  �   � �             !!!!!!!!  � �   � � �   �   � �  �           	   !!!!!!!  �  � �   �  � � �   �           !!!!!!!!!!!!!!!     � � � �    � � � �   �  � �  �   �  � �  �             !!!!!!!!!   �   � � �     �   � � �� �                !!!!!!!!!  �    � � �   �  �   � � �� �                 !!!!!!!!!!!  �   �  � � �  �   �   �   � � � � �                   !!!!!!!!! �    � �   � � �   �  � �   �  � � � �              !!!!!!!!!!!!     �  � � �  �   �  � �   �  � � � �                !!!!!!!!!!   �   � � � �    �   � � � �  �               !!!!!!!!!!  �    � � � �  �  �   � � � �  �               !!!!!!!!!!!!!  � � �  �     � � � �  � �  �   � �  � �  �             !!!!!!!!!!! �  � �     � � � �  �  �  � �  � �  �           !!!!!!!  �   � � �   �   � � �             !!!!!!!!!!!!!!     � �   � � � � �    �   � � �  �  � � �                !!!!!!!!!!!!!! �     � �  �   � �      � �  � � �  � �         !!!!!!   � � �   � � �           	   !!!!)!!!!!!!!   �  �  � �  � � � �  � �     � � � � �  �     �        1  !!!!!!!!!!!!!!!!!!!!!    �  � � �   �   � �   �  � � �� �  �  � �  � �   �  � � � � �   �   � � � � �      �      +  !!!!!!!!!!!)!!!!!!!!!  �  � �  �    � � �   �  � � �� �  � � �    � �    �   � � � � �             !!!!!!!!! � � �    � � �  � �   �  �  �             !)!!!!!!!!!  �   ��  �  � � �  �    � � � � �  �              !!!!!!)!!!!!  � � �    �  � � � �  �  � �  �     � � �            !!!!!!!!!!!   � �  � � �  � �  �  � � � � �                  !!!!!!!!!!!    �   �   �  � �  �   �  �    � � � �              !!!!!!!!!!!!  �  �   �  � � � � �  �   �  �   �  � � �  �             !!!!!!!!!!!! �   � � �    � �     � �     � � �             !!!!!!!! �  �     � �   �     � � �        '  !!!!!!!!!!!!!!!!!!!!  � �   � � �     � �   � � �    � � � � �      � � � � �            '  !!!!!!!!!!!!!!!!!!!!    � � �   � �     � � �   � �  � � � � �      � � � � �                !!!!!! �   �   �  �  �  �            !!!)!!!!!!!!!!!  � � �    �      � � �  �   �     � � � � �  �           %  !!!!)!!!!!!!!!!!!  �  � � �   �     �   � � �  �  � �   �     �  � � � �  �             !!)!!!!!!!!!  �  �   �  �   � � �  �  � �    �  � � �� �             !!!!!!!!!!!!     � � � � � � �   �  � � � � �             !!!!!!!!!!!!   � �  � � � � �    � � � �    � �             !!  �  �          !! �  �         !!!!!!!    � � � �  �  � �  �            !!!!!!!!    � � � �   �  � �  �       	  !!!! �  � �  � � �         	  !!!! � �  �  � �              !!!!!!  �  � �  �  �  � � �   �      #  !!!!!!!!!!!!!!!!! �  � �      � � � �   � � �  �  �  � � �   � � � �                 !!!!!!!!!!! �  � �    � � � � �  �  �  � �  � � �           #  !!!!!!!!!!!!!!!!!! �     � �  �  �   � � � �      � �  � � � � �  � �           !!!!!!!!!! � �   � � �     � � � �              !!!!!!!!!   � � �   � �  � � � � �              !!  �  �           #  !!!!!!!!!!!!!!!!  � � �  �   �    �   � � �  �   �  �  �     � � � � �  �           !!!!!!!!!    �  �  �    �   � � �� � � �                !!!)!!!!!!!!!!!  � � �      �    � � �  �   �     � � � � �  �            !!!!!!!!! �  � �  �  �  �  �  �  � � � � � �          !!!!!!!!!   �  �  �  �  � � � � � � �             !!!!!!!!! �  �  �  �    � � � � �                !!!!!!!!!    �  �  �    �   � � �� �                  !!!!!!!!! �  � �  �  �  �  �  �  � � � �            !!!!!!!!!   �  �  �  �  � � � � �                 !)!!!!!!!!!  �     �   � � �  �     � � � � �              !!!!!!!!!!  �  �      � � �  �   �  �   � � � �             !)!!!!!!!!!  �   �     � � �  �     � � � � �             !!!!!!!!! � �  �    � � �  � �   � �  � �             !!!!!!!!!!!  � � �  �    � � �  � �  �   � �  � �             !!!!!!!!!  � � �    � � �  � �   � �  � �            !3!!!!!!!!!! 	�	� � �   � � � �    � � � � � � �              #  !!!!!!!!!!!!!!!!!  �    �  �      � � 	�	� �  �  � � �  � �    � � �  �  �            !!!  �  �  �  �             !!!!!!!!!!!!!   � �  �  �  � � � �  �    � �   � � � � �             !  !!!!!!!!!!!!   �    �  � � �  �   �  � �   �   �  � � ��                !!!!!!!!!!! � �   � � � � �    � � �  � � �        �     #  !!!!!!!!!!!!!!!!! � �  �      � � � �   � � �  � �   � � �   � � � �                 !!!!!!!  �    � � �  �   � � � � �   �       !!!!!!!  �    � � � �  �   � �� � � �           !!  �  �       #  !!!!!!!!!!!!!!!!!!      � �   � � � � �   � �  � �   � � � � �   � �             !!!!!  �  �   � �             !!!!!!!!!!    � �  �    �    � �� � �     �         !!!!!!!!!!!!!!   �  � �    �  � � �  �    �   � � � � �            !3!!!!!!!!!! 	�	� � �   � � � �    � � � � � � �              #  !!!!!!!!!!!!!!!!!  �    �  �      � � 	�	� �  �  � � �  � �    � � �  �  �      �        ;          ;        G        ;        ;        N        Z  	   x g  	   �  	   �  	  & �  	  & �  	    	    	  7  	 	 @7  	 
 w  	  4�  	  4�� 2001 codeman38. Character forms from various Namco games.Press Start RegularVersion 1.61PressStartReg �   2 0 0 1   c o d e m a n 3 8 .   C h a r a c t e r   s h a p e s   f r o m   v a r i o u s   N a m c o   g a m e s . P r e s s   S t a r t   R e g u l a r V e r s i o n   1 . 6 1 P r e s s S t a r t R e g H i g h - L o g i c   -   E r w i n   D e n i s s e n   1 9 9 9 T e m p l a t e h t t p : / / w w w . h i g h - l o g i c . c o m /          �\ 0                     �          	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �.null     ��     GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

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
flags/filter=false
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
               [remap]

path="res://Coin.gdc"
 [remap]

path="res://Enemy.gdc"
[remap]

path="res://Game.gdc"
 [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
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
�?���{�    IEND�B`�          ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   Collect Em     application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     display/window/size/width      @     display/window/size/height      �      display/window/size/test_width      �     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   rendering/environment/default_environment          res://default_env.tres     