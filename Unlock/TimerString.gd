extends RichTextLabel

var time = 60

func _process(delta):
	text = str(time)


func _on_Timer_timeout():
	time -= 1
	get_node("Timer").start(1)
	pass # Replace with function body.
