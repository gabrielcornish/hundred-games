extends AnimatedSprite

func _ready():
	play()


func _on_Text_Anim_animation_finished(anim_name):
	play("reverse")
	pass # Replace with function body.


func _on_Container_animation_finished():
	if animation == "reverse":
		get_parent().destroy_self()
