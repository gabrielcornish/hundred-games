extends Camera2D

var shake_amount = 1.0
var shaking = false

func _process(delta):
	if shaking:
		set_offset(Vector2( rand_range(-1.0, 1.0) * shake_amount,rand_range(-1.0, 1.0) * shake_amount))
		
func shake(ammount,strength):
	if not shaking:
		shaking = true
		shake_amount = strength
		get_node("Shake Amount Timer").start(ammount)

func _on_Shake_Amount_Timer_timeout():
	shaking = false
