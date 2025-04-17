extends Node

@export var pain : float
@export var instakill : bool
func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		global_time.running = false
