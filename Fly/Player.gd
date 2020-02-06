extends RigidBody2D
var hit_floor = false
var splat

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	if hit_floor:
		get_owner().create_splat(state.get_contact_collider_position(0))
		print(state.get_contact_collider_position(0))
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(get_colliding_bodies())
	pass

func _input(event):
	if event.is_action_pressed("space"):
		apply_impulse(Vector2(-20,0),Vector2(100,-400))


func _on_Player_body_entered(body):
	
	if  body.is_in_group("floor"):
		hit_floor = true
	pass # Replace with function body.
