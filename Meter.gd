extends Node2D
@export var animate = false
var playing = false
var shot_progress = 0

func _process(delta):
	var wid = get_node("Panel").get_size()
	
	$PointerSPR.Animate(animate,wid.x,delta)
	pass
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if $Panel.get_rect().has_point(to_local(event.position)):
			#animate = false
			shot_progress +=1
			print ("Input " + str(shot_progress))

func spawn_pointer():
	pass
	
