extends AnimatedSprite


func _ready():
	rotation_degrees = (randi() % 360) - 360
	play("default")

func _on_HitSpark_animation_finished():
	queue_free()

