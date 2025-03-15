extends Button



func _on_mouse_entered() -> void:
	self.position += Vector2(20,-20)
	



func _on_pressed() -> void:
	get_tree().quit()
