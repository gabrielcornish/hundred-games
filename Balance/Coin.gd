extends AnimatedSprite
var is_hover = false
var side = "Heads"

func _ready():
	flip_self()
		
func _process(delta):
	if not get_parent().level_complete:
		if Input.is_action_pressed("click") and is_hover:
			get_node("Select").play(0.0)
			get_tree().call_group(side,"destroy_self")
			
			if side == "Tails":
				get_tree().call_group("Heads","spin")
			else:
				get_tree().call_group("Tails","spin")


func _on_Area2D_mouse_entered():
	get_node("HoverSound").play(0.0)
	scale = Vector2(1.1,1.1)
	is_hover = true

func _on_Area2D_mouse_exited():
	scale = Vector2(1,1)
	is_hover = false
	
func destroy_self():
	if side == "Tails":
		game_logic.white_score += 1
	else:
		game_logic.black_score += 1

	randomize()
	get_node("Explosion Timer").start(rand_range(0,0.15))
	
	
func spin():
	add_to_group("Spinning")
	animation = "CoinFlipping"
	get_node("Flip Timer").start(2)
	
func flip_self():
	randomize()
	if randi() % 2 == 1:
		add_to_group("Tails")
		remove_from_group("Heads")
		remove_from_group("Spinning")
		side = "Tails"
		animation = "Tails"
	else:
		add_to_group("Heads")
		remove_from_group("Tails")
		remove_from_group("Spinning")
		side = "Heads"
		animation = "Heads"

func _on_Flip_Timer_timeout():
	flip_self()


func _on_Coin_animation_finished():
	if animation == "Explosion":
		queue_free()

func _on_Explosion_Timer_timeout():
	get_node("ExplosionSound").play(0.0)
	animation = "Explosion"
