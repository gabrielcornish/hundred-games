extends Node2D

var countdown_timer = 30
var game_over = false
var hit_effect = preload("res://Main Game/HitEffect.tscn")

func _process(delta):
	if not game_over:
		var coin_group = get_tree().get_nodes_in_group("coin")
		if coin_group.size() <= 0:
			game_over = true
			get_node("Main Game Container").queue_free()
			get_node("Win Screen").visible = true
			restart_game()
		
		update_timer_text()

func update_timer_text():
	get_node("Main Game Container/Timer UI/Timer Text").text = str(countdown_timer)
	
func shake_camera(ammount,strength):
	get_node("Main Camera").shake(ammount,strength)
	
func restart_game():
	get_node("Restart Timer").start(2)

func launch_enemy():
	get_node("Main Game Container/Enemy").launch()

func create_hit_effect(pos):
	var hit_effect_instance = hit_effect.instance()
	hit_effect_instance.position = pos
	add_child(hit_effect_instance)

func _on_Timer_timeout():
	if countdown_timer > 0:
		countdown_timer -= 1
	else:
		game_over = true
		get_node("Main Game Container").queue_free()
		get_node("Lose Screen").visible = true
		restart_game()

func _on_Restart_Timer_timeout():
	get_tree().reload_current_scene()
