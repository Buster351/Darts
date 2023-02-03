extends Node2D

@export var x_offset = 345
@export var y_offset = 261

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#$ScoreBoard.connect("Mouse_Entered",$Dart.hand)
	#$Dart.connect("Mouse_Entered",$Dart.handle_mouse_entered)
	#$ScoreBoard.connect("Mouse_Entered",$Dart.handle_mouse_entered)
	#$ScoreBoard.connect("Mouse_Exit",$Dart.handle_mouse_exit)
	
	$ScoreBoard/Player.connect("Mouse_Entered",$Dart.handle_mouse_entered)
	$ScoreBoard/Player.connect("Mouse_Exit",$Dart.handle_mouse_exit)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Label.text = "X: " + str(get_global_mouse_position().x) + "  Y: " + str(get_global_mouse_position().y)
	Calculate_Score(get_global_mouse_position())
	$Label4.text = str(Engine.get_frames_per_second())
func Calculate_Score(pos):
	var c_pos = Vector2(pos.x-x_offset,pos.y-y_offset)
	var distance = sqrt((c_pos.x*c_pos.x)+(c_pos.y*c_pos.y))
	var angle = atan2(c_pos.y,c_pos.x)
	$Label2.text = str(distance)
	$Label3.text = str(round(rad_to_deg(angle)))
	
