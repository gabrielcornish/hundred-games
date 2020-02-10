extends Sprite
var ammount = 100



func _on_HeartArea_body_entered(body):
	get_owner().refuel(ammount)
	queue_free()
	pass 
