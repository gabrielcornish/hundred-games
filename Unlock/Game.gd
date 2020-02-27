extends Node2D


func _process(delta):
	if Input.is_action_pressed("reload"):
		get_tree().change_scene("res://Main Menu/Main Menu.tscn")
