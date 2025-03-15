extends CSGBox3D

#class name
class_name Winpad

#value variables
@export_group("Scene")
@export var scene : Resource

func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		get_tree().change_scene_to_packed(scene)
