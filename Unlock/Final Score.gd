extends RichTextLabel

func _ready():
	text = "YOU'RE HAPPINESS SCORE: " + str(Score.score)
