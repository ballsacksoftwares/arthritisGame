extends CSGCylinder3D

#class name
class_name Jumppad

#value variables
@export_group("value variables")
@export var scene : String

func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		var plr = area.get_parent() 
		var cam = plr.find_child("CameraHolder")
		var audio = plr.find_child("AudioStreamPlayer")
		var bp = plr.find_child("BackPain")
		if cam:
			cam.process_mode = Node.PROCESS_MODE_DISABLED
			cam.reparent(get_node(".."))
		if audio:
			audio.reparent(get_node(".."))
		if bp:
			bp.reparent(get_node(".."))
		
		plr.queue_free()
		Engine.time_scale = 0.0
		await get_tree().create_timer(2,true,false,true).timeout
		Engine.time_scale = 1.0
		get_tree().change_scene_to_file("res://Scenes/"+scene+".tscn")
