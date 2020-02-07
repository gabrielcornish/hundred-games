extends RigidBody2D
export (NodePath) var heart_emmiter
var speed = -6

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		get_node("Sprite").frame = 1
		get_node("Sprite").modulate.r += 0.075 * delta
		get_node("Sprite").modulate.b += 0.01 * delta
		if speed < 0:
			speed += 0.25 * delta
		apply_impulse(Vector2(),transform.y * speed)
		pass
	else:
		get_node("Sprite").frame = 0
		
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(20)
		#rotation_degrees += 1 
		
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-20)

func refuel():
	get_node("Sprite").modulate.r = 0.19
	get_node("Sprite").modulate.g = 0.78
	get_node("Sprite").modulate.b = 0.19
	get_node(heart_emmiter).rand_spawn = 1
	
	speed = -6

