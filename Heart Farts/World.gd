extends Node2D
var fuel = preload("Fuel.tscn")
var timer_delay = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var last_player_y = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if abs(int(get_node("Player").position.y)) > last_player_y:
			last_player_y = abs(int(get_node("Player").position.y))
#	pass
func _input(event):
	if event.is_action_pressed("reload"):
		get_tree().reload_current_scene()


func _on_Timer_timeout():
	if abs(int(get_node("Player").position.y)) >= last_player_y:
		for i in range(randi() % 4):
			var fuel_instance = fuel.instance()
			fuel_instance.position.x = randi() % 130 + 32
			fuel_instance.position.y = get_node("Player").position.y - (randi() % 100 + 530)
			add_child(fuel_instance)
	timer_delay += 0.2
	get_node("Timer").start(timer_delay)
	pass # Replace with function body.
