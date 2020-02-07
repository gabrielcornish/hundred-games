extends Sprite

var begin_destroy = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	rotation_degrees = randi() % 360
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale.x += 5 * delta
	scale.y += 5 * delta
	
	if begin_destroy:
		modulate.a -= 0.01
		
	if modulate.a <= 0:
		queue_free()
#	pass


func _on_Timer_timeout():
	begin_destroy = true
	pass # Replace with function body.
