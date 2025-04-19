extends Button
var mousedir:Vector2

func _input(event):
	if event is InputEventMouseMotion:
		mousedir = event.relative

func _on_mouse_entered() -> void:
	print("nah bro you chill")
	#self.position += (mousedir * 10)
	
func _on_pressed() -> void:
	get_tree().quit()
