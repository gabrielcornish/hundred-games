extends Node2D

var particle = preload("res://Main Game/Particle.tscn")

func _ready():
	pass 


func _on_Timer_timeout():
	randomize()
	var particle_instance = particle.instance()
	var new_y = rand_range(0,8)
	
	randomize()
	if randi() % 2 == 1:
		new_y *= -1
	particle_instance.position.y += new_y 

	
	add_child(particle_instance)

func destroy_self():
	owner.launch_enemy()
	queue_free()


