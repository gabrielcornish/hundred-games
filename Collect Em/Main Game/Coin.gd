extends AnimatedSprite

func _ready():
	frame = randi() % 5

func _on_CoinArea_body_entered(body):
	if body.name == "Player":
		#owner.shake_camera(0.25,rand_range(1.0,2.0))
		play("explode")
		get_node("PickupSound").pitch_scale = rand_range(1.0,1.05)
		get_node("PickupSound").play()

func _on_Coin_animation_finished():
	if animation == "explode":
		queue_free()


