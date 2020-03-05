extends AnimatedSprite

var heart = preload("res://Main Game/Heart.tscn")
var skull = preload("res://Main Game/Skull.tscn")

var is_hover = false
var transition_ready = false
var sound_over = false
var spawned = false

func _ready():
	randomize()

func _process(delta):
	if Input.is_action_pressed("click") and is_hover:
		get_node("Select").play()
		transition_ready = true
		
		var spawn_type = randi() % 2
		print(spawn_type)
		
		if not spawned and get_parent().name == "Game":
			get_parent().released +=1
			if spawn_type == 1:
				visible = false
				spawn_new_heart()
			else:
				visible = false
				spawn_new_skull()
	
	#if the sound is finished playing, this is ready to be trashed
	if sound_over:
		queue_free()

func _on_Area2D_mouse_entered():
	# scaling effects when hovered
	scale = Vector2(0.35,0.35)
	animation = "open"
	get_node("Hover").play()
	is_hover = true


func _on_Area2D_mouse_exited():
	scale = Vector2(0.25,0.25)
	animation = "default"
	is_hover = false


func _on_RotateAnim_animation_finished(anim_name):
	get_node("RotateAnim").play("Rotate")


func spawn_new_heart():
	var new_heart = heart.instance()
	new_heart.position = position
	get_parent().add_child(new_heart)
	spawned = true
	
func spawn_new_skull():
	var new_skull = skull.instance()
	new_skull.position = position
	get_parent().add_child(new_skull)
	spawned = true


func _on_Select_finished():
	if get_parent().name == "Game":
		sound_over = true
