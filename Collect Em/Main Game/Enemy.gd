extends RigidBody2D

var MAX_SPEED = 0
var local_contact_pos = Vector2()

func _process(delta):
	if linear_velocity.x < 0:
		get_node("EnemySprite").flip_h = true
	else:
		get_node("EnemySprite").flip_h = false

func _integrate_forces(state):
	var steady_velocity = linear_velocity.normalized()
	linear_velocity = steady_velocity * MAX_SPEED
	
	if state.get_contact_count() >= 1:
		local_contact_pos = state.get_contact_local_position(0)
		
func launch():
	linear_velocity = Vector2(1,-1)
	MAX_SPEED = 200


func _on_Enemy_body_entered(body):
	if body.name == "Player":
		owner.shake_camera(1,4)
		get_node("BounceSFX").play()
		body.destroy_self()
	else:
		owner.shake_camera(0.1,0.5)
		owner.create_hit_effect(local_contact_pos)
		get_node("BounceSFX").play()

