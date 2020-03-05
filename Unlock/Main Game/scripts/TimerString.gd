extends RichTextLabel

var time = Score.time

func _process(delta):
	text = str(time)


func _on_Timer_timeout():
	if time > 0:
		time -= 1
		get_node("Timer").start(1)
