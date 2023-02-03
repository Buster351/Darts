extends Node2D

signal Mouse_Entered
signal Mouse_Exit





func _on_text_edit_mouse_exited():
	Mouse_Exit.emit()


func _on_line_edit_mouse_entered():
	Mouse_Entered.emit()


func _on_line_edit_text_submitted(new_text):
	$Label.text = $LineEdit.text
	$Label.visible = true
	$LineEdit.visible = false
	Global.Players.append($Label.text)
	
	
	pass # Replace with function body.
