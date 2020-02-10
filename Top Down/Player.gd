extends KinematicBody2D

var speed = 100
var motion = Vector2()


func _physics_process(delta):
	motion = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		motion.x += 1
		
	elif Input.is_action_pressed("ui_left"):
		motion.x -= 1
		
	elif Input.is_action_pressed("ui_up"):
		motion.y -= 1
		
	elif Input.is_action_pressed("ui_down"):
		motion.y += 1
	
	motion = motion.normalized() * speed
		
	motion = move_and_slide(motion)
