extends AnimatedSprite

func _ready():
	print("Spawned")
	play()


func _on_Dust_animation_finished():
	queue_free()

