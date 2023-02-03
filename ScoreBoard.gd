extends Node2D
signal Mouse_Entered
signal Mouse_Exit

var mouse = preload("res://Images/chalk.resized.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta):
	pass




func _on_panel_container_mouse_entered():
	Mouse_Entered.emit()
	




func _on_panel_container_mouse_exited():
	Mouse_Exit.emit()
