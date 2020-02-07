extends TileMap

var offset_y = 0
var follow = false
var follow_y = 0.0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	offset_y = position.y - get_parent().get_node("Player").position.y
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().get_node("Player").position.y < (position.y):
		follow = true
		
	if follow_y > get_parent().get_node("Player").position.y:
		follow_y = get_parent().get_node("Player").position.y
	
	if follow:
		position.y = follow_y
#	pass
