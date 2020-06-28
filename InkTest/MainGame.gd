extends Node2D

var InkRuntime = load("res://addons/inkgd/runtime.gd")

func _ready():
	call_deferred("_add_runtime")

func _exit_tree():
	call_deferred("_remove_runtime")
	
func _add_runtime():
	InkRuntime.init(get_tree().root)
	pass

func _remove_runtime():
	InkRuntime.deinit(get_tree().root)
	pass
