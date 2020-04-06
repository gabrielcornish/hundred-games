extends KinematicBody2D

var MAX_SPEED = 100
var ACCEL = 2000
var motion = Vector2()
var star_trail = preload("res://Main Game/Star Trail.tscn")
var star_trail_spawn = 10
var star_t = 0
var player_defeated = false

func _physics_process(delta):
	if owner.name == "Game":
		movement(delta)
	
func movement(delta):
	var axis = Vector2()
	axis.x = int(Input.get_action_strength("ui_right")) - int(Input.get_action_strength("ui_left"))
	axis.y = int(Input.get_action_strength("ui_down")) - int(Input.get_action_strength("ui_up"))
	sprite_direction()
	axis = axis.normalized()
	
	if motion.length() > 0 and not player_defeated:
		get_node("PlayerSprite").animation = "Walk"
		check_star_trail()
		get_node("Walking").pitch_scale = (randi() % 20) + 10
		get_node("Walking").play()
	elif not player_defeated:
		get_node("PlayerSprite").animation = "Idle"
		get_node("Walking").stop()
	
	if axis == Vector2():
		if motion.length() > (ACCEL * delta):
			motion -= motion.normalized() * ACCEL * delta
		else:
			motion = Vector2()
	else:
		motion += ACCEL * delta * axis
		motion = motion.clamped(MAX_SPEED)
		
	motion = move_and_slide(motion)
	
func check_star_trail():
	star_t += 1
	if star_t >= star_trail_spawn:
		#spawn Star Trail
		var star_trail_instance = star_trail.instance()
		star_trail_instance.position = position
		if owner.name == "Game":
			owner.get_node("Main Game Container/Star Trail Holder").add_child(star_trail_instance)
		
		#Reset Timer
		star_trail_spawn = (randi() % 15)
		star_t = 0
		
func sprite_direction():
	if Input.is_action_pressed("ui_left"):
		get_node("PlayerSprite").flip_h = true
	elif Input.is_action_pressed("ui_right"):
		get_node("PlayerSprite").flip_h = false
	pass
	
func destroy_self():
	player_defeated = true
	get_node("PlayerSprite").animation = "Explode"
	
func _on_AnimatedSprite_animation_finished():
	if get_node("PlayerSprite").animation == "Explode":
		get_parent().get_parent().restart_game()
		queue_free()
