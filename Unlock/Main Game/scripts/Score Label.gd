extends Node2D
var speed = 200


func _process(delta):
	position.y -= speed * delta

func negative_points():
	get_node("Score").text = "-1 POINTS"
	get_node("Score").good_point = false
	pass
