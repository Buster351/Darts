extends Sprite2D

@export var speed = 2000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func Animate(run,width,delta):
	if run:
		position.x = position.x + speed * delta
	
	if position.x >= width:
		speed = -speed
	if position.x <= 0:
		speed = -speed
	pass
