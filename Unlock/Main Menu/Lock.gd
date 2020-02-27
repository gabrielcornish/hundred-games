extends AnimatedSprite
var is_hover = false


func _process(delta):
	if Input.is_action_pressed("click") and is_hover:
		get_node("Select").play()
		get_parent().transition_ready = true

func _on_Area2D_mouse_entered():
	scale.x = 0.35
	scale.y = 0.35
	animation = "open"
	get_node("Hover").play()
	is_hover = true


func _on_Area2D_mouse_exited():
	scale.x = 0.25
	scale.y = 0.25
	animation = "default"
	is_hover = false
