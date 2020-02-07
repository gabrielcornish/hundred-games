extends RichTextLabel

var score = 0


func _process(delta):
	if get_node("../../Player").position.y < 0:
		if abs(int(get_node("../../Player").position.y)) >= score:
			score = abs(int(get_node("../../Player").position.y))
	text = str(score)
