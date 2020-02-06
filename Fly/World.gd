extends Node2D

var splat = preload("res://Splat.tscn")
var cloud = preload("res://Clouds.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()
		
func create_splat(pos):
	var splat_instance = splat.instance()
	splat_instance.position = pos
	self.add_child(splat_instance)


func _on_CloudTimer_timeout():
	var cloud_instance = cloud.instance()
	cloud_instance.position = Vector2(500,randi() % 500 + 10)
	get_node("CloudContainer").add_child(cloud_instance)
	pass # Replace with function body.
