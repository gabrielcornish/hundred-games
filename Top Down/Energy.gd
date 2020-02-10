extends ProgressBar
const DRAIN = 1

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		value -= DRAIN
	if Input.is_action_pressed("ui_right"):
		value -= DRAIN
	if Input.is_action_pressed("ui_left"):
		value -= DRAIN
	if Input.is_action_pressed("ui_up"):
		value -= DRAIN
		
	if value <= 0:
		get_tree().change_scene("res://Game Over.tscn")
		
