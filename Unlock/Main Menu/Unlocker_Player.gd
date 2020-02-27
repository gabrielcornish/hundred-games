extends AnimationPlayer

func _ready():
	play("Wobble")

func _on_Unlocker_Player_animation_finished(anim_name):
	play("Wobble")
