extends Node2D

func _process(delta):
	if Input.is_action_pressed("reload"):
		get_tree().reload_current_scene()
	
	if get_node("Lock").transition_ready:
		get_node("TransitionScreen").visible = true
		get_node("TransitionScreen").playing = true
		get_node("TransitionScreen/AnimationPlayer").play("Rotate")
	
func _on_TransitionScreen_animation_finished():
	get_tree().change_scene("res://Main Game/Game.tscn")
