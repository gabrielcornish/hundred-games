extends RigidBody2D

var local_contact_pos = Vector2()

func _ready():
	randomize()
	linear_velocity.x = ((randi() % 1) - 1) * (200 * Score.speed_multiplyer)
	linear_velocity.y = ((randi() % 1) - 1) * (200 * Score.speed_multiplyer)


func _integrate_forces(state):
	var stable_velocity = linear_velocity.normalized() * (200 * Score.speed_multiplyer)
	linear_velocity = stable_velocity
	
	if state.get_contact_count() >= 1:
		local_contact_pos = state.get_contact_local_position(0)

func _on_Skull_body_entered(body):
	if body.is_in_group("hearts_group"):
		Score.score -= 1
		if get_parent().name == "Game":
			get_parent().create_hit_spark(local_contact_pos,false)
