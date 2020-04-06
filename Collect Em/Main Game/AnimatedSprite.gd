extends AnimatedSprite

var dust = preload("res://Main Game/Dust.tscn")
var wait = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if animation == "Walk" and frame >= 4 and not wait:
		wait = true
		get_node("Dust Timer").start(rand_range(0.25,.5))
		for i in randi()%3+1:
			var dust_instance = dust.instance()
			dust_instance.position = get_parent().position
			dust_instance.position.x += randi() % 8+4
			dust_instance.position.y += randi() % 8+4
			owner.add_child(dust_instance)
#	pass


func _on_Dust_Timer_timeout():
	wait = false
	pass # Replace with function body.
