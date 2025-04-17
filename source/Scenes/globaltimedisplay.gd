extends Label

func _process(delta):
	self.text = global_time.timestring
	if global_time.running:
		self.label_settings.font_color = Color.WHITE
	else:
		self.label_settings.font_color = Color.GREEN
