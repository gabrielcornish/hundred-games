extends AnimatedSprite


func _ready():
	playing = true


func _on_HitEffect_animation_finished():
	queue_free()

