extends Label

func _ready():
	self.text = "movement mode: "+global_vals.movementNames[global_vals.movementset]
