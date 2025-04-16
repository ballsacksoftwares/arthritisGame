extends Node

@export var pain : float
@export var instakill : bool
func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		if instakill:
			area.get_parent().backpain = area.get_parent().maxBackPain
		else:
			area.get_parent().giveBackPain(pain,1)
		
