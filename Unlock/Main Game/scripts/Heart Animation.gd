extends AnimatedSprite


func _ready():
	play("Spawn")

func _on_Heart_Animation_animation_finished():
	animation = "default"
