extends Label

func _process(delta):
	self.text = global_time.timestring
