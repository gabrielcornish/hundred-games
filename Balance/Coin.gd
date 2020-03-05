extends AnimatedSprite
var is_hover = false
var side = "Heads"

func _ready():
	flip_self()
		
func _process(delta):
	if Input.is_action_pressed("click") and is_hover:
		get_tree().call_group(side,"destroy_self")
		
		if side == "Tails":
			get_tree().call_group("Heads","flip_self")
		else:
			get_tree().call_group("Tails","flip_self")


func _on_Area2D_mouse_entered():
	is_hover = true

func _on_Area2D_mouse_exited():
	is_hover = false
	
func destroy_self():
	queue_free()
	
func flip_self():
	randomize()
	if randi() % 2 == 1:
		add_to_group("Tails")
		remove_from_group("Heads")
		side = "Tails"
		animation = "Tails"
	else:
		add_to_group("Heads")
		remove_from_group("Tails")
		side = "Heads"
		animation = "Heads"

