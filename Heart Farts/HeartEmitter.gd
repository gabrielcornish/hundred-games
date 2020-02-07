extends Node2D
var dust = preload("res://Dust.tscn")
export (NodePath) var playerInstance
var tick = 0
var rand_spawn = 0
var last_player_y = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rand_spawn = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
			tick += 1
	
	if tick >= rand_spawn:
		rand_spawn += (get_node(playerInstance).speed + 6)/4
		tick = 0
		for i in range(1):
			var dust_instance = dust.instance()
			dust_instance.position = get_node(playerInstance).position + Vector2(randi()%3, randi() % 10 + 5)
			add_child(dust_instance)
#	pass
