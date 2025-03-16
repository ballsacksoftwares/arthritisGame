extends CSGCylinder3D

#class name
class_name Jumppad

#value variables
@export_group("value variables")
@export var scene : String

func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		get_tree().change_scene_to_file("res://Scenes/"+scene+".tscn")
