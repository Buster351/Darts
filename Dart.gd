extends Node2D

var SB = preload("res://score_board.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position = get_global_mouse_position()
	#var text = $Sprite.texture
#	var col = text.get_data().get_pixel(get_local_mouse_position().x,get_global_mouse_position().y)
#	print (col)
	
func handle_mouse_entered():
	$Sprite.visible = false
	$Sprite2D.visible  = true
	
func handle_mouse_exit():
	$Sprite.visible = true
	$Sprite2D.visible  = false
