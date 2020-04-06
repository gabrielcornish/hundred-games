extends Sprite

var speed = 0


func _ready():
	speed = (randi() % 600) + 400

func _process(delta):
	position.x -= speed * delta

