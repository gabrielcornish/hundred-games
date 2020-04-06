extends AnimatedSprite

func _ready():
	playing = true


func _on_Star_Trail_animation_finished():
	queue_free()
