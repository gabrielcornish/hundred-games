extends Node2D

var transition_ready = false

func _process(delta):
	if Input.is_action_pressed("reload"):
		get_tree().reload_current_scene()
	
	if transition_ready:
		get_node("TransitionScreen").visible = true
		get_node("TransitionScreen").playing = true
		get_node("TransitionScreen/AnimationPlayer").play("Rotate")



func _on_TransitionScreen_animation_finished():
	get_tree().change_scene("res://Game.tscn")
	pass # Replace with function body.
