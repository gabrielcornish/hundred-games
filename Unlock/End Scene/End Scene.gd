extends Node2D

func _process(delta):
	if Input.is_action_pressed("reload") or Input.is_action_pressed("click"):
		Score.score = 0
		Score.time = 60
		Score.speed_multiplyer = 1
		get_tree().change_scene("res://Main Menu/Main Menu.tscn")
