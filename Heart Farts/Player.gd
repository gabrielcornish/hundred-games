extends RigidBody2D

const SPEED = -12

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		apply_impulse(Vector2(),transform.y * SPEED)
		pass
		
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(10)
		#rotation_degrees += 1 
		
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-10)

