extends Node2D
export (NodePath) var ui

func _process(delta):
	if Input.is_action_pressed("reload"):
		get_tree().reload_current_scene()

func refuel(ammount):
	get_node(ui).value += ammount
