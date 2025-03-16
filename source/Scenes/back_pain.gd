extends TextureProgressBar

@onready var pos = self.position

func shake(intensity,length):
	var started = Time.get_unix_time_from_system()
	while Time.get_unix_time_from_system() - started < length:
		self.position = pos + (Vector2(randf_range(-.2,.2),randf_range(-.2,.2))*intensity)
		await get_tree().create_timer(.001).timeout
	
	self.position = pos
