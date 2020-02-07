extends Node2D


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
	if event.is_action_pressed("ui_up"):
		get_tree().change_scene("res://World.tscn")
		
	if event.is_action_pressed("ui_left"):
		get_tree().change_scene("res://World.tscn")
		
	if event.is_action_pressed("ui_right"):
		get_tree().change_scene("res://World.tscn")
	
	if event.is_action_pressed("reload"):
		get_tree().change_scene("res://World.tscn")
