extends Camera2D

const shake_amount = 2.0
var shake = false

func _process(delta):
		
	if shake:
		offset = Vector2(rand_range(-1.0, 1.0) * shake_amount, rand_range(-1.0, 1.0) * shake_amount)


func _on_Shake_Timer_timeout():
	if shake:
		shake = false
		
func shake(t):
	if not shake:
		shake = true
		get_node("Shake Timer").start(t)
	pass
