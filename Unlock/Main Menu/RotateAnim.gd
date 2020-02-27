extends AnimationPlayer

func _ready():
	play("Rotate")


func _on_RotateAnim_animation_finished(anim_name):
	play("Rotate")

