extends Camera2D

var follow_y = 0.0
var ready = false

func _ready():
	var follow_y = get_parent().get_node("Player").position.y


func _process(delta):
	if get_parent().get_node("Player").position.y < follow_y and ready:
		follow_y = get_parent().get_node("Player").position.y
		pass
	if not ready:
		follow_y = get_parent().get_node("Player").position.y
	
	position.y = follow_y
#	pass

func _input(event):
	if event.is_action_pressed("ui_up"):
		ready = true
