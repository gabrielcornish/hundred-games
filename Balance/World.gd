extends Node2D

var level_complete = false


func _process(delta):
	get_node("Black Points").text = str(game_logic.black_score)
	get_node("White Points").text = str(game_logic.white_score)
	
	if Input.is_action_pressed("reload"):
		get_tree().reload_current_scene()
	if get_tree().get_nodes_in_group("Spinning").size() == 0:
		check_balance()


func check_balance():
	var tails_size = get_tree().get_nodes_in_group("Tails").size()
	var heads_size = get_tree().get_nodes_in_group("Heads").size()
	
	if tails_size == heads_size:
		if tails_size != 0 and heads_size != 0:
			if not level_complete:
				get_node("Balanced Text").visible = true
				level_complete = true
				get_node("Restart Timer").start(2)
				print("Balanced!!!!")
		else:
			if not level_complete:
				get_node("Balanced Text").visible = true
				get_node("Balanced Text").text = "UNBALANCED"
				get_node("Balanced Text").margin_left = 78
				level_complete = true
				get_node("Restart Timer").start(2)

func _on_Restart_Timer_timeout():
	get_tree().reload_current_scene()

